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
@class RKRequestDescriptor;

@protocol ___PROJECTNAMEASIDENTIFIER___ServicePostableManagedObjectProtocol <NSObject>

@required
+ (RKRequestDescriptor *)___VARIABLE_categoryPrefix:identifier____managedObjectRequestDescriptorInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)___VARIABLE_categoryPrefix:identifier____postManagedObjectMappingInStore:(RKManagedObjectStore *)store;
+ (void)___VARIABLE_categoryPrefix:identifier____deleteStaticRequestEntityMappingObjects;

@end
