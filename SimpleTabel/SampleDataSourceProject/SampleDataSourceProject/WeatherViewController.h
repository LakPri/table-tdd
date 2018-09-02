//
//  WeatherViewController.h
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BeneficiaryListViewProtocol.h"
#import "ServiceProtocol.h"
@interface WeatherViewController : UIViewController<BeneficiaryListViewProtocol>
- (IBAction)showCustomCell:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *showDefaultCell;
- (IBAction)showDefaultCell:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtCommunication;

@end
