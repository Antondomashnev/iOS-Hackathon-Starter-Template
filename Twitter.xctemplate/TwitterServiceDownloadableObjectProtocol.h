//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@protocol TwitterServiceDownloadableObjectProtocol <NSObject>

@required
+ (NSArray *)tw_responseDescriptors;
+ (RKObjectMapping *)tw_objectMappingWithoutRelationships;
+ (RKObjectMapping *)tw_completeObjectMapping;

@end
