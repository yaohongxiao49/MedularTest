//
//  MedularATarget.h
//  ModularTest
//
//  Created by ios on 2020/1/22.
//  Copyright © 2020 August. All rights reserved.
//
/// 开放给别人使用的方法创建及维护

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MedularAVC.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ActionAlertShowBlock)(BOOL boolSure);

@interface MedularATarget : NSObject

/** 初始化类 */
- (UIViewController *)actionMedularAInitVC:(NSDictionary *)params;

/** 弹窗提示 */
- (void)actionMedularAAlertShow:(NSDictionary *)params;
@property (nonatomic, copy) ActionAlertShowBlock actionAlertShowBlock;

/** 获取cell */
- (UITableViewCell *)actionMedularACell:(NSDictionary *)params;

/** 给cell赋值 */
- (id)actionMedularAConfigCell:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
