//
//  ViewController.m
//  TumblrLikeMenu
//
//  Created by wildyao on 14/12/26.
//  Copyright (c) 2014年 Wild Yaoyao. All rights reserved.
//

#import "ViewController.h"
#import "TumblrMenuItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TumblrMenuItem *item = [[TumblrMenuItem alloc] initWithImage:[UIImage imageNamed:@"Facebook"] highlightedImage:[UIImage imageNamed:@"Facebook"] text:@"heh"];
    item.image = [UIImage imageNamed:@"Facebook"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
