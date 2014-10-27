//
//  ViewController.m
//  STRunloop
//
//  Created by SunJiangting on 14-10-27.
//  Copyright (c) 2014年 Suen. All rights reserved.
//

#import "ViewController.h"
#import "STAlertView.h"

@interface ViewController () {
    BOOL _shouldContinue;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 100, 100, 30);
    [button1 setTitle:@"测试按钮" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button1 addTarget:self action:@selector(testButtonActionFired:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    NSLog(@"Did Start viewDidAppear");
//    while (!_shouldContinue) {
//        [[NSRunLoop mainRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
//    }
//    NSLog(@"Will End viewDidAppear");
}

- (void)testButtonActionFired:(UIButton *)button {
//    NSLog(@"TestButtonActionFired");
    STAlertView * alertView = [[STAlertView alloc] initWithMenuTitles:@"Menu1", @"Menu2", @"Menu3", nil];
    NSInteger result = [alertView showInView:self.view animated:YES];
    NSLog(@"AlertView Dismissed With Result %ld", (long)result);
    NSLog(@"这句话直到你选择了一个Menu之后才会被执行");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
