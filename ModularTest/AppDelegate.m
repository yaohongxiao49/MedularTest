//
//  AppDelegate.m
//  ModularTest
//
//  Created by ios on 2020/1/22.
//  Copyright © 2020 August. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate () <UIApplicationDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    if (@available(iOS 13, *)) {
        return YES;
    }
    else {
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        [self.window setBackgroundColor:[UIColor whiteColor]];
        UINavigationController *rootNavgationController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
        [self.window setRootViewController:rootNavgationController];
        [self.window makeKeyAndVisible];
        
        return YES;
    }
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
