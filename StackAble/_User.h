// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to User.h instead.

#import <CoreData/CoreData.h>


extern const struct UserAttributes {
	__unsafe_unretained NSString *accountID;
	__unsafe_unretained NSString *age;
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *displayName;
	__unsafe_unretained NSString *lastAccessDate;
	__unsafe_unretained NSString *location;
	__unsafe_unretained NSString *profileImageURLString;
	__unsafe_unretained NSString *profileURLString;
	__unsafe_unretained NSString *reputation;
	__unsafe_unretained NSString *userID;
	__unsafe_unretained NSString *userType;
	__unsafe_unretained NSString *websiteURLString;
} UserAttributes;

extern const struct UserRelationships {
	__unsafe_unretained NSString *tags;
} UserRelationships;

extern const struct UserFetchedProperties {
} UserFetchedProperties;

@class Tag;














@interface UserID : NSManagedObjectID {}
@end

@interface _User : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (UserID*)objectID;





@property (nonatomic, strong) NSNumber* accountID;



@property int64_t accountIDValue;
- (int64_t)accountIDValue;
- (void)setAccountIDValue:(int64_t)value_;

//- (BOOL)validateAccountID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* age;



@property int16_t ageValue;
- (int16_t)ageValue;
- (void)setAgeValue:(int16_t)value_;

//- (BOOL)validateAge:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* creationDate;



//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* displayName;



//- (BOOL)validateDisplayName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* lastAccessDate;



//- (BOOL)validateLastAccessDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* location;



//- (BOOL)validateLocation:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* profileImageURLString;



//- (BOOL)validateProfileImageURLString:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* profileURLString;



//- (BOOL)validateProfileURLString:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* reputation;



@property int64_t reputationValue;
- (int64_t)reputationValue;
- (void)setReputationValue:(int64_t)value_;

//- (BOOL)validateReputation:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* userID;



@property int32_t userIDValue;
- (int32_t)userIDValue;
- (void)setUserIDValue:(int32_t)value_;

//- (BOOL)validateUserID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* userType;



@property int16_t userTypeValue;
- (int16_t)userTypeValue;
- (void)setUserTypeValue:(int16_t)value_;

//- (BOOL)validateUserType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* websiteURLString;



//- (BOOL)validateWebsiteURLString:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *tags;

- (NSMutableSet*)tagsSet;





@end

@interface _User (CoreDataGeneratedAccessors)

- (void)addTags:(NSSet*)value_;
- (void)removeTags:(NSSet*)value_;
- (void)addTagsObject:(Tag*)value_;
- (void)removeTagsObject:(Tag*)value_;

@end

@interface _User (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveAccountID;
- (void)setPrimitiveAccountID:(NSNumber*)value;

- (int64_t)primitiveAccountIDValue;
- (void)setPrimitiveAccountIDValue:(int64_t)value_;




- (NSNumber*)primitiveAge;
- (void)setPrimitiveAge:(NSNumber*)value;

- (int16_t)primitiveAgeValue;
- (void)setPrimitiveAgeValue:(int16_t)value_;




- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;




- (NSString*)primitiveDisplayName;
- (void)setPrimitiveDisplayName:(NSString*)value;




- (NSDate*)primitiveLastAccessDate;
- (void)setPrimitiveLastAccessDate:(NSDate*)value;




- (NSString*)primitiveLocation;
- (void)setPrimitiveLocation:(NSString*)value;




- (NSString*)primitiveProfileImageURLString;
- (void)setPrimitiveProfileImageURLString:(NSString*)value;




- (NSString*)primitiveProfileURLString;
- (void)setPrimitiveProfileURLString:(NSString*)value;




- (NSNumber*)primitiveReputation;
- (void)setPrimitiveReputation:(NSNumber*)value;

- (int64_t)primitiveReputationValue;
- (void)setPrimitiveReputationValue:(int64_t)value_;




- (NSNumber*)primitiveUserID;
- (void)setPrimitiveUserID:(NSNumber*)value;

- (int32_t)primitiveUserIDValue;
- (void)setPrimitiveUserIDValue:(int32_t)value_;




- (NSNumber*)primitiveUserType;
- (void)setPrimitiveUserType:(NSNumber*)value;

- (int16_t)primitiveUserTypeValue;
- (void)setPrimitiveUserTypeValue:(int16_t)value_;




- (NSString*)primitiveWebsiteURLString;
- (void)setPrimitiveWebsiteURLString:(NSString*)value;





- (NSMutableSet*)primitiveTags;
- (void)setPrimitiveTags:(NSMutableSet*)value;


@end
