//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@protocol TwitterServicePostableObjectProtocol <NSObject>

@required
+ (RKRequestDescriptor *)tw_requestDescriptor;
+ (RKObjectMapping *)tw_postObjectMapping;
+ (void)tw_deleteStaticRequestMappingObjects;

@end
