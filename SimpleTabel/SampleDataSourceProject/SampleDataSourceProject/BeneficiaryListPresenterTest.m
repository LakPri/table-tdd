//
//  BeneficiaryListPresenterTest.m
//  SampleDataSourceProjectTests
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeneficiaryListPresenter.h"
#import "ServiceProtocol.h"
#import "BeneficiaryListViewProtocol.h"
#import "NetworkRepo.h"

@interface SpyPresenter:BeneficiaryListPresenter
@property (nonatomic, strong) NSString *status;
@end

@implementation SpyPresenter
@end

@interface SpyServiceProtocol:NSObject<ServiceProtocol>

@end

@implementation SpyServiceProtocol
- (void)onFailure:(NSDictionary *)failure {
    
}

- (void)onSuccess:(NSDictionary *)success {

}

@end
@interface SpyBeneficiaryListViewProtocol:NSObject<BeneficiaryListViewProtocol>
@property(nonatomic, strong) NSString *functionName;
@end

@implementation SpyBeneficiaryListViewProtocol
- (void)showAccountList {
    self.functionName = @"AccountList";
}

- (void)showNoAccountsToDisplay {
    self.functionName = @"NoAccounts";

}

- (void)showSomeThingWentWrong {
    self.functionName = @"SomeThingWentWrong";

}

- (void)showWaiting {
    self.functionName = @"Waiting";
}

@end


@interface BeneficiaryListPresenterTest : XCTestCase

@end

@implementation BeneficiaryListPresenterTest

-(void)testShowWaitingMessageWhenDataFetchingFromServer{
    SpyBeneficiaryListViewProtocol *viewProtocol = [[SpyBeneficiaryListViewProtocol alloc]init];
    BeneficiaryListPresenter *presenter = [[SpyPresenter alloc] initWithView:viewProtocol];
    
    SpyServiceProtocol *spyService = [[SpyServiceProtocol alloc]init];
    [presenter callService:spyService];
    
    NSString *expected = @"Waiting";
    NSString *actual = viewProtocol.functionName;
    XCTAssertTrue([expected isEqualToString:actual]);
    
}
-(void)testShowSomeThingWentWrongMessage{
    SpyBeneficiaryListViewProtocol *viewProtocol = [[SpyBeneficiaryListViewProtocol alloc]init];
    BeneficiaryListPresenter *presenter = [[SpyPresenter alloc] initWithView:viewProtocol];
    
    SpyServiceProtocol *spyService = [[SpyServiceProtocol alloc]init];
    [presenter callService:spyService];
    
    
    NSString *expected = @"SomeThingWentWrong";
    NSString *actual = viewProtocol.functionName;
    XCTAssertTrue([expected isEqualToString:actual]);
}

@end


