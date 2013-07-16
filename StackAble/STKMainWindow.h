//
//  STKMainWindow.h
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "INAppStoreWindow.h"

@class DMSplitView, STKProfileColumnViewController, STKMainColumnViewController, STKDetailPaneViewController;

@interface STKMainWindow : INAppStoreWindow

@property (nonatomic, strong) DMSplitView *splitView;
@property (nonatomic, strong) DMSplitView *innerSplitView;
@property (nonatomic, strong) STKMainColumnViewController *mainColumnViewController;
@property (nonatomic, strong) STKProfileColumnViewController *profileColumnViewController;
@property (nonatomic, strong) STKDetailPaneViewController *detailsColumnViewController;

@end
