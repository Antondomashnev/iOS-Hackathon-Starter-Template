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

@protocol FacebookServiceDownloadableManagedObjectProtocol <NSObject>

@required
+ (NSArray *)fb_managedObjectResponseDescriptorsInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)fb_entityMappingWithoutRelationshipsInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)fb_completeEntityMappingInStore:(RKManagedObjectStore *)store;
+ (void)fb_deleteStaticResponseEntityMappingObjects;

@end
