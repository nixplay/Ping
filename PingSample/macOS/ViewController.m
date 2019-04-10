//
//  ViewController.m
//  macOS
//
//  Created by WuLeilei on 2019/4/10.
//  Copyright © 2019年 Conner Wu. All rights reserved.
//

#import "ViewController.h"
#import "PingHelper.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    [self ping];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)ping {
    PingHelper *helper = [[PingHelper alloc] init];
    helper.host = @"www.baidu.com";
    [helper pingWithBlock:^(BOOL isSuccess) {
        NSLog(@"%@", @(isSuccess));
    }];
}

@end
