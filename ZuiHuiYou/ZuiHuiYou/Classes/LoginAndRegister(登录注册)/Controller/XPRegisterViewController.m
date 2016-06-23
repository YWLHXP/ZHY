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
    
    //左中右全部是 navigationBar的子视图，父视图的 tintColor 会影响所有子视图的渲染，而 naviagtionBar的tintColor属性默认是蓝的
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"wrong"] style:UIBarButtonItemStylePlain target:self action:@selector(shutDownRegisterVC)];
}

- (void)shutDownRegisterVC
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
