//
//  ViewController.m
//  iOSDemo
//
//  Created by 刘泽辰 on 2025/9/13.
//

#import "ViewController.h"
#import "Controller/ZCAnimationViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *animationButton;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.animationButton];
}


#pragma mark - Response Event

- (void)buttonDidClick:(UIButton *)button {
    NSLog(@"当前的数值");
    if (button == self.animationButton) {
        ZCAnimationViewController *animationViewController = [[ZCAnimationViewController alloc] init];
        [self.navigationController pushViewController:animationViewController animated:YES];
    }
}

#pragma mark - Lazy Load

- (UIButton *)animationButton {
    if (!_animationButton) {
        _animationButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 100)];
        _animationButton.backgroundColor = [UIColor redColor];
        [_animationButton setTitle:@"动画集合" forState:UIControlStateNormal];
        [_animationButton addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _animationButton;
}


@end
