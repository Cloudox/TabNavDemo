//
//  OXMeViewController.m
//  TabNavDemo 我的界面
//
//  Created by csdc-iMac on 2017/5/25.
//  Copyright © 2017年 Cloudox. All rights reserved.
//

#import "OXMeViewController.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface OXMeViewController ()

@end

@implementation OXMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我";// 导航栏标题
    self.view.backgroundColor = [UIColor whiteColor];// 设置背景色
    
    // 添加一行文字
    UILabel *explainLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 200, SCREENWIDTH - 24, 20)];
    explainLabel.text = @"这是我的界面";
    explainLabel.textAlignment = NSTextAlignmentCenter;// 居中
    [self.view addSubview:explainLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
