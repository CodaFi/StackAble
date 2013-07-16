// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Question.m instead.

#import "_Question.h"

const struct QuestionAttributes QuestionAttributes = {
	.anwerCount = @"anwerCount",
	.body = @"body",
	.creationDate = @"creationDate",
	.downvoteCount = @"downvoteCount",
	.favoriteCount = @"favoriteCount",
	.isAnswered = @"isAnswered",
	.lastActivityDate = @"lastActivityDate",
	.lastEditDate = @"lastEditDate",
	.link = @"link",
	.questionID = @"questionID",
	.score = @"score",
	.title = @"title",
	.upvoteCount = @"upvoteCount",
	.viewCount = @"viewCount",
};

const struct QuestionRelationships QuestionRelationships = {
	.owner = @"owner",
	.tags = @"tags",
};

const struct QuestionFetchedProperties QuestionFetchedProperties = {
};

@implementation QuestionID
@end

@implementation _Question

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Question" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Question";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Question" inManagedObjectContext:moc_];
}

- (QuestionID*)objectID {
	return (QuestionID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"anwerCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"anwerCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"downvoteCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"downvoteCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"favoriteCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"favoriteCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isAnsweredValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isAnswered"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"questionIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"questionID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"scoreValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"score"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"upvoteCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"upvoteCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"viewCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"viewCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic anwerCount;



- (int32_t)anwerCountValue {
	NSNumber *result = [self anwerCount];
	return [result intValue];
}

- (void)setAnwerCountValue:(int32_t)value_ {
	[self setAnwerCount:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveAnwerCountValue {
	NSNumber *result = [self primitiveAnwerCount];
	return [result intValue];
}

- (void)setPrimitiveAnwerCountValue:(int32_t)value_ {
	[self setPrimitiveAnwerCount:[NSNumber numberWithInt:value_]];
}





@dynamic body;






@dynamic creationDate;






@dynamic downvoteCount;



- (int32_t)downvoteCountValue {
	NSNumber *result = [self downvoteCount];
	return [result intValue];
}

- (void)setDownvoteCountValue:(int32_t)value_ {
	[self setDownvoteCount:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveDownvoteCountValue {
	NSNumber *result = [self primitiveDownvoteCount];
	return [result intValue];
}

- (void)setPrimitiveDownvoteCountValue:(int32_t)value_ {
	[self setPrimitiveDownvoteCount:[NSNumber numberWithInt:value_]];
}





@dynamic favoriteCount;



- (int32_t)favoriteCountValue {
	NSNumber *result = [self favoriteCount];
	return [result intValue];
}

- (void)setFavoriteCountValue:(int32_t)value_ {
	[self setFavoriteCount:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveFavoriteCountValue {
	NSNumber *result = [self primitiveFavoriteCount];
	return [result intValue];
}

- (void)setPrimitiveFavoriteCountValue:(int32_t)value_ {
	[self setPrimitiveFavoriteCount:[NSNumber numberWithInt:value_]];
}





@dynamic isAnswered;



- (BOOL)isAnsweredValue {
	NSNumber *result = [self isAnswered];
	return [result boolValue];
}

- (void)setIsAnsweredValue:(BOOL)value_ {
	[self setIsAnswered:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveIsAnsweredValue {
	NSNumber *result = [self primitiveIsAnswered];
	return [result boolValue];
}

- (void)setPrimitiveIsAnsweredValue:(BOOL)value_ {
	[self setPrimitiveIsAnswered:[NSNumber numberWithBool:value_]];
}





@dynamic lastActivityDate;






@dynamic lastEditDate;






@dynamic link;






@dynamic questionID;



- (int64_t)questionIDValue {
	NSNumber *result = [self questionID];
	return [result longLongValue];
}

- (void)setQuestionIDValue:(int64_t)value_ {
	[self setQuestionID:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveQuestionIDValue {
	NSNumber *result = [self primitiveQuestionID];
	return [result longLongValue];
}

- (void)setPrimitiveQuestionIDValue:(int64_t)value_ {
	[self setPrimitiveQuestionID:[NSNumber numberWithLongLong:value_]];
}





@dynamic score;



- (int32_t)scoreValue {
	NSNumber *result = [self score];
	return [result intValue];
}

- (void)setScoreValue:(int32_t)value_ {
	[self setScore:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveScoreValue {
	NSNumber *result = [self primitiveScore];
	return [result intValue];
}

- (void)setPrimitiveScoreValue:(int32_t)value_ {
	[self setPrimitiveScore:[NSNumber numberWithInt:value_]];
}





@dynamic title;






@dynamic upvoteCount;



- (int32_t)upvoteCountValue {
	NSNumber *result = [self upvoteCount];
	return [result intValue];
}

- (void)setUpvoteCountValue:(int32_t)value_ {
	[self setUpvoteCount:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveUpvoteCountValue {
	NSNumber *result = [self primitiveUpvoteCount];
	return [result intValue];
}

- (void)setPrimitiveUpvoteCountValue:(int32_t)value_ {
	[self setPrimitiveUpvoteCount:[NSNumber numberWithInt:value_]];
}





@dynamic viewCount;



- (int64_t)viewCountValue {
	NSNumber *result = [self viewCount];
	return [result longLongValue];
}

- (void)setViewCountValue:(int64_t)value_ {
	[self setViewCount:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveViewCountValue {
	NSNumber *result = [self primitiveViewCount];
	return [result longLongValue];
}

- (void)setPrimitiveViewCountValue:(int64_t)value_ {
	[self setPrimitiveViewCount:[NSNumber numberWithLongLong:value_]];
}





@dynamic owner;

	

@dynamic tags;

	
- (NSMutableSet*)tagsSet {
	[self willAccessValueForKey:@"tags"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tags"];
  
	[self didAccessValueForKey:@"tags"];
	return result;
}
	






@end
