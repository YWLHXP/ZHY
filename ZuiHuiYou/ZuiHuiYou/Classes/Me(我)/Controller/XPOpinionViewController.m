//
//  XPOpinionViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/27.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPOpinionViewController.h"
#import "XPLoginViewController.h"

@interface XPOpinionViewController ()

@end

@implementation XPOpinionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"用户反馈";
}

- (IBAction)login:(id)sender {
    [XPLoginViewController presentFromViewController:self];
}

#pragma mark -隐藏状态栏
- (BOOL)prefersStatusBarHidden
{
    return YES; // 返回NO表示要显示，返回YES将hiden
}
@end
