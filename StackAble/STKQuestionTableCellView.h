//
//  STKQuestionTableCellView.h
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class EXKQuestion;

@interface STKQuestionTableCellView : NSTableRowView

@property (nonatomic, weak) EXKQuestion *question;

@end
