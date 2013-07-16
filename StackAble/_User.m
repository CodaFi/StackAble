// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to User.m instead.

#import "_User.h"

const struct UserAttributes UserAttributes = {
	.accountID = @"accountID",
	.age = @"age",
	.creationDate = @"creationDate",
	.displayName = @"displayName",
	.lastAccessDate = @"lastAccessDate",
	.location = @"location",
	.profileImageURLString = @"profileImageURLString",
	.profileURLString = @"profileURLString",
	.reputation = @"reputation",
	.userID = @"userID",
	.userType = @"userType",
	.websiteURLString = @"websiteURLString",
};

const struct UserRelationships UserRelationships = {
	.tags = @"tags",
};

const struct UserFetchedProperties UserFetchedProperties = {
};

@implementation UserID
@end

@implementation _User

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"User";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"User" inManagedObjectContext:moc_];
}

- (UserID*)objectID {
	return (UserID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"accountIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"accountID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"ageValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"age"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"reputationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"reputation"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"userIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"userID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"userTypeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"userType"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic accountID;



- (int64_t)accountIDValue {
	NSNumber *result = [self accountID];
	return [result longLongValue];
}

- (void)setAccountIDValue:(int64_t)value_ {
	[self setAccountID:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveAccountIDValue {
	NSNumber *result = [self primitiveAccountID];
	return [result longLongValue];
}

- (void)setPrimitiveAccountIDValue:(int64_t)value_ {
	[self setPrimitiveAccountID:[NSNumber numberWithLongLong:value_]];
}





@dynamic age;



- (int16_t)ageValue {
	NSNumber *result = [self age];
	return [result shortValue];
}

- (void)setAgeValue:(int16_t)value_ {
	[self setAge:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveAgeValue {
	NSNumber *result = [self primitiveAge];
	return [result shortValue];
}

- (void)setPrimitiveAgeValue:(int16_t)value_ {
	[self setPrimitiveAge:[NSNumber numberWithShort:value_]];
}





@dynamic creationDate;






@dynamic displayName;






@dynamic lastAccessDate;






@dynamic location;






@dynamic profileImageURLString;






@dynamic profileURLString;






@dynamic reputation;



- (int64_t)reputationValue {
	NSNumber *result = [self reputation];
	return [result longLongValue];
}

- (void)setReputationValue:(int64_t)value_ {
	[self setReputation:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveReputationValue {
	NSNumber *result = [self primitiveReputation];
	return [result longLongValue];
}

- (void)setPrimitiveReputationValue:(int64_t)value_ {
	[self setPrimitiveReputation:[NSNumber numberWithLongLong:value_]];
}





@dynamic userID;



- (int32_t)userIDValue {
	NSNumber *result = [self userID];
	return [result intValue];
}

- (void)setUserIDValue:(int32_t)value_ {
	[self setUserID:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveUserIDValue {
	NSNumber *result = [self primitiveUserID];
	return [result intValue];
}

- (void)setPrimitiveUserIDValue:(int32_t)value_ {
	[self setPrimitiveUserID:[NSNumber numberWithInt:value_]];
}





@dynamic userType;



- (int16_t)userTypeValue {
	NSNumber *result = [self userType];
	return [result shortValue];
}

- (void)setUserTypeValue:(int16_t)value_ {
	[self setUserType:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveUserTypeValue {
	NSNumber *result = [self primitiveUserType];
	return [result shortValue];
}

- (void)setPrimitiveUserTypeValue:(int16_t)value_ {
	[self setPrimitiveUserType:[NSNumber numberWithShort:value_]];
}





@dynamic websiteURLString;






@dynamic tags;

	
- (NSMutableSet*)tagsSet {
	[self willAccessValueForKey:@"tags"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tags"];
  
	[self didAccessValueForKey:@"tags"];
	return result;
}
	






@end
