//
//  MedularAVC.m
//  ModularTest
//
//  Created by ios on 2020/1/22.
//  Copyright © 2020 August. All rights reserved.
//

#import "MedularAVC.h"
#import "CTMediator+MedularA.h"

@interface MedularAVC ()

@end

@implementation MedularAVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"MedularAVC";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [[CTMediator sharedInstance] CTMediatorAActionAlertShow:@{@"title":@"温馨提示", @"message":@"这里是内容"}];
}

@end
