//
//  STKProfileViewModel.h
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EXKTag;

@interface STKProfileViewModel : NSObject

@property (strong) NSString *username;
@property (strong) NSImage *avatar;
@property (strong) NSString *lastLoginString;
@property (strong) NSString *reputationString;

@property (strong) NSArray *tags;
@property (copy) NSString *selectedTagName;

- (void)selectTagName:(NSString *)name;

@end
