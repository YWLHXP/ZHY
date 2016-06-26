//
//  XPMeTableController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/24.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPMeTableController.h"
#import "XPLoginViewController.h"

@interface XPMeTableController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *myOrder;
@property (strong, nonatomic) IBOutlet UITableViewCell *myCar;
@property (strong, nonatomic) IBOutlet UITableViewCell *myBox;
@property (strong, nonatomic) IBOutlet UITableViewCell *myYouHui;
@property (strong, nonatomic) IBOutlet UITableViewCell *myShare;
@property (strong, nonatomic) IBOutlet UITableViewCell *myQr;
@property (strong, nonatomic) IBOutlet UITableViewCell *mySetting;

@end

@implementation XPMeTableController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableHeaderView = [self tableHeaderView];

}

#pragma mark -设置表头
- (UIView *)tableHeaderView
{
    
    UIView *totalView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, XPScreenWidth, 210)];
    
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0,XPScreenWidth, 180);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:view.frame];
    imageView.image = [UIImage imageNamed:@"bg_icon.jpg"];
    [view addSubview:imageView];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 180,XPScreenWidth, 30)];
    label.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1];
    [self addHeadAndBtn:view];
    
    [totalView addSubview:view];
    [totalView addSubview:label];
    
    return totalView;
}

#pragma mark -设置表头的子控件
- (void)addHeadAndBtn:(UIView *)view
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(XPScreenWidth/2 - 35, 60, 70, 70)];
    imageView.image = [UIImage imageNamed:@"defaultIcon.jpg"];
    imageView.layer.cornerRadius = imageView.bounds.size.width/2;
    imageView.layer.masksToBounds = YES;
    imageView.layer.borderWidth = 3;
    imageView.layer.borderColor = [UIColor colorWithRed:41/255.0 green:160/255.0 blue:210/255.0 alpha:0.8].CGColor;
    [view addSubview:imageView];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(XPScreenWidth/2 - 35, 145, 70, 20)];
    [btn setTitle:@"立即登录" forState:UIControlStateNormal];
    btn.titleLabel.font  = [UIFont systemFontOfSize: 12];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:btn];
}

- (void)btnAction
{
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:[[XPLoginViewController alloc] init]];
    [self presentViewController:navi animated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 2)
    {
        return 1;
    }
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    switch (indexPath.section) {
        case 0:
            if (indexPath.row == 0) {
                return self.myOrder;
            }else if(indexPath.row == 1)
            {
                return self.myCar;
            }else
            {
                return self.myBox;
            }
            break;
        case 1:
            if (indexPath.row == 0) {
                return self.myYouHui;
            }else if(indexPath.row == 1)
            {
                return self.myShare;
            }else
            {
                return self.myQr;
            }
            break;
        default:
            return self.mySetting;
            break;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
        {
            [XPLoginViewController presentFromViewController:self];
        }
            break;
        case 1:
            if (indexPath.row == 0) {
               [XPLoginViewController presentFromViewController:self];
            }else if(indexPath.row == 1)
            {
               [XPLoginViewController presentFromViewController:self];
            }else
            {
                return ;
            }
            break;
        default:
            
            break;
    }

}

@end
