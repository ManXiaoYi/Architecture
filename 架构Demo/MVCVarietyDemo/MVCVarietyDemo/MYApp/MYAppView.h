//
//  MYAppView.h
//  DemoApp
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MYAppView, MYAppModel;

@protocol MYAppViewDelegate <NSObject>

@optional
- (void)appViewClicked:(MYAppView *)appView;

@end

@interface MYAppView : UIView

// TODO: 变种之后：View里面有个Model
@property (nonatomic, strong) MYAppModel *appModel;

@property (nonatomic, weak) id<MYAppViewDelegate> delegate;

@end
