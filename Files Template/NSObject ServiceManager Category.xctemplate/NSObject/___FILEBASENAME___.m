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

+ (NSArray *)<# protocol prefix #>_responseDescriptors
{
    NSDictionary *pathPatternsKeyPathDictionary = @{@"<# path pattern #>" : @"<# key path #>"};
    NSMutableArray *responseDescriptorsArray = [NSMutableArray arrayWithCapacity:pathPatternsKeyPathDictionary.count];
    [pathPatternsKeyPathDictionary each:^(NSString *pathPattern, NSString *keyPath) {
        [responseDescriptorsArray addObject: [RKResponseDescriptor responseDescriptorWithMapping:[self <# protocol prefix #>_completeObjectMapping] method:RKRequestMethodAny pathPattern:pathPattern keyPath:keyPath statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)]];
    }];
    return responseDescriptorsArray;
}

@end
