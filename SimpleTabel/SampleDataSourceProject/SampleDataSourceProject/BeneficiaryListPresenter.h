//
//  BeneficiaryListPresenter.h
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceProtocol.h"
#import "BeneficiaryListViewProtocol.h"

@interface BeneficiaryListPresenter : NSObject<ServiceProtocol>

-(void)callService:(id<ServiceProtocol>)serviceDelegate;
-(id)initWithView:(id<BeneficiaryListViewProtocol>) viewDelegate;
@end
