//
//  STKProfileColumnView.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKProfileColumnView.h"

@implementation STKProfileColumnView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
		self.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
		self.backgroundColor = [NSColor colorWithCalibratedRed:0.176 green:0.193 blue:0.253 alpha:1.000];
		self.hasVerticalScroller = YES;
    }
    
    return self;
}

- (NSScrollElasticity)verticalScrollElasticity {
	return NSScrollElasticityAllowed;
}

@end
