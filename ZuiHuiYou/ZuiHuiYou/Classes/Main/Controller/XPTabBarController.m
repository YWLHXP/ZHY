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
#import "XPNavigationController.h"

@interface XPTabBarController ()

@end

@implementation XPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addchildViewControllers];
}

- (void)addchildViewControllers
{
    XPHomeTableController *home = [XPHomeTableController new];
    [self addChildViewController:home];
    
    XPMessageViewController *message = [XPMessageViewController new];
    [self addChildViewController:message];
    
    XPMeTableController *me = [XPMeTableController new];
    [self addChildViewController:me];
}

@end
