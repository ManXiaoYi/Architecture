//
//  ViewController.m
//  HierarchicalDesign
//
//  Created by 满孝意 on 2020/8/9.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "ViewController.h"
#import "MYNewsService.h"

// TODO: 界面层，控制器直接加载新闻数据
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 加载新闻数据
    [MYNewsService loadNews:@{} success:^(NSArray * _Nonnull newsData) {

    } failure:^(NSError * _Nonnull error) {

    }];
}

@end
