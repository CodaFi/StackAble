//
//  STKProfileColumnViewController.h
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class STKProfileViewModel;

@interface STKProfileColumnViewController : NSViewController {
	CGRect _frame;
}

- (id)initWithContentRect:(CGRect)frame;
@property (strong, readonly) STKProfileViewModel *viewModel;

@end
