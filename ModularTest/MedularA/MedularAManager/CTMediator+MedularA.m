//
//  CTMediator+MedularA.m
//  ModularTest
//
//  Created by ios on 2020/1/22.
//  Copyright © 2020 August. All rights reserved.
//

#import "CTMediator+MedularA.h"

NSString *const kCTMediatorANameDis = @"MedularA"; //MedularATarget.（Target为默认值，Medular为要调用的类名）

#pragma mark - 方法命名
/** 初始化类 */
NSString *const kCTMedularAInitMethod = @"MedularAInitVC"; //Medular为MedularATarget中的方法后缀.（如actionMedularAInitVC）
/** 弹窗显示 */
NSString *const kCTMedularAAlertShowMethod = @"MedularAAlertShow";
/** 获取cell */
NSString *const kCTMedularACellMethod = @"MedularACell";
/** 给cell赋值 */
NSString *const kCTMedularAConfigCellMethod = @"MedularAConfigCell";

@implementation CTMediator (MedularA)

#pragma mark - 初始化类
- (UIViewController *)CTMediatorAActionInitVC {
    
    UIViewController *viewController = [self performTarget:kCTMediatorANameDis action:kCTMedularAInitMethod params:@{@"key":@"value"} shouldCacheTarget:NO];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    }
    else {
        return [[UIViewController alloc] init];
    }
}

#pragma mark - 显示弹窗
- (void)CTMediatorAActionAlertShow:(NSDictionary *)params {
    
    [self performTarget:kCTMediatorANameDis action:kCTMedularAAlertShowMethod params:params shouldCacheTarget:NO];
}

#pragma mark - 获取cell
- (UITableViewCell *)CTMediatorAActionCell:(NSDictionary *)params {
    
    UITableViewCell *cell = [self performTarget:kCTMediatorANameDis action:kCTMedularACellMethod params:params shouldCacheTarget:NO];
    return cell;
}

#pragma mark - 给cell赋值
- (void)CTMediatorAActionConfigCell:(NSDictionary *)params {
    
    [self performTarget:kCTMediatorANameDis action:kCTMedularAConfigCellMethod params:params shouldCacheTarget:NO];
}

@end
