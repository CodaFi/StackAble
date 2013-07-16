//
//  STKProfileViewModel.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKProfileViewModel.h"
#import "ExchangeKit+StackAble.h"
#import "STKAppDelegate.h"
#import <ExchangeKit/ExchangeKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface STKProfileViewModel ()

@end

@implementation STKProfileViewModel

- (id)init {
    self = [super init];
	
	self.username = @"Loading...";
	self.tags = @[ ];
	self.lastLoginString = @"Last seen: ...";
	self.reputationString = @"Reputation: ...";
	@weakify(self);
	[[RACAbleWithStart(EXKClient.sharedClient, apiKey) filter:^BOOL(id value) {
		return value != nil;
	}] subscribeNext:^(id x) {
		@strongify(self);
		NSManagedObjectContext *backgroundContext = [[NSApp delegate]backgroundContext];
		[backgroundContext performBlock:^{
			__block NSError *error = nil;
			NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"User"];
			[fetchRequest setReturnsObjectsAsFaults:NO];
			[fetchRequest setPropertiesToFetch:@[ @"lastAccessDate", @"reputation", @"displayName" ]];
			[fetchRequest setRelationshipKeyPathsForPrefetching:@[ @"tags" ]];
			NSArray *users = [backgroundContext executeFetchRequest:fetchRequest error:&error];
			if (error != nil){
				NSLog(@"Error fetching logged in user: %@", error);
			}
			if (users.count == 0) {
				[EXKClient.sharedClient fetchCurrentUserWithCompletion:^(EXKUser *responseObject, NSError *error) {
					User *userManagedObject = (User *)[MTLManagedObjectAdapter managedObjectFromModel:responseObject insertingIntoContext:backgroundContext error:&error];
					NSLog(@"Error inserting new user into context: %@", error);
					self.username = responseObject.displayName;
					self.lastLoginString = [NSString stringWithFormat:@"Last seen: %@", [self.class.dateFormatter stringFromDate:responseObject.lastAccessDate]];
					self.reputationString = [NSString stringWithFormat:@"Reputation: %llu", responseObject.reputation.unsignedLongLongValue];
					
					
					[EXKClient.sharedClient fetchCurrentUserTagsWithCompletion:^(id responseObject, NSError *error) {
						for (EXKTag *exkTag in responseObject) {
							Tag *tag = (Tag *)[MTLManagedObjectAdapter managedObjectFromModel:exkTag insertingIntoContext:backgroundContext error:&error];
							[userManagedObject addTagsObject:tag];
						}
						self.tags = [userManagedObject valueForKey:@"tags"];
						[backgroundContext save:&error];
					}];
				}];
			} else {
				User *user = users[0];
				self.username = [user valueForKey:@"displayName"];
				self.lastLoginString = [NSString stringWithFormat:@"Last seen: %@", [self.class.dateFormatter stringFromDate:[user valueForKey:@"lastAccessDate"]]];
				self.reputationString = [NSString stringWithFormat:@"Reputation: %llu", [[user valueForKey:@"reputation"]unsignedLongLongValue]];
				self.tags = [[user valueForKey:@"tags"] allObjects];
				[self getImageFromURL:[NSURL URLWithString:[user valueForKey:@"profileImageURLString"]] block:^(NSImage *responseImage) {
					self.avatar = responseImage;
				}];
			}
		}];
	}];
	
    return self;
}

- (void)selectTagName:(NSString *)name {
	self.selectedTagName = name;
}

- (void)getImageFromURL:(NSURL *)imageFilename block:(void (^)(NSImage *responseImage))aImage {
	
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:imageFilename];
    [request setHTTPMethod:@"GET"];
	
    AFImageRequestOperation *requestOperation = [AFImageRequestOperation imageRequestOperationWithRequest:request
															imageProcessingBlock:^NSImage *(NSImage *image) {
																return image;
															} success:^(NSURLRequest *request, NSHTTPURLResponse *response, NSImage *image) {
																aImage(image);
															} failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error) {
																
															}];
    [[[NSOperationQueue alloc]init] addOperation:requestOperation];
}

+ (NSDateFormatter *)dateFormatter {
    static NSDateFormatter *dateFormatter = nil;
	if (dateFormatter == nil) {
		dateFormatter = [[NSDateFormatter alloc] init];
		dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
		dateFormatter.dateFormat = @"dd/MM, HH a";
	}
    return dateFormatter;
}

@end
