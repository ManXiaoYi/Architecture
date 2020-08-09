//
//  ViewController.m
//  MVCVarietyDemo
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "ViewController.h"
#import "MYAppView.h"
#import "MYAppModel.h"

@interface ViewController () <MYAppViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 创建view
    MYAppView *appView = [[MYAppView alloc] init];
    appView.frame = CGRectMake(100, 100, 100, 150);
    appView.delegate = self;
    [self.view addSubview:appView];

    // 加载模型数据
    MYAppModel *appModel = [[MYAppModel alloc] init];
    appModel.name = @"QQ";
    appModel.image = @"QQ";

    // TODO: 变种之后：设置数据到view上
    appView.appModel = appModel;
}

#pragma mark -
#pragma mark - MYAppViewDelegate
- (void)appViewClicked:(MYAppView *)appView {
    NSLog(@"控制器监听到了appView的点击");
}

@end
