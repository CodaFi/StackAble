//
//  STKMainWindow.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKMainWindow.h"
#import "DMSplitView.h"
#import "STKProfileColumnViewController.h"
#import "STKMainColumnViewController.h"
#import "STKDetailPaneViewController.h"
#import "STKMainColumnViewModel.h"
#import "STKDetailPaneViewModel.h"
#import "STKProfileViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation STKMainWindow

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag {
	self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
	
	[self.contentView setWantsLayer:YES];
	
	self.collectionBehavior = NSWindowCollectionBehaviorFullScreenPrimary;
	self.titleBarHeight = 44;
	self.titleBarStartColor = [NSColor colorWithCalibratedRed:0.979 green:0.392 blue:0.110 alpha:1.000];
	self.titleBarEndColor = [NSColor colorWithCalibratedRed:0.782 green:0.472 blue:0.122 alpha:1.000];
	self.fullScreenButtonRightMargin = 12.0f;
	self.centerFullScreenButton = YES;
	self.inactiveTitleBarStartColor = [NSColor colorWithCalibratedRed:0.738 green:0.545 blue:0.273 alpha:1.000];
	self.inactiveTitleBarEndColor = [NSColor colorWithCalibratedRed:0.782 green:0.472 blue:0.122 alpha:1.000];
	self.trafficLightButtonsLeftMargin = 12.0f;
	self.centerTrafficLightButtons = YES;

	_splitView = [[DMSplitView alloc]initWithFrame:contentRect];
	_splitView.dividerStyle = NSSplitViewDividerStyleThin;
	_splitView.dividerColor = [NSColor colorWithCalibratedRed:0.109 green:0.120 blue:0.135 alpha:1.000];
	[_splitView setVertical:YES];
	_splitView.autoresizingMask = (NSViewWidthSizable | NSViewHeightSizable);
	
	CGRect slice, remainder;
	CGRectDivide(contentRect, &slice, &remainder, 220, CGRectMinXEdge);
	_profileColumnViewController = [[STKProfileColumnViewController alloc]initWithContentRect:slice];
	[_splitView addSubview:_profileColumnViewController.view];
	
	_innerSplitView = [[DMSplitView alloc]initWithFrame:remainder];
	_innerSplitView.vertical = YES;
	_innerSplitView.dividerStyle = NSSplitViewDividerStyleThin;
	[_innerSplitView setDividerColor:[NSColor colorWithCalibratedRed:222/255.0f green:230/255.0f blue:235/255.0f alpha:1.0f]];
	[_splitView addSubview:_innerSplitView];
	[_splitView reset];
	_splitView.subviewsResizeMode = DMSplitViewResizeModePriorityBased;
	[_splitView setPriority:1 ofSubviewAtIndex:0];
	[_splitView setPriority:0 ofSubviewAtIndex:1];
	[_splitView setHoldingPriority:NSLayoutPriorityDragThatCanResizeWindow forSubviewAtIndex:0];
	
	CGRectDivide(_innerSplitView.bounds, &slice, &remainder, 320, CGRectMinXEdge);
	_mainColumnViewController = [[STKMainColumnViewController alloc]initWithContentRect:slice];
	[_innerSplitView addSubview:_mainColumnViewController.view];
	
	_detailsColumnViewController = [[STKDetailPaneViewController alloc]initWithContentRect:slice];
	[_innerSplitView addSubview:_detailsColumnViewController.view];
	[_innerSplitView reset];
	_innerSplitView.subviewsResizeMode = DMSplitViewResizeModePriorityBased;
	[_innerSplitView setPriority:1 ofSubviewAtIndex:0];
	[_innerSplitView setPriority:0 ofSubviewAtIndex:1];
	[_innerSplitView setHoldingPriority:NSLayoutPriorityDragThatCanResizeWindow forSubviewAtIndex:0];

	
	[self.contentView addSubview:_splitView];
	
	RAC(self.mainColumnViewController.viewModel.selectedTagName) = RACAble(self.profileColumnViewController.viewModel.selectedTagName);
	RAC(self.detailsColumnViewController.viewModel.question) = RACAble(self.mainColumnViewController.viewModel.selectedQuestion);
	
	return self;
}

@end
