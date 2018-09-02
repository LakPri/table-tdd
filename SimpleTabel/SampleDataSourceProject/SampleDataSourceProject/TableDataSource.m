//
//  TableDataSource.m
//  SampleDataSourceProject
//
//  Created by Lakshmi on 9/2/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "TableDataSource.h"
#import "WaitingRepo.h"
#import "Repository.h"
#import "SomethingWentWrongRepo.h"


@interface TableDataSource()
@property (nonatomic, strong) id<RepositoryDelegate> repo;

@end
@implementation TableDataSource

-(id)initWithRepo:(id<RepositoryDelegate>)repo
{
    
    if (self=[super init]) {
        self.repo = repo;
        self.myData = [self.repo getbjects];
    }
    
    return self;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"%s", __FUNCTION__);
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"tvcItems"];
    
    if(cell==nil) {
        NSLog(@"%s - Creating new cell", __FUNCTION__);
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier: @"tvcItems"];
    }
    [cell.textLabel setText:[self.myData objectAtIndex:[indexPath row]]];
    return cell;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.myData count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 64;
}

@end
