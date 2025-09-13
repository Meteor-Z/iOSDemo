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
    
    // 首页
    ViewController *viewController = [[ViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:viewController];
    homeNav.tabBarItem.title = @"首页";
    
    // TabBar
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[homeNav];
    
    // 根控制器
    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
@end
