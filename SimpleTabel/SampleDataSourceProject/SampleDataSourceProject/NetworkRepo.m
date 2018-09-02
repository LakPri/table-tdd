//
//  NetworkRepo.m
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "NetworkRepo.h"

@implementation NetworkRepo
-(void)makeNetWorkCall:(NSString*)url withService:(id<ServiceProtocol>)serviceProtocol{
    [serviceProtocol onFailure:@{@"hello":@"hello"}];
}
@end
