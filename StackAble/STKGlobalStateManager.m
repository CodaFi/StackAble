//
//  STKGlobalStateManager.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKGlobalStateManager.h"

@implementation STKGlobalStateManager

+ (instancetype)sharedManager {
	static STKGlobalStateManager *manager;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		manager = [[STKGlobalStateManager alloc]init];
	});
	return manager;
}



@end
