//
//  STKMainColumnViewModel.h
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EXKQuestion, Tag;

@interface STKMainColumnViewModel : NSObject <NSTableViewDataSource>

@property (nonatomic, copy) NSString *selectedTagName;

@property (nonatomic, strong) NSArray *questions;
@property (nonatomic, weak) EXKQuestion *selectedQuestion;

- (void)selectQuestionAtIndex:(NSUInteger)index;

@end
