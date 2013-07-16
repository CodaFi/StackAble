//
//  STKView.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKView.h"

@implementation STKView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

- (BOOL)isFlipped {
	return YES;
}

@end
