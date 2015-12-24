//
//  ViewController.m
//  AuthorDemo
//
//  Created by Cloudox on 15/12/21.
//  Copyright (c) 2015年 Cloudox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 获取view点击事件
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch *aTouch in touches) {
        // 判断点击7次后执行
        if (aTouch.tapCount > 6 && aTouch.tapCount < 8) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Hello Cloudox" delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定",nil];
            [alert show];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
