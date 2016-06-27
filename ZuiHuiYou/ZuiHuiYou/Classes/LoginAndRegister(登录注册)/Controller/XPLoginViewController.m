//
//  XPLoginViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/23.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPLoginViewController.h"
#import "XPRegisterViewController.h"
#import "XPYXViewController.h"
#import "XPForgetPwdViewController.h"

@interface XPLoginViewController ()
//手机输入框
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
//验证码输入框
@property (weak, nonatomic) IBOutlet UITextField *securityCodeField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;

@property (weak, nonatomic) IBOutlet UITextField *pwdField;

@property (weak, nonatomic) IBOutlet UIView *soonLoginView;
@property (weak, nonatomic) IBOutlet UIView *accountAndPwdView;
@end

@implementation XPLoginViewController

+(void)presentFromViewController:(UIViewController *)vc
{
    XPLoginViewController *loginVC = [[XPLoginViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    [vc presentViewController:nav animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置naviagtionBar的tintColor为黑色
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.navigationItem.title = @"登录";
    //设置导航栏
    [self setNavigation];
    
    //修改文本框光标显示位置
    [self moveTheCursorPosition];
    
    self.accountAndPwdView.hidden = YES;

}

#pragma mark -设置导航栏
- (void)setNavigation
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"wrong"] style:UIBarButtonItemStylePlain target:self action:@selector(shutDownLoginVC)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注册" style:UIBarButtonItemStylePlain target:self action:@selector(registerVC)];
}

#pragma mark -修改文本框光标显示位置
- (void)moveTheCursorPosition
{
    UIImageView  *leftPhone = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    leftPhone.frame = CGRectMake(0, 0, 10, 20);
    leftPhone.contentMode = UIViewContentModeCenter;
    self.phoneTextField.leftViewMode = UITextFieldViewModeAlways;
    self.phoneTextField.leftView = leftPhone;
    
    UIImageView  *leftSecurityCode = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    leftSecurityCode.frame = CGRectMake(0, 0, 10, 20);
    leftSecurityCode.contentMode = UIViewContentModeCenter;
    self.securityCodeField.leftViewMode = UITextFieldViewModeAlways;
    self.securityCodeField.leftView = leftSecurityCode;
    
    UIImageView  *phone = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    leftPhone.frame = CGRectMake(0, 0, 10, 20);
    leftPhone.contentMode = UIViewContentModeCenter;
    self.phoneField.leftViewMode = UITextFieldViewModeAlways;
    self.phoneField.leftView = phone;
    
    UIImageView  *pwd = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weizhi"]];
    leftSecurityCode.frame = CGRectMake(0, 0, 10, 20);
    leftSecurityCode.contentMode = UIViewContentModeCenter;
    self.pwdField.leftViewMode = UITextFieldViewModeAlways;
    self.pwdField.leftView = pwd;

}

#pragma mark -关闭界面
- (void)shutDownLoginVC
{
    [self.view endEditing:YES];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -注册
- (void)registerVC
{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[XPRegisterViewController alloc] init]];
    [self.navigationController presentViewController:nav animated:YES completion:nil];
}

#pragma mark -收键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

#pragma mark -快速注册
- (IBAction)soonRegister:(id)sender {
    XPRegisterViewController *registerVC = [[XPRegisterViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:registerVC];
    [self.navigationController presentViewController:nav animated:YES completion:nil];
    
}

#pragma mark -账号密码登录
- (IBAction)accountAndPasswordLogin:(id)sender {
    self.accountAndPwdView.hidden = NO;
    self.soonLoginView.hidden = YES;
}

#pragma mark -快捷登录
- (IBAction)soonLogin:(id)sender {
    self.accountAndPwdView.hidden = YES;
    self.soonLoginView.hidden = NO;
}

#pragma mark -游侠登录
- (IBAction)yxBtn:(id)sender {
    [self.navigationController presentViewController:[[UINavigationController alloc] initWithRootViewController:[[XPYXViewController alloc] init]] animated:YES completion:nil];
}

#pragma mark -忘记密码
- (IBAction)forgetPwd:(id)sender {
    [self.navigationController presentViewController:[[UINavigationController alloc] initWithRootViewController:[[XPForgetPwdViewController alloc] init]] animated:YES completion:nil];
}

@end
