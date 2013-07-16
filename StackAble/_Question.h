// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Question.h instead.

#import <CoreData/CoreData.h>


extern const struct QuestionAttributes {
	__unsafe_unretained NSString *anwerCount;
	__unsafe_unretained NSString *body;
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *downvoteCount;
	__unsafe_unretained NSString *favoriteCount;
	__unsafe_unretained NSString *isAnswered;
	__unsafe_unretained NSString *lastActivityDate;
	__unsafe_unretained NSString *lastEditDate;
	__unsafe_unretained NSString *link;
	__unsafe_unretained NSString *questionID;
	__unsafe_unretained NSString *score;
	__unsafe_unretained NSString *title;
	__unsafe_unretained NSString *upvoteCount;
	__unsafe_unretained NSString *viewCount;
} QuestionAttributes;

extern const struct QuestionRelationships {
	__unsafe_unretained NSString *owner;
	__unsafe_unretained NSString *tags;
} QuestionRelationships;

extern const struct QuestionFetchedProperties {
} QuestionFetchedProperties;

@class User;
@class Tag;
















@interface QuestionID : NSManagedObjectID {}
@end

@interface _Question : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (QuestionID*)objectID;





@property (nonatomic, strong) NSNumber* anwerCount;



@property int32_t anwerCountValue;
- (int32_t)anwerCountValue;
- (void)setAnwerCountValue:(int32_t)value_;

//- (BOOL)validateAnwerCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* body;



//- (BOOL)validateBody:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* creationDate;



//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* downvoteCount;



@property int32_t downvoteCountValue;
- (int32_t)downvoteCountValue;
- (void)setDownvoteCountValue:(int32_t)value_;

//- (BOOL)validateDownvoteCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* favoriteCount;



@property int32_t favoriteCountValue;
- (int32_t)favoriteCountValue;
- (void)setFavoriteCountValue:(int32_t)value_;

//- (BOOL)validateFavoriteCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* isAnswered;



@property BOOL isAnsweredValue;
- (BOOL)isAnsweredValue;
- (void)setIsAnsweredValue:(BOOL)value_;

//- (BOOL)validateIsAnswered:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* lastActivityDate;



//- (BOOL)validateLastActivityDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* lastEditDate;



//- (BOOL)validateLastEditDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* link;



//- (BOOL)validateLink:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* questionID;



@property int64_t questionIDValue;
- (int64_t)questionIDValue;
- (void)setQuestionIDValue:(int64_t)value_;

//- (BOOL)validateQuestionID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* score;



@property int32_t scoreValue;
- (int32_t)scoreValue;
- (void)setScoreValue:(int32_t)value_;

//- (BOOL)validateScore:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* title;



//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* upvoteCount;



@property int32_t upvoteCountValue;
- (int32_t)upvoteCountValue;
- (void)setUpvoteCountValue:(int32_t)value_;

//- (BOOL)validateUpvoteCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* viewCount;



@property int64_t viewCountValue;
- (int64_t)viewCountValue;
- (void)setViewCountValue:(int64_t)value_;

//- (BOOL)validateViewCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) User *owner;

//- (BOOL)validateOwner:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *tags;

- (NSMutableSet*)tagsSet;





@end

@interface _Question (CoreDataGeneratedAccessors)

- (void)addTags:(NSSet*)value_;
- (void)removeTags:(NSSet*)value_;
- (void)addTagsObject:(Tag*)value_;
- (void)removeTagsObject:(Tag*)value_;

@end

@interface _Question (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveAnwerCount;
- (void)setPrimitiveAnwerCount:(NSNumber*)value;

- (int32_t)primitiveAnwerCountValue;
- (void)setPrimitiveAnwerCountValue:(int32_t)value_;




- (NSString*)primitiveBody;
- (void)setPrimitiveBody:(NSString*)value;




- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;




- (NSNumber*)primitiveDownvoteCount;
- (void)setPrimitiveDownvoteCount:(NSNumber*)value;

- (int32_t)primitiveDownvoteCountValue;
- (void)setPrimitiveDownvoteCountValue:(int32_t)value_;




- (NSNumber*)primitiveFavoriteCount;
- (void)setPrimitiveFavoriteCount:(NSNumber*)value;

- (int32_t)primitiveFavoriteCountValue;
- (void)setPrimitiveFavoriteCountValue:(int32_t)value_;




- (NSNumber*)primitiveIsAnswered;
- (void)setPrimitiveIsAnswered:(NSNumber*)value;

- (BOOL)primitiveIsAnsweredValue;
- (void)setPrimitiveIsAnsweredValue:(BOOL)value_;




- (NSDate*)primitiveLastActivityDate;
- (void)setPrimitiveLastActivityDate:(NSDate*)value;




- (NSDate*)primitiveLastEditDate;
- (void)setPrimitiveLastEditDate:(NSDate*)value;




- (NSString*)primitiveLink;
- (void)setPrimitiveLink:(NSString*)value;




- (NSNumber*)primitiveQuestionID;
- (void)setPrimitiveQuestionID:(NSNumber*)value;

- (int64_t)primitiveQuestionIDValue;
- (void)setPrimitiveQuestionIDValue:(int64_t)value_;




- (NSNumber*)primitiveScore;
- (void)setPrimitiveScore:(NSNumber*)value;

- (int32_t)primitiveScoreValue;
- (void)setPrimitiveScoreValue:(int32_t)value_;




- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;




- (NSNumber*)primitiveUpvoteCount;
- (void)setPrimitiveUpvoteCount:(NSNumber*)value;

- (int32_t)primitiveUpvoteCountValue;
- (void)setPrimitiveUpvoteCountValue:(int32_t)value_;




- (NSNumber*)primitiveViewCount;
- (void)setPrimitiveViewCount:(NSNumber*)value;

- (int64_t)primitiveViewCountValue;
- (void)setPrimitiveViewCountValue:(int64_t)value_;





- (User*)primitiveOwner;
- (void)setPrimitiveOwner:(User*)value;



- (NSMutableSet*)primitiveTags;
- (void)setPrimitiveTags:(NSMutableSet*)value;


@end
