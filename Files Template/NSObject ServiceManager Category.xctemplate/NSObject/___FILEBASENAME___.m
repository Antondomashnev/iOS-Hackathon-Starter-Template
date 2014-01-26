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

#pragma mark - ___VARIABLE_categoryName:identifier___DownloadableObjectProtocol

static RKObjectMapping *objectMappingWithoutRelationships = nil;
+ (RKObjectMapping *)<# protocol prefix #>_objectMappingWithoutRelationships
{
    if(!objectMappingWithoutRelationships)
    {
        objectMappingWithoutRelationships = [RKObjectMapping mappingForClass:[___VARIABLE_categoryClass:identifier___ class]];
        [objectMappingWithoutRelationships addAttributeMappingsFromDictionary:<# mapping dictionary #>];
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

+ (void)<# protocol prefix #>_deleteStaticResponseMappingObjects
{
    objectMappingComplete = nil;
    objectMappingWithoutRelationships = nil;
}

/*
 If this object should implement ___VARIABLE_categoryName:identifier___PostableObjectProtocol please use PostableObjectProtocol snippet
 */

static RKObjectMapping *postObjectMapping = nil;
+ (RKObjectMapping *)___VARIABLE_categoryPrefix:identifier____postObjectMapping
{
    if(!postObjectMapping)
    {
        postObjectMapping = [RKObjectMapping mappingForClass:[self class]];
        [postObjectMapping addAttributeMappingsFromDictionary:<# mapping dictionary #>];
    }
    return postObjectMapping;
}

+ (RKRequestDescriptor *)<# protocol prefix #>_requestDescriptor
{
    return [RKRequestDescriptor requestDescriptorWithMapping:[[self class] <# protocol prefix #>_postObjectMapping] objectClass:[self class] rootKeyPath:@"<# root key path #>" method:RKRequestMethodPOST];
}

+ (void)<# protocol prefix #>_deleteStaticRequestMappingObjects
{
    postObjectMapping = nil;
}

@end
