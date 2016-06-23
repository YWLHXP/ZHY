//
//  XPLoginViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/23.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPLoginViewController.h"
#import "XPRegisterViewController.h"

static XPLoginViewController *_loginVC;
@interface XPLoginViewController ()

@end

@implementation XPLoginViewController

+(XPLoginViewController *)sharedLoginVC
{
    if (!_loginVC) {
        
    }
    return _loginVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //左中右全部是 navigationBar的子视图，父视图的 tintColor 会影响所有子视图的渲染，而 naviagtionBar的tintColor属性默认是蓝的
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    [self setNavigation];
}

- (void)setNavigation
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"wrong"] style:UIBarButtonItemStylePlain target:self action:@selector(shutDownLoginVC)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注册" style:UIBarButtonItemStylePlain target:self action:@selector(registerVC)];
}

- (void)shutDownLoginVC
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (void)registerVC
{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[XPRegisterViewController alloc] init]];
    [self.navigationController presentViewController:nav animated:YES completion:nil];
}
@end
