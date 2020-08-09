//
//  MYAppViewModel.m
//  MYAPPDemo
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "MYAppViewModel.h"
#import "MYAppView.h"
#import "MYAppModel.h"

@interface MYAppViewModel() <MYAppViewDelegate>

@property (nonatomic, weak) UIViewController *controller;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *image;

@end

@implementation MYAppViewModel

- (instancetype)initWithController:(UIViewController *)controller {
    self = [super init];
    if (self) {
        self.controller = controller;
        
        // 创建View
        MYAppView *appView = [[MYAppView alloc] init];
        appView.frame = CGRectMake(100, 100, 100, 150);
        appView.delegate = self;
        appView.viewModel = self;
        [controller.view addSubview:appView];
        
        // 加载模型数据
        MYAppModel *appModel = [[MYAppModel alloc] init];
        appModel.name = @"QQ";
        appModel.image = @"QQ";
        
        // 设置数据到自己属性上面去，模型的每个属性都保存在ViewModel的属性里面了，留着给View监听。
        self.name = appModel.name;
        self.image = appModel.image;

        // 当自己的属性改变时会被View监听到，然后View更新数据
        //self.name = @"我改变了";

    }
    return self;
}

#pragma mark -
#pragma mark - MYAppViewDelegate
- (void)appViewClicked:(MYAppView *)appView {
    NSLog(@"viewModel监听到了appView的点击");
}

@end
