//
//  OXHomeViewController.m
//  TabNavDemo 首页主界面
//
//  Created by csdc-iMac on 2017/5/25.
//  Copyright © 2017年 Cloudox. All rights reserved.
//

#import "OXHomeViewController.h"
#import "OXHomeDetailViewController.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface OXHomeViewController ()

@end

@implementation OXHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";// 导航栏标题
    self.view.backgroundColor = [UIColor whiteColor];// 设置背景色
    
    // 添加一行文字
    UILabel *explainLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 200, SCREENWIDTH - 24, 20)];
    explainLabel.text = @"这是首页";
    explainLabel.textAlignment = NSTextAlignmentCenter;// 居中
    [self.view addSubview:explainLabel];
    
    // 添加按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake((SCREENWIDTH-100)/2, 250, 100, 20)];
    [btn setTitle:@"跳转详情" forState:UIControlStateNormal];// 标题
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];// 标题颜色
    [btn addTarget:self action:@selector(clikBtn) forControlEvents:UIControlEventTouchUpInside];// 响应方法
    [self.view addSubview:btn];
}

// 按钮响应方法
- (void)clikBtn {
    OXHomeDetailViewController *detailVC = [[OXHomeDetailViewController alloc] init];// 创建详情界面对象
    [self.navigationController pushViewController:detailVC animated:YES];// 利用导航栏跳转
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
