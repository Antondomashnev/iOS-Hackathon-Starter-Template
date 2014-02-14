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

@protocol FacebookServicePostableManagedObjectProtocol <NSObject>

@required
+ (RKRequestDescriptor *)fb_managedObjectRequestDescriptorInStore:(RKManagedObjectStore *)store;
+ (RKEntityMapping *)fb_postManagedObjectMappingInStore:(RKManagedObjectStore *)store;
+ (void)fb_deleteStaticRequestEntityMappingObjects;

@end
