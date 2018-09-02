//
//  BeneficiaryListPresenter.m
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "BeneficiaryListPresenter.h"
#import "NetworkRepo.h"

@interface BeneficiaryListPresenter()
@property (nonatomic, strong) id<BeneficiaryListViewProtocol> listView;
@property (nonatomic, strong) NetworkRepo *networkRepo;

@end

@implementation BeneficiaryListPresenter
-(void)callService:(id<ServiceProtocol>)serviceDelegate{
    self.networkRepo = [[NetworkRepo alloc]init];
    [self.listView showWaiting];
    [self.networkRepo makeNetWorkCall:@"hello" withService:self];
    
}
-(id)initWithView:(id<BeneficiaryListViewProtocol>) viewDelegate{
    if(self = [super init]){
        self.listView = viewDelegate;
    }
    return  self;
}

- (void)onFailure:(NSDictionary *)failure {
    [self.listView showSomeThingWentWrong];
}

- (void)onSuccess:(NSDictionary *)success {
    
}

@end


