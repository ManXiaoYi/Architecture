//
//  MYNewsService.h
//  DemoApp
//
//  Created by 满孝意 on 2020/8/9.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// TODO: 业务层，负责新闻相关的业务，包括数据的加载等等
@interface MYNewsService : NSObject

+ (void)loadNews:(NSDictionary *)params success:(void (^)(NSArray *newsData))success failure:(void (^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
