//
//  CTMediator+MedularA.h
//  ModularTest
//
//  Created by ios on 2020/1/22.
//  Copyright © 2020 August. All rights reserved.
//
/// 开放给别人使用的方法调用集合

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (MedularA)

/** 初始化类 */
- (UIViewController *)CTMediatorAActionInitVC;

/** 弹窗提示 */
- (void)CTMediatorAActionAlertShow:(NSDictionary *)params;

/** 获取cell */
- (UITableViewCell *)CTMediatorAActionCell:(NSDictionary *)params;

/** 给cell赋值 */
- (void)CTMediatorAActionConfigCell:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
