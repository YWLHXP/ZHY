//
//  XPForgetPwdViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/27.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPForgetPwdViewController.h"

@interface XPForgetPwdViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *xinPwdField;
@property (weak, nonatomic) IBOutlet UITextField *yanzhengField;


@end

@implementation XPForgetPwdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"更改密码";
    //设置naviagtionBar的tintColor为黑色
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"wrong"] style:UIBarButtonItemStylePlain target:self action:@selector(shutDownLoginVC)];
    //修改文本框光标显示位置
    [self moveTheCursorPosition];
}

#pragma mark -修改文本框光标显示位置
- (void)moveTheCursorPosition
{
    UIImageView  *leftPhone = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    leftPhone.frame = CGRectMake(0, 0, 98, 20);
    leftPhone.contentMode = UIViewContentModeCenter;
    self.phoneField.leftViewMode = UITextFieldViewModeAlways;
    self.phoneField.leftView = leftPhone;
    
    UIImageView  *leftSecurityCode = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    leftSecurityCode.frame = CGRectMake(0, 0, 98, 20);
    leftSecurityCode.contentMode = UIViewContentModeCenter;
    self.xinPwdField.leftViewMode = UITextFieldViewModeAlways;
    self.xinPwdField.leftView = leftSecurityCode;
    
    UIImageView  *securityCode = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    securityCode.frame = CGRectMake(0, 0, 98, 20);
    securityCode.contentMode = UIViewContentModeCenter;
    self.yanzhengField.leftViewMode = UITextFieldViewModeAlways;
    self.yanzhengField.leftView = securityCode;
}


#pragma mark -关闭界面
- (void)shutDownLoginVC
{
    [self.view endEditing:YES];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
