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

@protocol ___PROJECTNAMEASIDENTIFIER___ServiceDownloadableManagedObjectProtocol <NSObject>

@required
+ (NSArray *)___VARIABLE_categoryPrefix:identifier____managedObjectResponseDescriptorsInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)___VARIABLE_categoryPrefix:identifier____entityMappingWithoutRelationshipsInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)___VARIABLE_categoryPrefix:identifier____completeEntityMappingInStore:(RKManagedObjectStore *)store;
+ (void)___VARIABLE_categoryPrefix:identifier____deleteStaticResponseEntityMappingObjects;

@end
