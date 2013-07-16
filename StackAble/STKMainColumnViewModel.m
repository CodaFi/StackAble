//
//  STKMainColumnViewModel.m
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKMainColumnViewModel.h"
#import "Tag.h"
#import <ExchangeKit/ExchangeKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation STKMainColumnViewModel

- (id)init {
    self = [super init];

	
	@weakify(self);
	[[RACAbleWithStart(EXKClient.sharedClient, apiKey) filter:^BOOL(id value) {
		return value != nil;
	}] subscribeNext:^(id x) {
		@strongify(self);
		[EXKClient.sharedClient fetchAllQuestionsWithSortingCriteria:EXKCreationDateSortingCriteria completion:^(NSArray *questions, NSError *error) {
			self.questions = questions;
		}];
		
	}];
	
    return self;
}

- (void)selectQuestionAtIndex:(NSUInteger)index {
	self.selectedQuestion = self.questions[index];
}

- (void)setSelectedTagName:(NSString *)selectedTagName {
	_selectedTagName = selectedTagName;
	@weakify(self);
	[EXKClient.sharedClient fetchAllQuestionsWithTagName:selectedTagName withSortingCriteria:EXKCreationDateSortingCriteria completion:^(NSArray *questions, NSError *error) {
		@strongify(self);
		self.questions = questions;
	}];
}

#pragma mark NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
	return self.questions.count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
	return self.questions[row];
}

@end
