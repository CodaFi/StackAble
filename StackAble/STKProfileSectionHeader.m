//
//  STKProfileSectionHeader.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKProfileSectionHeader.h"

static const CGFloat colors[] = {
	0.261, 0.283, 0.352, 1.000,
	0.202, 0.227, 0.296, 1.000,
	0.202, 0.227, 0.296, 1.000,
	0.112, 0.131, 0.169, 1.000
};
static const CGFloat locations[] = {
	0.0, 1.0 / 60.f, 59.0 / 60.f, 1.0f
};

@interface STKProfileSectionHeader ()

@property (strong) NSTextField *titleTextField;

@end

@implementation STKProfileSectionHeader

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

		self.autoresizingMask = NSViewWidthSizable;
		
		_titleTextField = [[NSTextField alloc]initWithFrame:CGRectMake(8, CGRectGetMaxY(self.bounds) - 18, CGRectGetWidth(self.bounds), 15)];
		[_titleTextField setDrawsBackground:NO];
		_titleTextField.autoresizingMask = NSViewWidthSizable | NSViewMinYMargin;
		[_titleTextField setAlignment:NSLeftTextAlignment];
		[_titleTextField setTextColor:[NSColor colorWithCalibratedRed:0.484 green:0.498 blue:0.572 alpha:1.000]];
		[_titleTextField setBordered:NO];
		[_titleTextField setFont:[NSFont fontWithName:@"HelveticaNeue" size:10.f]];
		[_titleTextField setBezeled:NO];
		[_titleTextField setFocusRingType:NSFocusRingTypeNone];
		[_titleTextField.cell setLineBreakMode:NSLineBreakByCharWrapping];
		[_titleTextField.cell setTruncatesLastVisibleLine:YES];
		[_titleTextField setEditable:NO];
		[self addSubview:_titleTextField];
    }
    
    return self;
}

- (void)setTitle:(NSString *)aString {
	self.titleTextField.stringValue = aString;
	[self.titleTextField setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
	CGRect b = self.bounds;
	
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef ctx = STKGraphicsGetCurrentContext();
	
    CGFloat minx = CGRectGetMinX(b);
    CGFloat miny = CGRectGetMinY(b), maxy = CGRectGetMaxY(b);
	CGGradientRef myGradient = CGGradientCreateWithColorComponents(colorSpace, colors, locations, 4);
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
