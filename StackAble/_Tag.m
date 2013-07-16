// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Tag.m instead.

#import "_Tag.h"

const struct TagAttributes TagAttributes = {
	.count = @"count",
	.hasSynonyms = @"hasSynonyms",
	.name = @"name",
};

const struct TagRelationships TagRelationships = {
	.questions = @"questions",
	.user = @"user",
};

const struct TagFetchedProperties TagFetchedProperties = {
};

@implementation TagID
@end

@implementation _Tag

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Tag" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Tag";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Tag" inManagedObjectContext:moc_];
}

- (TagID*)objectID {
	return (TagID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"countValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"count"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"hasSynonymsValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"hasSynonyms"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic count;



- (int64_t)countValue {
	NSNumber *result = [self count];
	return [result longLongValue];
}

- (void)setCountValue:(int64_t)value_ {
	[self setCount:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveCountValue {
	NSNumber *result = [self primitiveCount];
	return [result longLongValue];
}

- (void)setPrimitiveCountValue:(int64_t)value_ {
	[self setPrimitiveCount:[NSNumber numberWithLongLong:value_]];
}





@dynamic hasSynonyms;



- (BOOL)hasSynonymsValue {
	NSNumber *result = [self hasSynonyms];
	return [result boolValue];
}

- (void)setHasSynonymsValue:(BOOL)value_ {
	[self setHasSynonyms:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveHasSynonymsValue {
	NSNumber *result = [self primitiveHasSynonyms];
	return [result boolValue];
}

- (void)setPrimitiveHasSynonymsValue:(BOOL)value_ {
	[self setPrimitiveHasSynonyms:[NSNumber numberWithBool:value_]];
}





@dynamic name;






@dynamic questions;

	
- (NSMutableSet*)questionsSet {
	[self willAccessValueForKey:@"questions"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"questions"];
  
	[self didAccessValueForKey:@"questions"];
	return result;
}
	

@dynamic user;

	






@end
