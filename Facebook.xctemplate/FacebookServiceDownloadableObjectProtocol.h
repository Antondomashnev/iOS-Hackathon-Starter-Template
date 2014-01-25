//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@protocol FacebookServiceDownloadableObjectProtocol <NSObject>

@required
+ (NSArray *)fb_responseDescriptors;
+ (RKObjectMapping *)fb_objectMappingWithoutRelationships;
+ (RKObjectMapping *)fb_completeObjectMapping;

@end
