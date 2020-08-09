//
//  MYAppViewModel.h
//  MYAPPDemo
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MYAppViewModel : NSObject

// 本来交给Controller来做的事情，现在交给ViewModel来做了
- (instancetype)initWithController:(UIViewController *)controller;

@end
