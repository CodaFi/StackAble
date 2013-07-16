//
//  STKMainColumnViewController.m
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKMainColumnViewController.h"
#import "STKMainColumnViewModel.h"
#import "STKTableView.h"
#import "STKQuestionTableCellView.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface STKMainColumnViewController ()
@end

@implementation STKMainColumnViewController

- (id)initWithContentRect:(CGRect)frame {
	self = [super init];
	_frame = frame;
	return self;
}

- (void)loadView {
	
	_viewModel = [STKMainColumnViewModel new];
	
	NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame:_frame];
	scrollView.hasVerticalScroller = YES;
	STKTableView *tableView = [[STKTableView alloc] initWithFrame: scrollView.bounds];
	NSTableColumn *firstColumn  = [[NSTableColumn alloc] initWithIdentifier:@"firstColumn"];
	firstColumn.width = CGRectGetWidth(_frame);
    [[firstColumn headerCell] setStringValue:@"First Column"];
    [tableView  addTableColumn:firstColumn];
	tableView.delegate = self;
	tableView.dataSource = _viewModel;
	scrollView.documentView = tableView;
	
	self.view = scrollView;
	
	[RACAbleWithStart(self.viewModel.questions) subscribeNext:^(id x) {
		[tableView reloadData];
	}];
}

- (CGFloat)tableView:(NSTableView *)tv heightOfRow:(NSInteger)row {
	return 110.f;
}

- (BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row {
	[self.viewModel selectQuestionAtIndex:row];
	return YES;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
	STKQuestionTableCellView *tableCellView = (STKQuestionTableCellView*)[tableView makeViewWithIdentifier:[tableColumn identifier] owner:self];
	return tableCellView;
}

- (void)tableView:(NSTableView *)tableView didAddRowView:(STKQuestionTableCellView *)rowView forRow:(NSInteger)row {
	rowView.question = self.viewModel.questions[row];
}

- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row {
	STKQuestionTableCellView *rowView = [[STKQuestionTableCellView alloc] initWithFrame:NSMakeRect(0, 0, NSWidth(_frame), 110)];
    return rowView;
}

@end
