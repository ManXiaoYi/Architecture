//
//  MYShopViewController.m
//  DemoApp
//
//  Created by 满孝意 on 2020/8/8.
//  Copyright © 2020 ManXiaoYi. All rights reserved.
//

#import "MYShopViewController.h"
#import "MYShopModel.h"

@interface MYShopViewController ()

@property (nonatomic, strong) NSMutableArray *shopArray;

@end

@implementation MYShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 加载数据
    [self loadshopArray];
}

- (void)loadshopArray {
    self.shopArray = [[NSMutableArray alloc] init];

    for (int i = 0; i < 20; i++) {
        MYShopModel *shopModel = [[MYShopModel alloc] init];
        shopModel.name = [NSString stringWithFormat:@"商品-%d", i];
        shopModel.price = [NSString stringWithFormat:@"￥19.%d", i];
        [self.shopArray addObject:shopModel];
    }
}

#pragma mark -
#pragma mark - tableView代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.shopArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCell" forIndexPath:indexPath];
    MYShopModel *shopModel = self.shopArray[indexPath.row];

    cell.detailTextLabel.text = shopModel.price;
    cell.textLabel.text = shopModel.name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didSelectRowAtIndexPath");
}

@end
