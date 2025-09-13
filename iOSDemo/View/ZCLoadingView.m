//
//  ZCLoadingView.m
//  iOSDemo
//
//  Created by 刘泽辰 on 2025/9/13.
//

#import "ZCLoadingView.h"

@interface ZCLoadingView ()

/*
 CAShapeLayer根据
 
 */
@property (nonatomic, strong) CAShapeLayer *lineLayer;

@end

@implementation ZCLoadingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.layer addSublayer:self.lineLayer];
        [self startAnimation];
    }
    return self;
}

- (CAShapeLayer *)lineLayer {
    if (!_lineLayer) {
        const CGFloat radius = MIN(self.bounds.size.width, self.bounds.size.height) / 2.0 - 4;
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path addArcWithCenter:CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds)) radius:radius startAngle:0 endAngle:M_PI * 1.3 clockwise:YES];
        
        _lineLayer = [CAShapeLayer layer];
        _lineLayer.path = path.CGPath;
        _lineLayer.strokeColor = [UIColor systemPinkColor].CGColor;
        _lineLayer.fillColor = [UIColor clearColor].CGColor;
        _lineLayer.lineWidth = 4.0;
        _lineLayer.lineCap = kCALineCapRound;
        
        _lineLayer.frame = self.bounds;
        _lineLayer.position = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    }
    return _lineLayer;
}

- (void)startAnimation {
    if ([self.lineLayer animationForKey:@"rotation"]) {
        return;
    }
    
    CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotation.toValue = @(M_PI * 2);
    rotation.duration = 1.0;
    rotation.repeatCount = HUGE_VAL;
    rotation.removedOnCompletion = NO;
    [self.lineLayer addAnimation:rotation forKey:@"rotation"];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
