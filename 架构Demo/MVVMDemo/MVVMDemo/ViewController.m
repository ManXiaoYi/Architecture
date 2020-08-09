//
//  ViewController.m
//  MVVMDemo
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "ViewController.h"
#import "MYAppViewModel.h"

@interface ViewController ()

// 控制器只管理ViewModel
@property (strong, nonatomic) MYAppViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 创建viewModel
    self.viewModel = [[MYAppViewModel alloc] initWithController:self];
}

@end
