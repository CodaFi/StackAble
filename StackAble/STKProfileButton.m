//
//  STKProfileButton.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKProfileButton.h"

static const CGFloat colors[] = {
	0.226, 0.244, 0.303, 1.000,
	0.176, 0.197, 0.257, 1.000,
	0.151, 0.171, 0.229, 1.000,
	0.112, 0.128, 0.166, 1.000
};
static const CGFloat locations[] = {
	0.0, 1.0 / 60.f, 59.0 / 60.f, 1.0f
};

static const CGFloat inverseLocations[] = {
	1.0, 59.0 / 60.f, 1.0 / 60.f, 0.0f
};

@interface STKProfileButton ()

@property (strong) NSTextField *titleTextField;

@end

@implementation STKProfileButton {
	BOOL isHighlighted;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];

	self.autoresizingMask = NSViewWidthSizable;

	[self setButtonType:NSMomentaryChangeButton];
	_titleTextField = [[NSTextField alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.bounds) - 22, CGRectGetWidth(self.bounds), 15)];
	[_titleTextField setDrawsBackground:NO];
	_titleTextField.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
	[_titleTextField setAlignment:NSCenterTextAlignment];
	[_titleTextField setTextColor:[NSColor colorWithCalibratedRed:0.484 green:0.498 blue:0.572 alpha:1.000]];
	[_titleTextField setBordered:NO];
	[_titleTextField setFont:[NSFont fontWithName:@"HelveticaNeue" size:10.f]];
	[_titleTextField setBezeled:NO];
	[_titleTextField setFocusRingType:NSFocusRingTypeNone];
	[_titleTextField.cell setLineBreakMode:NSLineBreakByCharWrapping];
	[_titleTextField.cell setTruncatesLastVisibleLine:YES];
	[_titleTextField setEditable:NO];
	[self addSubview:_titleTextField];
	
    return self;
}

- (void)setTitle:(NSString *)aString {
	[super setTitle:aString];
	if (aString.length)
		self.titleTextField.stringValue = aString;
	[self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
	CGRect b = self.bounds;

	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef ctx = STKGraphicsGetCurrentContext();
	
    CGFloat minx = CGRectGetMinX(b);
    CGFloat miny = CGRectGetMinY(b), maxy = CGRectGetMaxY(b);
	
	CGGradientRef myGradient = NULL;
	if ([self.cell isHighlighted])
		myGradient = CGGradientCreateWithColorComponents(colorSpace, colors, inverseLocations, 4);
	else
		myGradient = CGGradientCreateWithColorComponents(colorSpace, colors, locations, 4);
	CGContextDrawLinearGradient(ctx, myGradient, CGPointMake(minx, miny), CGPointMake(minx, maxy), 0);
	CGGradientRelease(myGradient);
	
	[[NSColor colorWithCalibratedRed:0.183 green:0.203 blue:0.264 alpha:1.000]setStroke];
    CGContextSetLineWidth(ctx, 1.0f);
    CGContextMoveToPoint(ctx, 0.0f, 0);
    CGContextAddLineToPoint(ctx, 0.0f, CGRectGetMaxY(b));
    CGContextStrokePath(ctx);
	
	[[NSColor colorWithCalibratedRed:0.096 green:0.126 blue:0.154 alpha:1.000]setStroke];
    CGContextSetLineWidth(ctx, 2.0f);
    CGContextMoveToPoint(ctx, CGRectGetMaxX(b), 0);
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(b), CGRectGetMaxY(b));
    CGContextStrokePath(ctx);
}

@end
