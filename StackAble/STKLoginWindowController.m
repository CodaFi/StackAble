//
//  STKLoginWindowController.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKLoginWindowController.h"
#import "STKLoginWindow.h"

@interface STKLoginWindowController ()

@end

@implementation STKLoginWindowController

+ (instancetype)loginWindowController {
	static STKLoginWindowController *windowController;
	@synchronized(self)
	{
		if (!windowController) {
			NSUInteger windowmask = (NSTitledWindowMask | NSBorderlessWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask);
			STKLoginWindow *mainWindow = [[STKLoginWindow alloc]initWithContentRect:(NSRect){ .size = { 310, 280 } } styleMask:windowmask backing:NSBackingStoreBuffered defer:NO];
			windowController = [[STKLoginWindowController alloc]initWithWindow:mainWindow];
		}
	}
	return windowController;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
		[window center];
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
