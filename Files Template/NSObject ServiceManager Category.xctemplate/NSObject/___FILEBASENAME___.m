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

static RKEntityMapping *inviteMappingWithoutRelationships;
+ (RKEntityMapping *)CQ_entityMappingWithoutRelationshipsInStore:(RKManagedObjectStore *)store{
    
    if(!inviteMappingWithoutRelationships){
        
        inviteMappingWithoutRelationships = [RKEntityMapping mappingForEntityForName:@"CQInvite" inManagedObjectStore: store];
        RKEntityMapping *parentMapping = [[self superclass] CQ_entityMappingWithoutRelationshipsInStore:store];
        [inviteMappingWithoutRelationships addAttributeMappingsFromArray:[[NSArray alloc] initWithArray:parentMapping.attributeMappings copyItems:YES]];
        [inviteMappingWithoutRelationships addAttributeMappingsFromDictionary:@{
                                                                                @"created_at" : @"time"}];
        [inviteMappingWithoutRelationships setIdentificationAttributes: @[CirqleDefaultPrimaryKeyAtribute]];
    }
    
    return inviteMappingWithoutRelationships;
}

@end
