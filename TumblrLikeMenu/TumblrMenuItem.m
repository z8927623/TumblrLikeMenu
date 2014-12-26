//
//  TumblrMenuItem.m
//  TumblrLikeMenu
//
//  Created by wildyao on 14/12/26.
//  Copyright (c) 2014年 Wild Yaoyao. All rights reserved.
//

#import "TumblrMenuItem.h"

@interface TumblrMenuItem ()

@property (nonatomic, strong) UIButton *menuButton;
@property (nonatomic, strong) UILabel *menuLabel;

@end

@implementation TumblrMenuItem

- (id)initWithImage:(UIImage *)image
   highlightedImage:(UIImage *)highlightedImage
               text:(NSString *)text
{
    self = [super init];
    
    if (self) {
        _image = image;
        _highlightedImage = highlightedImage;
        
        self.frame = [self bounds];
        
        self.menuButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.image.size.width, self.image.size.height)];
        [self.menuButton setImage:self.image forState:UIControlStateNormal];
        [self.menuButton setImage:self.highlightedImage forState:UIControlStateHighlighted];
        [self.menuButton addTarget:self action:@selector(onBtnTappedItem:) forControlEvents:UIControlEventTouchUpInside];
        
        self.menuLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.image.size.height + 5, self.frame.size.width, 18)];
        self.menuLabel.textColor = [UIColor whiteColor];
        self.menuLabel.font = [UIFont systemFontOfSize:13];
        self.menuLabel.textAlignment = NSTextAlignmentCenter;
        self.menuLabel.backgroundColor = [UIColor clearColor];
        self.menuLabel.text = text;
        
        [self addSubview:self.menuButton];
        [self addSubview:self.menuLabel];
    }
    
    return self;
}

- (CGRect)bounds
{
    CGRect rect = CGRectZero;
    rect.size.width = self.image.size.width;
    rect.size.height = self.image.size.height + 20;
    return rect;
}

#pragma mark - setters

- (void)setImage:(UIImage *)image
{
    if (image != _image) {
        _image = nil;
        _image = image;
        [self.menuButton setImage:self.image forState:UIControlStateNormal];
    }
}

- (void)setHighlightedImage:(UIImage *)highlightedImage
{
    if (highlightedImage != _highlightedImage) {
        _highlightedImage = nil;
        _highlightedImage = highlightedImage;
        [self.menuButton setImage:self.highlightedImage forState:UIControlStateHighlighted];
    }
}

- (void)onBtnTappedItem:(id)sender
{
    if (self.tumblrMenuItemSelectBlock) {
        self.tumblrMenuItemSelectBlock(self);
    }
}

@end
