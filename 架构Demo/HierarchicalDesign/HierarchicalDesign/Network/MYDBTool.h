//
//  MYDBTool.h
//  DemoApp
//
//  Created by 满孝意 on 2020/8/9.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// TODO: 本地数据层，负责加载本地数据
@interface MYDBTool : NSObject

// 加载本地数据
+ (void)loadLocalData;

@end

NS_ASSUME_NONNULL_END
