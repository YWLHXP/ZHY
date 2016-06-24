//
//  XPRegisterViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/23.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPRegisterViewController.h"

@interface XPRegisterViewController ()

@end

@implementation XPRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"手机注册";
    
    //设置naviagtionBar的tintColor为黑色
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"wrong"] style:UIBarButtonItemStylePlain target:self action:@selector(shutDownRegisterVC)];
}

#pragma mark -关闭界面
- (void)shutDownRegisterVC
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
