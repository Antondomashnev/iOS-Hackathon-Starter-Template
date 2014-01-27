//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@protocol FacebookServicePostableObjectProtocol <NSObject>

@required
+ (RKRequestDescriptor *)fb_requestDescriptor;
+ (RKObjectMapping *)fb_postObjectMapping;
+ (void)fb_deleteStaticRequestMappingObjects;

@end
