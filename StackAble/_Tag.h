// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Tag.h instead.

#import <CoreData/CoreData.h>


extern const struct TagAttributes {
	__unsafe_unretained NSString *count;
	__unsafe_unretained NSString *hasSynonyms;
	__unsafe_unretained NSString *name;
} TagAttributes;

extern const struct TagRelationships {
	__unsafe_unretained NSString *questions;
	__unsafe_unretained NSString *user;
} TagRelationships;

extern const struct TagFetchedProperties {
} TagFetchedProperties;

@class Question;
@class User;





@interface TagID : NSManagedObjectID {}
@end

@interface _Tag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (TagID*)objectID;





@property (nonatomic, strong) NSNumber* count;



@property int64_t countValue;
- (int64_t)countValue;
- (void)setCountValue:(int64_t)value_;

//- (BOOL)validateCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* hasSynonyms;



@property BOOL hasSynonymsValue;
- (BOOL)hasSynonymsValue;
- (void)setHasSynonymsValue:(BOOL)value_;

//- (BOOL)validateHasSynonyms:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *questions;

- (NSMutableSet*)questionsSet;




@property (nonatomic, strong) User *user;

//- (BOOL)validateUser:(id*)value_ error:(NSError**)error_;





@end

@interface _Tag (CoreDataGeneratedAccessors)

- (void)addQuestions:(NSSet*)value_;
- (void)removeQuestions:(NSSet*)value_;
- (void)addQuestionsObject:(Question*)value_;
- (void)removeQuestionsObject:(Question*)value_;

@end

@interface _Tag (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveCount;
- (void)setPrimitiveCount:(NSNumber*)value;

- (int64_t)primitiveCountValue;
- (void)setPrimitiveCountValue:(int64_t)value_;




- (NSNumber*)primitiveHasSynonyms;
- (void)setPrimitiveHasSynonyms:(NSNumber*)value;

- (BOOL)primitiveHasSynonymsValue;
- (void)setPrimitiveHasSynonymsValue:(BOOL)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveQuestions;
- (void)setPrimitiveQuestions:(NSMutableSet*)value;



- (User*)primitiveUser;
- (void)setPrimitiveUser:(User*)value;


@end
