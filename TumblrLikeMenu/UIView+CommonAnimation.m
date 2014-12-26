//
//  UIView+CommonAnimation.m
//  TumblrLikeMenu
//
//  Created by wildyao on 14/12/26.
//  Copyright (c) 2014年 Wild Yaoyao. All rights reserved.
//

#import "UIView+CommonAnimation.h"

@implementation UIView (CommonAnimation)

- (CABasicAnimation *)fadeIn
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.duration = 0.35;
    animation.fromValue = [NSNumber numberWithFloat:0.0f];
    animation.toValue = [NSNumber numberWithFloat:0.8f];
    return animation;
}

- (CABasicAnimation *)fadeOut
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.duration = 0.2;
    animation.fromValue = [NSNumber numberWithFloat:0.8f];
    animation.toValue = [NSNumber numberWithFloat:0.0f];
    return animation;
}

@end
