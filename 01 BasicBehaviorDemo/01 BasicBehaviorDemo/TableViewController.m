//
//  TableViewController.m
//  01 BasicBehaviorDemo
//
//  Created by wang xinkai on 15/9/5.
//  Copyright (c) 2015年 wxk. All rights reserved.
//

#import "TableViewController.h"
#import "DynamicViewController.h"
@interface TableViewController ()
{
//    数据
    NSArray *_dataList;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"UIDynamics";
    
    NSDictionary *item0 = @{@"title":@"UIGravityBehavior",@"viewClass":@"GravityView"};
    NSDictionary *item1 = @{@"title":@"UICollisionBehavior",@"viewClass":@"CollisionView"};
    NSDictionary *item2 = @{@"title":@"UIAttachmentBehavior",@"viewClass":@"AttachmentView"};
    NSDictionary *item3 = @{@"title":@"UISnapBehavior",@"viewClass":@"SnapView"};

    
    _dataList = @[item0,item1,item2,item3];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static  NSString * identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
        
    }
    cell.textLabel.text = [_dataList[indexPath.row] objectForKey:@"title"];
    cell.detailTextLabel.text = [_dataList[indexPath.row] objectForKey:@"viewClass"];

    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    DynamicViewController *vc = [[DynamicViewController alloc] init];
    
    vc.type = (int)indexPath.row;
    
    vc.viewClass = [[_dataList objectAtIndex:indexPath.row] objectForKey:@"viewClass"];
    
    [self.navigationController pushViewController:vc animated:YES];
    

}


@end
