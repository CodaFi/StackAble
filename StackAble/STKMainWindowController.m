//
//  STKMainWindowController.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKMainWindowController.h"
#import "STKMainWindow.h"

@interface STKMainWindowController ()

@end

@implementation STKMainWindowController

+ (instancetype)mainWindowController {
	static STKMainWindowController *mainWindowController;
	@synchronized(self)
	{
		if (!mainWindowController) {
			NSUInteger windowmask = (NSTitledWindowMask | NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask);
			STKMainWindow *mainWindow = [[STKMainWindow alloc]initWithContentRect:(NSRect){ .size = { 990, 830 } } styleMask:windowmask backing:NSBackingStoreBuffered defer:NO];
			mainWindowController = [[STKMainWindowController alloc]initWithWindow:mainWindow];
		}
	}
	return mainWindowController;
}

- (id)initWithWindow:(NSWindow *)window {
	self = [super initWithWindow:window];
	
	[window center];
	
	return self;
}


@end
