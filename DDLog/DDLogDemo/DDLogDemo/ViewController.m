//
//  ViewController.m
//  DDLogDemo
//
//  Created by wangjian on 15/9/21.
//  Copyright © 2015年 qhfax. All rights reserved.
//

#import "ViewController.h"
#import "DDLogManager.h"
@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DDLogWarn(@"警告");
    DDLogError(@"错误");
    DDLogInfo(@"信息");
    DDLogDebug(@"Debug");
    DDLogVerbose(@"显示全部");
    NSMutableArray *contentArray = [[DDLogManager shareInstence] getLoggerFileContent];
    for (int i = 0; i < contentArray.count; i++)
    {
//         DDLogInfo(@"读取到的日志记录----%@",contentArray[i]);
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
