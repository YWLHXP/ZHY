//
//  XPWelcomeViewController.m
//  ZuiHuiYou
//
//  Created by dragon on 16/6/26.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPWelcomeViewController.h"
#import "XPTabBarController.h"

@interface XPWelcomeViewController ()<UIScrollViewDelegate>
/** scrollView */
@property (nonatomic, strong) UIScrollView *scrollView;
/** pageControl */
@property (nonatomic, strong) UIPageControl *pageControl;
@end

@implementation XPWelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configScrollView];
    self.scrollView.delegate = self;
    [self configPageControl];
}

- (void)configScrollView
{
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize = CGSizeMake(4 * XPScreenWidth, self.view.bounds.size.height);
    
    for (int i = 0; i < 4; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i * XPScreenWidth, 0, XPScreenWidth, self.view.bounds.size.height)];
        NSString *str = [NSString stringWithFormat:@"open%d.jpg",i + 1];
        imageView.image = [UIImage imageNamed:str];
        if (i == 3) {
            imageView.userInteractionEnabled = YES;
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
            btn.frame = CGRectMake(XPScreenWidth/2 - 130, XPScreenHeight * 0.8, 260, 70);
            [btn setTitle:@"开启新世界" forState:UIControlStateNormal];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [btn setBackgroundColor:[UIColor colorWithRed:252/255.0 green:82/255.0 blue:47/255.0 alpha:1]];
            btn.titleLabel.font = [UIFont systemFontOfSize:18];
            btn.titleLabel.textAlignment = NSTextAlignmentCenter;
            [btn addTarget:self action:@selector(enter:) forControlEvents:UIControlEventTouchUpInside];
            [imageView addSubview:btn];
        }
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    //关闭弹性
    self.scrollView.bounces = NO;
    [self.view addSubview:self.scrollView];
}

-(void)enter:(UIButton *)sender
{
    XPTabBarController *tabBarVC = [[XPTabBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tabBarVC;
}

-(void)configPageControl
{
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame = CGRectMake(XPScreenWidth - 90, XPScreenHeight - 30, 100, 30);
    self.pageControl.numberOfPages = 4;//当前点数
    self.pageControl.currentPage = 0;
    self.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    self.pageControl.userInteractionEnabled = NO;
    [self.view addSubview:self.pageControl];
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger pageNum = round(self.scrollView.contentOffset.x / self.scrollView.frame.size.width);
    self.pageControl.currentPage = pageNum;
}

@end
