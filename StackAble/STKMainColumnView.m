//
//  STKMainColumnView.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKMainColumnView.h"

@implementation STKMainColumnView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];

	NSShadow *dropShadow = [[NSShadow alloc] init];
	[dropShadow setShadowColor:[NSColor redColor]];
	[dropShadow setShadowOffset:NSMakeSize(10, 0.0)];
	[dropShadow setShadowBlurRadius:10.0];
	
	[self setWantsLayer: YES];
	[self setShadow:dropShadow];
    
    return self;
}



@end
