//
//  STKDetailPaneViewController.m
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKDetailPaneViewController.h"
#import "STKDetailPaneViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface STKDetailPaneViewController ()

@end

@implementation STKDetailPaneViewController

- (id)initWithContentRect:(CGRect)frame {
	self = [super init];
	_frame = frame;
	return self;
}

- (void)loadView {
	
	_viewModel = [STKDetailPaneViewModel new];
	
	NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame:_frame];
	scrollView.hasVerticalScroller = YES;
	NSTextView *textView = [[NSTextView alloc]initWithFrame:CGRectOffset(CGRectInset(scrollView.bounds, 0, 100), 0, 200)];
	textView.autoresizingMask = NSViewWidthSizable;
	[RACAble(self.viewModel,questionBody) subscribeNext:^(NSAttributedString *str) {
		[textView setString:@""];
		if (str.length)
			[textView insertText:str];
	}];
	scrollView.documentView = textView;
	
	self.view = scrollView;
}


@end
