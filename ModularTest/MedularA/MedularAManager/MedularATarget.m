//
//  MedularATarget.m
//  ModularTest
//
//  Created by ios on 2020/1/22.
//  Copyright © 2020 August. All rights reserved.
//

#import "MedularATarget.h"

@implementation MedularATarget

#pragma mark - 初始化类
- (UIViewController *)actionMedularAInitVC:(NSDictionary *)params {
    
    MedularAVC *vc = [[MedularAVC alloc] init];
    return vc;
}

#pragma mark - 弹窗提示
- (void)actionMedularAAlertShow:(NSDictionary *)params {
    
    __weak typeof(self) weakSelf = self;
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        if (weakSelf.actionAlertShowBlock) {
            weakSelf.actionAlertShowBlock(NO);
        }
    }];
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        if (weakSelf.actionAlertShowBlock) {
            weakSelf.actionAlertShowBlock(YES);
        }
    }];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:params[@"title"] message:params[@"message"] preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:cancelAction];
    [alertController addAction:confirmAction];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - 获取cell
- (UITableViewCell *)actionMedularACell:(NSDictionary *)params {
    
    UITableView *tableView = params[@"tableView"];
    NSString *identifier = params[@"identifier"];
    
    //这里的TableViewCell的类型可以是自定义的，我这边偷懒就不自定义了。
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

#pragma mark - 给cell赋值
- (id)actionMedularAConfigCell:(NSDictionary *)params {
    
    NSString *title = params[@"title"];
    NSIndexPath *indexPath = params[@"indexPath"];
    UITableViewCell *cell = params[@"cell"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@,%ld", title, (long)indexPath.row];
    
//    if ([cell isKindOfClass:[XXXXXCell class]]) {
//        正常情况下在这里做特定cell的赋值，上面就简单写了
//    }
    
    return nil;
}

@end
