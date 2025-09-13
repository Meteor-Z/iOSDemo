//
//  ZCAnimationViewController.m
//  iOSDemo
//
//  Created by 刘泽辰 on 2025/9/13.
//

#import "ZCAnimationViewController.h"
#import "../View/ZCLoadingView.h"

@interface ZCAnimationViewController ()

@end

@implementation ZCAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.frame = [UIScreen mainScreen].bounds;
    self.view.backgroundColor = [UIColor colorWithWhite:1 alpha:1];
    ZCLoadingView *loadingView = [[ZCLoadingView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2   , 250, 30, 30)];
    [self.view addSubview:loadingView];
}

@end
