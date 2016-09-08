//
//  HWNavigationController.m
//  BackBarButtonItem
//
//  Created by  wuhiwi on 16/9/8.
//  Copyright © 2016年 wanglibank. All rights reserved.
//

#import "HWNavigationController.h"

@interface HWNavigationController ()

@end

@implementation HWNavigationController


//在这里设置navigationBar 的 backIndicatorImage为自定义图片
- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    if ([super initWithRootViewController:rootViewController]) {
        UIImage *image = [UIImage imageNamed:@"BACK"];
        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.navigationBar.backIndicatorImage = image;
        self.navigationBar.backIndicatorTransitionMaskImage = image;
    }
    return self;
}


@end
