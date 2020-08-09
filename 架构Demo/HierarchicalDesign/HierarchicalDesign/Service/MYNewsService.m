//
//  MYNewsService.m
//  DemoApp
//
//  Created by 满孝意 on 2020/8/9.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "MYNewsService.h"
#import "MYDBTool.h"
#import "MYHTTPTool.h"

@implementation MYNewsService

+ (void)loadNews:(NSDictionary *)params success:(void (^)(NSArray *newsData))success failure:(void (^)(NSError *error))failure {
    // 先取出本地数据
    [MYDBTool loadLocalData];
    
    // 如果没有本地数据，就加载网络数据
    [MYHTTPTool GET:@"xxxx" params:nil success:^(id result) {
        
    } failure:failure];
}

@end
