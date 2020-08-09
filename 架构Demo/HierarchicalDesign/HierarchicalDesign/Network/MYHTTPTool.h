//
//  MYHTTPTool.h
//  DemoApp
//
//  Created by 满孝意 on 2020/8/9.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// TODO: 网络层，负责网络数据的请求
@interface MYHTTPTool : NSObject

// 加载网络数据
+ (void)GET:(NSString *)URL params:(NSDictionary *)params success:(void (^)(id result))success failure:(void (^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
