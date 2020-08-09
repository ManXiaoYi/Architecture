//
//  MYAppView.h
//  DemoApp
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MYAppView, MYAppViewModel;

@protocol MYAppViewDelegate <NSObject>

@optional
- (void)appViewClicked:(MYAppView *)appView;

@end

@interface MYAppView : UIView

@property (nonatomic, weak) MYAppViewModel *viewModel;

@property (nonatomic, weak) id<MYAppViewDelegate> delegate;

@end
