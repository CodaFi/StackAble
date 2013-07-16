//
//  STKProfileColumnViewController.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKProfileColumnViewController.h"
#import "STKView.h"
#import "STKProfileColumnView.h"
#import "STKProfileViewModel.h"
#import "STKProfileSectionHeader.h"
#import "STKProfileButton.h"
#import "Tag.h"
#import <ExchangeKit/ExchangeKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface STKProfileColumnViewController ()
@property (nonatomic, weak) NSArray *tags;
@end

@implementation STKProfileColumnViewController

- (id)initWithContentRect:(CGRect)frame {
	self = [super init];
	_frame = frame;
	return self;
}

- (void)loadView {
	
	_viewModel = [STKProfileViewModel new];
	
	NSImageView *profileAvatar = [[NSImageView alloc]initWithFrame:CGRectMake(15, 30, 50, 50)];
	RAC(profileAvatar, image) = RACAbleWithStart(self.viewModel.avatar);

	NSTextField *label = [[NSTextField alloc]initWithFrame:CGRectMake(80.f, 30, 140., 20.f)];
	[label.cell setPlaceholderString:@"Loading..."];
	[label setAlignment:NSLeftTextAlignment];
	[label setTextColor:[NSColor whiteColor]];
	[label setBordered:NO];
	[label setFont:[NSFont fontWithName:@"HelveticaNeue-Bold" size:13.f]];
	[label setBezeled:NO];
	[label setDrawsBackground:NO];
	[label setFocusRingType:NSFocusRingTypeNone];
	[label.cell setLineBreakMode:NSLineBreakByCharWrapping];
	[label.cell setTruncatesLastVisibleLine:YES];
	[label setEditable:NO];
	
	NSTextField *lastLogin = [[NSTextField alloc]initWithFrame:CGRectMake(80.f, 50.f, 140., 20.f)];
	[lastLogin.cell setPlaceholderString:@"Last seen: ..."];
	[lastLogin setAlignment:NSLeftTextAlignment];
	[lastLogin setTextColor:[NSColor whiteColor]];
	[lastLogin setBordered:NO];
	[lastLogin setFont:[NSFont fontWithName:@"HelveticaNeue-Italic" size:10.f]];
	[lastLogin setBezeled:NO];
	[lastLogin setDrawsBackground:NO];
	[lastLogin setFocusRingType:NSFocusRingTypeNone];
	[lastLogin.cell setLineBreakMode:NSLineBreakByCharWrapping];
	[lastLogin.cell setTruncatesLastVisibleLine:YES];
	[lastLogin setEditable:NO];
	RAC(lastLogin, stringValue) = RACAbleWithStart(self.viewModel.lastLoginString);

	NSTextField *reputation = [[NSTextField alloc]initWithFrame:CGRectMake(80.f, 62.f, 140., 20.f)];
	[reputation.cell setPlaceholderString:@"Reputation: ..."];
	[reputation setAlignment:NSLeftTextAlignment];
	[reputation setTextColor:[NSColor whiteColor]];
	[reputation setBordered:NO];
	[reputation setFont:[NSFont fontWithName:@"HelveticaNeue-Italic" size:10.f]];
	[reputation setBezeled:NO];
	[reputation setDrawsBackground:NO];
	[reputation setFocusRingType:NSFocusRingTypeNone];
	[reputation.cell setLineBreakMode:NSLineBreakByCharWrapping];
	[reputation.cell setTruncatesLastVisibleLine:YES];
	[reputation setEditable:NO];
	RAC(reputation, stringValue) = RACAbleWithStart(self.viewModel.reputationString);

	STKProfileSectionHeader *navigationSectionHeader = [[STKProfileSectionHeader alloc]initWithFrame:CGRectMake(0, 80, CGRectGetWidth(_frame), 22)];
	navigationSectionHeader.title = @"NAVIGATION";
	STKProfileButton *topQuestionsButton = [[STKProfileButton alloc]initWithFrame:CGRectMake(0, 102, CGRectGetMidX(_frame), 50)];
	topQuestionsButton.title = @"Top Questions";
	topQuestionsButton.autoresizingMask |= NSViewMaxXMargin;
	STKProfileButton *allQuestionsButton = [[STKProfileButton alloc]initWithFrame:CGRectMake(CGRectGetMidX(_frame), 102, CGRectGetMidX(_frame), 50)];
	allQuestionsButton.title = @"All Questions";
	allQuestionsButton.autoresizingMask |= NSViewMinXMargin;
	STKProfileButton *tagsQuestionsButton = [[STKProfileButton alloc]initWithFrame:CGRectMake(0, 152, CGRectGetMidX(_frame), 50)];
	tagsQuestionsButton.title = @"Tags";
	STKProfileButton *usersQuestionsButton = [[STKProfileButton alloc]initWithFrame:CGRectMake(CGRectGetMidX(_frame), 152, CGRectGetMidX(_frame), 50)];
	usersQuestionsButton.title = @"Users";
	STKProfileButton *badgesQuestionsButton = [[STKProfileButton alloc]initWithFrame:CGRectMake(0, 202, CGRectGetMidX(_frame), 50)];
	badgesQuestionsButton.title = @"Badges";
	STKProfileButton *unansweredQuestionsButton = [[STKProfileButton alloc]initWithFrame:CGRectMake(CGRectGetMidX(_frame), 202, CGRectGetMidX(_frame), 50)];
	unansweredQuestionsButton.title = @"Unanswered";
	
	STKProfileSectionHeader *tagsSectionHeader = [[STKProfileSectionHeader alloc]initWithFrame:CGRectMake(0, 252, CGRectGetWidth(_frame), 22)];
	tagsSectionHeader.title = @"TAGS";
	
	STKProfileColumnView *scrollView = [[STKProfileColumnView alloc]initWithFrame:_frame];
	STKView *view = [[STKView alloc]initWithFrame:_frame];
	view.autoresizingMask = NSViewWidthSizable;
	
	[view addSubview:lastLogin];
	[view addSubview:label];
	[view addSubview:profileAvatar];
	[view addSubview:reputation];
	
	[view addSubview:navigationSectionHeader];
	[view addSubview:topQuestionsButton];
	[view addSubview:allQuestionsButton];
	[view addSubview:tagsQuestionsButton];
	[view addSubview:usersQuestionsButton];
	[view addSubview:badgesQuestionsButton];
	[view addSubview:unansweredQuestionsButton];
	
	[view addSubview:tagsSectionHeader];
	scrollView.documentView = view;
    self.view = scrollView;
	
	RAC(label, stringValue) = RACAbleWithStart(self.viewModel.username);
	RAC(self.tags) = RACAbleWithStart(self.viewModel.tags);
}

- (void)setTags:(NSArray *)tags {
	CGFloat offset = 274;
	NSUInteger idx = 0;
	for (Tag *tag in tags) {
		STKProfileButton *newTag = [[STKProfileButton alloc]initWithFrame:CGRectMake(0, offset, CGRectGetWidth(_frame), 36)];
		newTag.autoresizingMask = NSViewWidthSizable;
		newTag.title = [tag valueForKey:@"name"];
		newTag.index = idx;
		newTag.rac_command = [RACCommand command];
		[newTag.rac_command subscribeNext:^(STKProfileButton *button) {
			[self.viewModel selectTagName:button.title];
		}];
		[((NSScrollView*)self.view).documentView addSubview:newTag];
		offset += 36.f;
		idx++;
	}
	[((NSScrollView*)self.view).documentView setFrame:CGRectMake(0, 0, CGRectGetWidth(_frame), offset)];
	[self.view setNeedsDisplay:YES];
}

@end
