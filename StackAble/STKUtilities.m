//
//  STKUtilities.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKUtilities.h"

CGContextRef STKGraphicsGetCurrentContext(void)
{
	return (CGContextRef)[[NSGraphicsContext currentContext] graphicsPort];
}

