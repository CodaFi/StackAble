//
//  STKLoginWindow.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKLoginWindow.h"
#import "STKLoginView.h"

@implementation STKLoginWindow

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag {
	self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
	
	self.contentView = [[STKLoginView alloc]initWithFrame:contentRect];
	[self.contentView setWantsLayer:YES];

	self.titleBarHeight = 44;
	self.showsBaselineSeparator = NO;
	self.titleBarStartColor = [NSColor colorWithCalibratedWhite:0.946 alpha:1.000];
	self.titleBarEndColor = [NSColor colorWithCalibratedWhite:0.946 alpha:1.000];
	self.fullScreenButtonRightMargin = 12.0f;
	self.centerFullScreenButton = YES;
	self.inactiveTitleBarStartColor = [NSColor colorWithCalibratedWhite:0.946 alpha:1.000];
	self.inactiveTitleBarEndColor = [NSColor colorWithCalibratedWhite:0.946 alpha:1.000];
	self.centerTrafficLightButtons = YES;
	
	
	return self;
}


@end
