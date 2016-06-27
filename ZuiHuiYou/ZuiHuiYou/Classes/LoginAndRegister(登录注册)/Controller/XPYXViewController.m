//
//  XPYXViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/27.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPYXViewController.h"

@interface XPYXViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *pwdField;

@end

@implementation XPYXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"游侠登录";
    //设置naviagtionBar的tintColor为黑色
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"wrong"] style:UIBarButtonItemStylePlain target:self action:@selector(shutDownLoginVC)];
    
    [self moveTheCursorPosition];
}


#pragma mark -修改文本框光标显示位置
- (void)moveTheCursorPosition
{
    UIImageView  *phone = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    phone.frame = CGRectMake(0, 0, 10, 20);
    phone.contentMode = UIViewContentModeCenter;
    self.emailField.leftViewMode = UITextFieldViewModeAlways;
    self.emailField.leftView = phone;
    
    UIImageView  *pwd = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    pwd.frame = CGRectMake(0, 0, 10, 20);
    pwd.contentMode = UIViewContentModeCenter;
    self.pwdField.leftViewMode = UITextFieldViewModeAlways;
    self.pwdField.leftView = pwd;
    
}

#pragma mark -关闭界面
- (void)shutDownLoginVC
{
    [self.view endEditing:YES];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
