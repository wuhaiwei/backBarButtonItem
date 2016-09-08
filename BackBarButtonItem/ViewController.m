//
//  ViewController.m
//  BackBarButtonItem
//
//  Created by  wuhiwi on 16/9/8.
//  Copyright © 2016年 wanglibank. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//参考网页 https://app.yinxiang.com/shard/s46/nl/11899325/04a8a87f-91fb-42ed-94e7-ca7114aa2188/?csrfBusterToken=U%3Db591bd%3AP%3D%2F%3AE%3D157088fe08e%3AS%3D4e2e110054f786269a8d5c21349db018
- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"viewVC";
        
    //push按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100,200, 100, 30);
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //设置navigationItem的 backBarButtonItem
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"这是在viewVC设置";  //坑货，title不能设置过长，过长就不起作用
    self.navigationItem.backBarButtonItem = backItem;
}

- (void)click:(UIButton *)sender
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

@end
