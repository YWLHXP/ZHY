//
//  XPMessageViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/23.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPMessageViewController.h"
#import "XPLoginViewController.h"

@interface XPMessageViewController ()

@end

@implementation XPMessageViewController
- (IBAction)loginBtn:(UIButton *)sender {
    
    XPLoginViewController *loginVC = [[XPLoginViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"消息";
}

@end
