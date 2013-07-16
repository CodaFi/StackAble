// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Site.m instead.

#import "_Site.h"

const struct SiteAttributes SiteAttributes = {
	.name = @"name",
};

const struct SiteRelationships SiteRelationships = {
};

const struct SiteFetchedProperties SiteFetchedProperties = {
};

@implementation SiteID
@end

@implementation _Site

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Site" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Site";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Site" inManagedObjectContext:moc_];
}

- (SiteID*)objectID {
	return (SiteID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic name;











@end
