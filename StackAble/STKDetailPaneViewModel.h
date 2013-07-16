//
//  STKDetailPaneViewModel.h
//  StackAble
//
//  Created by Robert Widmann on 6/19/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EXKQuestion;

@interface STKDetailPaneViewModel : NSObject

@property (nonatomic, weak) EXKQuestion *question;

@property (copy) NSAttributedString *questionBody;

@end
