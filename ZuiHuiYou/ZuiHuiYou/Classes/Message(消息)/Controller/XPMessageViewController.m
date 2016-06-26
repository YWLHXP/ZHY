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
    [XPLoginViewController presentFromViewController:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"消息";
}

@end
