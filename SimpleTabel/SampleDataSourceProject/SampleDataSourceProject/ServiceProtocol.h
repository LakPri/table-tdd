//
//  ServiceProtocol.h
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ServiceProtocol
- (void)onSuccess:(NSDictionary*)success;
- (void)onFailure:(NSDictionary*)failure;
@end

