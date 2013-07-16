//
//  EXKUser+STKCoreData.m
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "EXKUser+STKCoreData.h"

@implementation EXKUser (STKCoreData)

+ (NSString *)managedObjectEntityName {
	return @"User";
}

+ (NSDictionary *)managedObjectKeysByPropertyKey {
	return @{
		@"site" : NSNull.null,
		@"userID" : @"userID",
		@"accountID" : @"accountID",
		@"userType" : @"userType",
		@"creationDate" : @"creationDate",
		@"displayName" : @"displayName",
		@"profileImageURL" : @"profileImageURLString",
		@"reputation" : @"reputation",
		@"age" : @"age",
		@"lastAccessDate" : @"lastAccessDate",
		@"profileURLString" : @"profileURLString",
		@"websiteURLString" : @"websiteURLString",
		@"location" : @"location",
		@"reputationChangeDay" : NSNull.null,
		@"reputationChangeWeek" : NSNull.null,
		@"reputationChangeMonth" : NSNull.null,
		@"reputationChangeQuarter" : NSNull.null,
		@"reputationChangeYear" : NSNull.null,
		@"badgeCounts" : NSNull.null,
		@"lastModifiedDate" : NSNull.null,
		@"isEmployee" : NSNull.null,
		@"acceptRate" : NSNull.null,
	};
}

+ (NSValueTransformer *)creationDateEntityAttributeTransformer{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSNumber *unixEpochTime) {
        return [NSDate dateWithTimeIntervalSince1970:unixEpochTime.longLongValue];
    } reverseBlock:^(NSDate *date) {
        return @([date timeIntervalSince1970]);
    }];
}

+ (NSValueTransformer *)profileImageURLEntityAttributeTransformer{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSURL *url) {
        return url.absoluteString;
    } reverseBlock:^(NSString *string) {
        return [NSURL URLWithString:string];
    }];
}

@end
