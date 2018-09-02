//
//  WeatherViewController.m
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "WeatherViewController.h"
#import "ViewController.h"
#import "WaitingRepo.h"
#import "SomethingWentWrongRepo.h"
#import "BeneficiaryListPresenter.h"

@interface WeatherViewController ()
@property(nonatomic, strong) ViewController *vc;
@property (nonatomic, assign) NSUInteger position;
@property (nonatomic, strong) BeneficiaryListPresenter * listPresenter;

@end

@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    self.listPresenter = [[BeneficiaryListPresenter alloc]initWithView:self];
    
    [self.view addGestureRecognizer:tap];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.txtCommunication.text = @"+++/---/---/+++";
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(textFieldDidChange:)
     name:UITextFieldTextDidChangeNotification
     object:nil];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
}

- (void)textFieldDidChange:(NSNotification *)note
{
    UITextField *textField = note.object;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showCustomCell:(id)sender {

}
- (IBAction)showDefaultCell:(id)sender {
    [self.listPresenter callService:self];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSString * proposedNewString ;
    if(range.location == 4 && ![string isEqualToString: @""]){
        proposedNewString = [[textField text] stringByReplacingCharactersInRange:range withString:string];

    }
    textField.text = proposedNewString;
    return NO;
}
-(void)dismissKeyboard
{
    [self.txtCommunication resignFirstResponder];
}
-(void)showWaiting{
    WaitingRepo *waitingRepo = [[WaitingRepo alloc]init];
    self.vc = [[ViewController alloc]initWithRepo:waitingRepo];
    [self.navigationController pushViewController:self.vc animated:YES];
}

- (void)showAccountList {
    
}

- (void)showNoAccountsToDisplay {
    
}

- (void)showSomeThingWentWrong {
    SomethingWentWrongRepo *errorRepo = [[SomethingWentWrongRepo alloc]init];
    self.vc = [[ViewController alloc]initWithRepo:errorRepo];
    [self.navigationController pushViewController:self.vc animated:YES];
}

-(void)showSomethingWentWrong{
    SomethingWentWrongRepo *somethingWentWrongRepo = [[SomethingWentWrongRepo alloc]init];
    self.vc = [[ViewController alloc]initWithRepo:somethingWentWrongRepo];
    [self.navigationController pushViewController:self.vc animated:YES];
}


@end
