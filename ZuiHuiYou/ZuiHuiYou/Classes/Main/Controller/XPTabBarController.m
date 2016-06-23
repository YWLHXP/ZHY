//
//  XPTabBarController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/23.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPTabBarController.h"
#import "XPHomeTableController.h"
#import "XPDestinationTableController.h"
#import "XPMessageTableController.h"
#import "XPMeTableController.h"

@interface XPTabBarController ()

@end

@implementation XPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控制器
    
}

#pragma mark -添加子控制器
- (void)addAllChildViewController
{
    //首页
    XPHomeTableController *home = [[XPHomeTableController alloc] init];
    
    //目的地
    XPDestinationTableController *destination = [[XPDestinationTableController alloc] init];
    
    //消息
    XPMessageTableController *message = [[XPMessageTableController alloc] init];
    
    //我
    XPMeTableController *me = [[XPMeTableController alloc] init];
    
    
}

//#pragma mark -添加一个子控制器
//- (void)addOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title
//{
//    
//}

@end
