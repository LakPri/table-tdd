//
//  NetworkRepo.h
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceProtocol.h"

@interface NetworkRepo : NSObject
-(void)makeNetWorkCall:(NSString*)url withService:(id<ServiceProtocol>)serviceProtocol;
@end
