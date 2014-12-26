//
//  TumblrMenuItem.h
//  TumblrLikeMenu
//
//  Created by wildyao on 14/12/26.
//  Copyright (c) 2014年 Wild Yaoyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TumblrMenuItem : UIView

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIImage *highlightedImage;
@property (nonatomic, copy) void (^tumblrMenuItemSelectBlock)(TumblrMenuItem *item);

- (id)initWithImage:(UIImage *)image
   highlightedImage:(UIImage *)highlightedImage
               text:(NSString *)text;

@end
