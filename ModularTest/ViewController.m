//
//  ViewController.m
//  ModularTest
//
//  Created by ios on 2020/1/22.
//  Copyright © 2020 August. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+MedularA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UIViewController *vc = [[CTMediator sharedInstance] CTMediatorAActionInitVC];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
