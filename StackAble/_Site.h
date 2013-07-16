// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Site.h instead.

#import <CoreData/CoreData.h>


extern const struct SiteAttributes {
	__unsafe_unretained NSString *name;
} SiteAttributes;

extern const struct SiteRelationships {
} SiteRelationships;

extern const struct SiteFetchedProperties {
} SiteFetchedProperties;




@interface SiteID : NSManagedObjectID {}
@end

@interface _Site : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SiteID*)objectID;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;






@end

@interface _Site (CoreDataGeneratedAccessors)

@end

@interface _Site (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




@end
