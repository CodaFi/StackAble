//
//  STKQuestionTableCellView.m
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKQuestionTableCellView.h"
#import "STKTextFieldCell.h"
#import <ExchangeKit/ExchangeKit.h>

@interface STKQuestionTableCellView()
@property (nonatomic, strong) NSTextField *titleLabel;
@property (nonatomic, strong) NSTextField *bodyLabel;
@property (nonatomic, strong) NSTextField *voteLabel;
@end

@implementation STKQuestionTableCellView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];

	CGRect slice, remainder;
	CGRectDivide(self.bounds, &slice, &remainder, 100, CGRectMinXEdge);
	CGRect sideSlice = slice;
	CGRectDivide(remainder, &slice, &remainder, 40, CGRectMinYEdge);
	slice.origin.x -= 30;
	remainder.origin.x -= 30;

	_titleLabel = [[NSTextField alloc] initWithFrame:slice];
	_titleLabel.cell = [[STKTextFieldCell alloc]init];
	_titleLabel.autoresizingMask = NSViewWidthSizable;
	_titleLabel.textColor = [NSColor blackColor];
	[_titleLabel setAlignment:NSLeftTextAlignment];
	[_titleLabel setBordered:NO];
	[_titleLabel setFont:[NSFont fontWithName:@"HelveticaNeue-Bold" size:12.f]];
	[_titleLabel setBezeled:NO];
	[_titleLabel setDrawsBackground:NO];
	[_titleLabel setFocusRingType:NSFocusRingTypeNone];
	[_titleLabel.cell setLineBreakMode:NSLineBreakByWordWrapping];
	[_titleLabel.cell setTruncatesLastVisibleLine:YES];
	[_titleLabel setEditable:NO];
	
	[self addSubview:_titleLabel];
	
	_bodyLabel = [[NSTextField alloc] initWithFrame:remainder];
	_bodyLabel.cell = [[STKTextFieldCell alloc]init];
	_bodyLabel.textColor = NSColor.blackColor;
	_bodyLabel.autoresizingMask = NSViewWidthSizable;
	[_bodyLabel setAlignment:NSLeftTextAlignment];
	[_bodyLabel setBordered:NO];
	[_bodyLabel setFont:[NSFont fontWithName:@"HelveticaNeue" size:12.f]];
	[_bodyLabel setBezeled:NO];
	[_bodyLabel setDrawsBackground:NO];
	[_bodyLabel setFocusRingType:NSFocusRingTypeNone];
	[_bodyLabel.cell setLineBreakMode:NSLineBreakByWordWrapping];
	[_bodyLabel.cell setTruncatesLastVisibleLine:YES];
	[_bodyLabel setEditable:NO];
	
	[self addSubview:_bodyLabel];
	
	_voteLabel = [[NSTextField alloc] initWithFrame:sideSlice];
	_voteLabel.cell = [[STKTextFieldCell alloc]init];
	_voteLabel.textColor = [NSColor blackColor];
	[_voteLabel setAlignment:NSCenterTextAlignment];
	[_voteLabel setBordered:NO];
	[_voteLabel setFont:[NSFont fontWithName:@"HelveticaNeue-Bold" size:18.f]];
	[_voteLabel setBezeled:NO];
	[_voteLabel setDrawsBackground:NO];
	[_voteLabel setFocusRingType:NSFocusRingTypeNone];
	[_voteLabel.cell setLineBreakMode:NSLineBreakByWordWrapping];
	[_voteLabel.cell setTruncatesLastVisibleLine:YES];
	[_voteLabel setEditable:NO];
	
	[self addSubview:_voteLabel];
	
	return self;
}

- (void)setQuestion:(EXKQuestion *)question {
	if (question.title.length) {
		self.titleLabel.stringValue = (__bridge NSString *)(CFXMLCreateStringByUnescapingEntities(kCFAllocatorDefault, (__bridge CFStringRef)question.title, NULL));
	}
	if (question.body.length)
		self.bodyLabel.attributedStringValue = [[NSAttributedString alloc]initWithHTML:[question.body dataUsingEncoding:NSUTF8StringEncoding] baseURL:Nil documentAttributes:NULL];
	if (question.score)
		self.voteLabel.stringValue = question.score.stringValue;
}

- (void)drawRect:(NSRect)dirtyRect {
	[super drawRect:dirtyRect];
	
	CGRect b = self.bounds;
	[[NSColor colorWithCalibratedRed:0.869 green:0.902 blue:0.921 alpha:1.000] set];
	CGContextRef context = STKGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0f);
    CGContextMoveToPoint( context, 0.0f, CGRectGetMaxY(b) );
    CGContextAddLineToPoint( context, CGRectGetMaxX(b), CGRectGetMaxY(b) );
    CGContextStrokePath(context);
}

@end
