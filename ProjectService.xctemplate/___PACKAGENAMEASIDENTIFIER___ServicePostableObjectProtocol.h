//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@protocol ___PROJECTNAMEASIDENTIFIER___ServicePostableObjectProtocol <NSObject>

@required
+ (RKRequestDescriptor *)___VARIABLE_categoryPrefix:identifier____requestDescriptor;
+ (RKObjectMapping *)___VARIABLE_categoryPrefix:identifier____postObjectMapping;
+ (void)___VARIABLE_categoryPrefix:identifier____deleteStaticRequestMappingObjects;

@end
