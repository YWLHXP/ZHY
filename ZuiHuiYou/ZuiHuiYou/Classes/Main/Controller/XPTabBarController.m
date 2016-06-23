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
#import "XPMessageViewController.h"
#import "XPMeTableController.h"

@interface XPTabBarController ()

@end

@implementation XPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控制器
    [self addAllChildViewController];
    
}

#pragma mark -添加子控制器
- (void)addAllChildViewController
{
    //首页
    XPHomeTableController *home = [[XPHomeTableController alloc] init];
    
    [self addOneChildViewController:home image:[UIImage imageNamed:@"earth72"] selImage:[UIImage imageNamed:@"earth72_s"]];
    home.title = @"首页";
    
    //目的地
    XPDestinationTableController *destination = [[XPDestinationTableController alloc] init];
    [self addOneChildViewController:destination image:[UIImage imageNamed:@"earth135"] selImage:[UIImage imageNamed:@"earth135_s"]];
    destination.title = @"目的地";
    
    //消息
    XPMessageViewController *message = [[XPMessageViewController alloc] init];
    [self addOneChildViewController:message image:[UIImage imageNamed:@"message5"] selImage:[UIImage imageNamed:@"message5_s"]];
    message.title = @"消息";
    
    //我
    XPMeTableController *me = [[XPMeTableController alloc] init];
    [self addOneChildViewController:me image:[UIImage imageNamed:@"male207"] selImage:[UIImage imageNamed:@"male207_s"]];
    me.title = @"我";
    
}

#pragma mark -添加一个子控制器
- (void)addOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage
{
//    vc.navigationItem.title = title;
    vc.tabBarItem.image = image;
    UIImage *originalImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = originalImage;
    [self addChildViewController:vc];
    //文字颜色
    self.tabBar.tintColor = [UIColor orangeColor];
}

@end
