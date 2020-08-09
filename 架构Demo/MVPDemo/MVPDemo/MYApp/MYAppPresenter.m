//
//  MYAppPresenter.m
//  MYAPPDemo
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "MYAppPresenter.h"
#import "MYAppView.h"
#import "MYAppModel.h"

@interface MYAppPresenter() <MYAppViewDelegate>

// 拥有weak类型的控制器
@property (nonatomic, weak) UIViewController *controller;

@end

@implementation MYAppPresenter

- (instancetype)initWithController:(UIViewController *)controller {
    self = [super init];
    if (self) {
        self.controller = controller;
        
        // 创建View
        MYAppView *appView = [[MYAppView alloc] init];
        appView.frame = CGRectMake(100, 100, 100, 150);
        appView.delegate = self;
        [controller.view addSubview:appView];
        
        // 加载模型数据
        MYAppModel *appModel = [[MYAppModel alloc] init];
        appModel.name = @"QQ";
        appModel.image = @"QQ";
        
        // 赋值数据
        [appView setName:appModel.name image:appModel.image];
        
    }
    return self;
}

#pragma mark -
#pragma mark - MYAppViewDelegate
- (void)appViewClicked:(MYAppView *)appView {
    NSLog(@"presenter监听到了appView的点击");
}

@end
