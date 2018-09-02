//
//  TableDataSource.h
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Repository.h"

@interface TableDataSource : NSObject<UITableViewDataSource>
@property (nonatomic, strong) NSArray * myData;
-(id)initWithRepo:(id<RepositoryDelegate>)repo;
@end
