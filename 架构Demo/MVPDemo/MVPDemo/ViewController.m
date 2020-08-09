//
//  ViewController.m
//  MVPDemo
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "ViewController.h"
#import "MYAppPresenter.h"

@interface ViewController ()

// TODO: 这里只有一个MYAppView，如果有新的View，就用新的presenter来处理它的业务逻辑。
@property (nonatomic, strong) MYAppPresenter *presenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 创建presenter
    self.presenter = [[MYAppPresenter alloc] initWithController:self];
}

@end
