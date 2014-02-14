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

@protocol TwitterServicePostableManagedObjectProtocol <NSObject>

@required
+ (RKRequestDescriptor *)tw_managedObjectRequestDescriptorInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)tw_postManagedObjectMappingInStore:(RKManagedObjectStore *)store;
+ (void)tw_deleteStaticRequestEntityMappingObjects;

@end
