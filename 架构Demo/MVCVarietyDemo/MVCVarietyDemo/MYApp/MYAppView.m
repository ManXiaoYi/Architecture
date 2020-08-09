//
//  MYAppView.m
//  DemoApp
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "MYAppView.h"
#import "MYAppModel.h"

@interface MYAppView ()

// TODO: 变种之后：不暴露属性
@property (nonatomic, weak) UIImageView *iconView;
@property (nonatomic, weak) UILabel *nameLabel;

@end

@implementation MYAppView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.frame = CGRectMake(0, 0, 100, 100);
        [self addSubview:iconView];
        _iconView = iconView;

        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(0, 100, 100, 30);
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;

    }
    return self;
}

// TODO: 变种之后：封装内部赋值逻辑
- (void)setAppModel:(MYAppModel *)appModel {
    _appModel = appModel;

    self.iconView.image = [UIImage imageNamed:appModel.image];
    self.nameLabel.text = appModel.name;
}

// TODO: 使用代理将点击事件传递给控制器
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.delegate respondsToSelector:@selector(appViewClicked:)]) {
        [self.delegate appViewClicked:self];
    }
}

@end
