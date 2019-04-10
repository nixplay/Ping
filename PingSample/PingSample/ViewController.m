//
//  ViewController.m
//  PingSample
//
//  Created by Conner Wu on 2019/4/10.
//  Copyright © 2019年 Conner Wu. All rights reserved.
//

#import "ViewController.h"
#import "PingHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self ping];
}

- (void)ping {
    PingHelper *helper = [[PingHelper alloc] init];
    helper.host = @"www.baidu.com";
    [helper pingWithBlock:^(BOOL isSuccess) {
        NSLog(@"%@", @(isSuccess));
    }];
}

@end
