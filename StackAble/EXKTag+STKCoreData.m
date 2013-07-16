//
//  EXKTag+STKCoreData.m
//  StackAble
//
//  Created by Robert Widmann on 6/20/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "EXKTag+STKCoreData.h"

@implementation EXKTag (STKCoreData)

+ (NSString *)managedObjectEntityName {
	return @"Tag";
}

+ (NSDictionary *)managedObjectKeysByPropertyKey {
	return @{
		@"site" : NSNull.null,
		@"count" : @"count",
		@"hasSynonyms" : @"hasSynonyms",
		@"name" : @"name",
	};
}

@end
