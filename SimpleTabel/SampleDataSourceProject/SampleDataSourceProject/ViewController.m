//
//  ViewController.m
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "ViewController.h"
#import "Repository.h"
#import "WaitingRepo.h"
#import "SomethingWentWrongRepo.h"

@interface ViewController ()
@property (nonatomic, strong) id<RepositoryDelegate> repo;

@end

@implementation ViewController

-(id)initWithRepo:(id<RepositoryDelegate>)repoDelegate
{
    if (self = [super init]){
        self.repo = repoDelegate;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
   // self.repo = [[SomethingWentWrongRepo alloc]init];
    self.tableDataStore = [[TableDataSource alloc]initWithRepo:self.repo];
  
    self.tableView.dataSource =  self.tableDataStore ;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
