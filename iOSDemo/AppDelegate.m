//
//  AppDelegate.m
//  iOSDemo
//
//  Created by 刘泽辰 on 2025/9/13.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ViewController *viewController = [[ViewController alloc] init];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    navController.tabBarItem.title = @"首页";
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = @[navController];

    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self.window makeKeyAndVisible];
    return YES;
}
@end
