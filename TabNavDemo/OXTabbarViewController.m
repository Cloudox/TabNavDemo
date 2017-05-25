//
//  OXTabbarViewController.m
//  TabNavDemo 标签栏框架
//
//  Created by csdc-iMac on 2017/5/25.
//  Copyright © 2017年 Cloudox. All rights reserved.
//

#import "OXTabbarViewController.h"
#import "OXHomeViewController.h"
#import "OXCollectViewController.h"
#import "OXMeViewController.h"

@interface OXTabbarViewController ()

@end

@implementation OXTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 首页
    OXHomeViewController *homeVC = [[OXHomeViewController alloc] init];
    homeVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];// 设置系统自带的标签栏风格
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];// 首页导航框架
    
    // 收藏
    OXCollectViewController *collectVC = [[OXCollectViewController alloc] init];
    collectVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:2];// 设置系统自带的标签栏风格
    UINavigationController *collectNav = [[UINavigationController alloc] initWithRootViewController:collectVC];// 收藏导航框架
    
    // 我的
    OXMeViewController *meVC = [[OXMeViewController alloc] init];
    meVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:3];// 设置系统自带的标签栏风格
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVC];// 我的导航框架
    
    // 给标签栏添加标题及对应的模块
    // 第一种方法：
    [self addChildViewController:homeNav];
    [self addChildViewController:collectNav];
    [self addChildViewController:meNav];
    // 第二种方法：
//    self.viewControllers = @[homeNav, collectNav, meNav];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
