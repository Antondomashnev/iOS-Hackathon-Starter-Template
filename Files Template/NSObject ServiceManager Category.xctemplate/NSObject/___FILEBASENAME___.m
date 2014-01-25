//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
#import <RestKit/RestKit.h>

@implementation ___VARIABLE_categoryClass:identifier___ (___VARIABLE_categoryName:identifier___)

#pragma mark - ___VARIABLE_categoryName:identifier___MappableObjectProtocol

static RKObjectMapping *objectMappingWithoutRelationships = nil;
+ (RKObjectMapping *)<# protocol prefix #>_objectMappingWithoutRelationships
{
    if(!objectMappingWithoutRelationships)
    {
        objectMappingWithoutRelationships = [RKObjectMapping mappingForClass:[___VARIABLE_categoryClass:identifier___ class]];
        [objectMappingWithoutRelationships addAttributeMappingsFromDictionary:<# Mapping dictionary #>];
    }
    return objectMappingWithoutRelationships;
}

static RKObjectMapping *objectMappingComplete = nil;
+ (RKObjectMapping *)<# protocol prefix #>_completeObjectMapping
{
    if(!objectMappingComplete)
    {
        objectMappingComplete = [self <# protocol prefix #>_objectMappingWithoutRelationships];
        RKRelationshipMapping *<# relationship mapping name #> = [RKRelationshipMapping relationshipMappingFromKeyPath:@"<# key path #>" toKeyPath:@"<# key path #>" withMapping:<# relationship mapping #>];
        [objectMappingComplete addPropertyMapping:<# relationship mapping name #>];
    }
    return objectMappingComplete;
}



@end
