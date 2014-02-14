//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
#import "___VARIABLE_categoryName:identifier___ObjectManager.h"

@implementation ___VARIABLE_categoryClass:identifier___ (___VARIABLE_categoryName:identifier___)

#pragma mark - ___VARIABLE_categoryName:identifier___DownloadableManagedObjectProtocol

static RKEntityMapping *entityMappingWithoutRelationships = nil;
+ (RKEntityMapping *)<# protocol prefix #>_entityMappingWithoutRelationshipsInStore:(RKManagedObjectStore *)store
{
    if(!entityMappingWithoutRelationships)
    {
        entityMappingWithoutRelationships = [RKEntityMapping mappingForEntityForName:@"___VARIABLE_categoryClass:identifier___" inManagedObjectStore: store];
        [entityMappingWithoutRelationships addAttributeMappingsFromDictionary:<# mapping dictionary #>];
        [entityMappingWithoutRelationships setIdentificationAttributes: @[<# entity primary key #>]];
    }
    return entityMappingWithoutRelationships;
}

static RKEntityMapping *entityMappingComplete = nil;
+ (RKEntityMapping *)<# protocol prefix #>_completeEntityMappingInStore:(RKManagedObjectStore *)store
{
    if(!entityMappingComplete)
    {
        entityMappingComplete = [self <# protocol prefix #>_entityMappingWithoutRelationshipsInStore:store];
        RKRelationshipMapping *<# relationship mapping name #> = [RKRelationshipMapping relationshipMappingFromKeyPath:@"<# key path #>" toKeyPath:@"<# key path #>" withMapping:<# relationship mapping #>];
        [entityMappingComplete addPropertyMapping:<# relationship mapping name #>];
    }
    return entityMappingComplete;
}

+ (NSArray *)<# protocol prefix #>_managedObjectResponseDescriptorsInStore:(RKManagedObjectStore *)store
{
    NSDictionary *pathPatternsKeyPathDictionary = @{@"<# path pattern #>" : @"<# key path #>"};
    NSMutableArray *responseDescriptorsArray = [NSMutableArray arrayWithCapacity:pathPatternsKeyPathDictionary.count];
    [pathPatternsKeyPathDictionary each:^(NSString *pathPattern, NSString *keyPath) {
        [responseDescriptorsArray addObject: [RKResponseDescriptor responseDescriptorWithMapping:[self <# protocol prefix #>_completeEntityMappingInStore:store] method:RKRequestMethodAny pathPattern:pathPattern keyPath:keyPath statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)]];
    }];
    return responseDescriptorsArray;
}

+ (void)<# protocol prefix #>_deleteStaticResponseEntityMappingObjects
{
    entityMappingComplete = nil;
    entityMappingWithoutRelationships = nil;
}

/*
 If this object should implement ___VARIABLE_categoryName:identifier___PostableManagedObjectProtocol please use PostableObjectProtocol snippet and add ___VARIABLE_categoryName:identifier___PostableManagedObjectProtocol to h file
 */



@end
