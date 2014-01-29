//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@class RKEntityMapping;
@class RKManagedObjectStore;

@protocol TwitterServiceDownloadableManagedObjectProtocol <NSObject>

@required
+ (NSArray *)tw_managedObjectResponseDescriptors;
+ (RKEntityMapping *)tw_entityMappingWithoutRelationshipsInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)tw_completeEntityMappingInStore:(RKManagedObjectStore *)store;
+ (void)tw_deleteStaticResponseEntityMappingObjects;
@end
