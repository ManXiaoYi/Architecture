//
//  MYAppView.h
//  DemoApp
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MYAppView;

@protocol MYAppViewDelegate <NSObject>

@optional
// 本来交给Controller来做的事情，现在交给Presenter来做了
- (void)appViewClicked:(MYAppView *)appView;

@end

@interface MYAppView : UIView

// TODO: View不拥有Model，又不想暴露控件，所以使用方法更新数据
- (void)setName:(NSString *)name image:(NSString *)image;

@property (nonatomic, weak) id<MYAppViewDelegate> delegate;

@end
