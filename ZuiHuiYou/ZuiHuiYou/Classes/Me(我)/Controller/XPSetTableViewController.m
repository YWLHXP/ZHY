//
//  XPSetTableViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/26.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPSetTableViewController.h"

@interface XPSetTableViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *score;
@property (strong, nonatomic) IBOutlet UITableViewCell *advice;
@property (strong, nonatomic) IBOutlet UITableViewCell *lunch;
@property (strong, nonatomic) IBOutlet UITableViewCell *banben;

@end

@implementation XPSetTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"设置";
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    if (indexPath.row == 0) {
        return self.score;
    }else if(indexPath.row == 1)
    {
        return self.advice;
    }else if(indexPath.row == 2)
    {
        return self.lunch;
    }
    return self.banben;
}

@end
