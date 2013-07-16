//
//  STKMainColumnViewController.h
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class STKMainColumnViewModel;

@interface STKMainColumnViewController : NSViewController <NSTableViewDelegate> {
	NSRect _frame;
}

- (id)initWithContentRect:(CGRect)frame;
@property (strong, readonly) STKMainColumnViewModel *viewModel;

@end
