//
//  ViewController.h
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableDataSource.h"
typedef enum{
  TypeDefault,
  TypeCustom
}TypeOfCell;



@interface ViewController : UIViewController
@property(nonatomic,strong) IBOutlet UITableView * tableView;
@property (nonatomic, strong) TableDataSource * tableDataStore;
@property (nonatomic, assign) TypeOfCell  cellType;
-(id)initWithRepo:(id<RepositoryDelegate>)repoDelegate;
@end

