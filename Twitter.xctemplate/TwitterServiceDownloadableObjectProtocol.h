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

@protocol TwitterServicePostableManagedObjectProtocol <NSObject>

@required
+ (RKRequestDescriptor *)tw_managedObjectRequestDescriptor;
+ (RKEntityMapping *)tw_postManagedObjectMappingInStore:(RKManagedObjectStore *)store;
+ (void)tw_deleteStaticRequestEntityMappingObjects;

@end
