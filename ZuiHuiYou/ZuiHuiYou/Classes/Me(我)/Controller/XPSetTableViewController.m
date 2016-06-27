//
//  XPSetTableViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/26.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPSetTableViewController.h"
#import "XPOpinionViewController.h"
#import "XPWelcomeViewController.h"

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
    self.tableView.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1];
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


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        NSLog(@"跳到一个网页");
    }else if(indexPath.row == 1)
    {
        [self.navigationController pushViewController:[XPOpinionViewController new] animated:YES];
    }else if(indexPath.row == 2)
    {
        NSLog(@"欢迎");
    }
}

#pragma mark -显示导航栏
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:nil];
}

#pragma mark -隐藏状态栏
- (BOOL)prefersStatusBarHidden
{
    return YES; // 返回NO表示要显示，返回YES将hiden
}

@end
