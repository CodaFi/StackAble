//
//  STKDetailPaneViewController.h
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class STKDetailPaneViewModel;

@interface STKDetailPaneViewController : NSViewController {
	NSRect _frame;
}

- (id)initWithContentRect:(CGRect)frame;
@property (strong, readonly) STKDetailPaneViewModel *viewModel;

@end
