//
//  STKDetailPaneViewModel.m
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKDetailPaneViewModel.h"
#import <ExchangeKit/ExchangeKit.h>

@implementation STKDetailPaneViewModel

- (void)setQuestion:(EXKQuestion *)question {
	NSMutableAttributedString *body = [[NSAttributedString alloc]initWithHTML:[question.body dataUsingEncoding:NSUTF8StringEncoding] baseURL:Nil documentAttributes:NULL].mutableCopy;
	self.questionBody = body;
}

@end
