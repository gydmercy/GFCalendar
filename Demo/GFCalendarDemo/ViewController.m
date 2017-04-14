//
//  ViewController.m
//  GFCalendarDemo
//
//  Created by Mercy on 2016/11/14.
//  Copyright © 2016年 Mercy. All rights reserved.
//

#import "ViewController.h"
#import "PushedViewController.h"

#import "GFCalendar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"GFCalendar";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self setupCalendar]; //  配置 Calendar
    
}

- (void)setupCalendar {
    
    CGFloat width = self.view.bounds.size.width - 20.0;
    CGPoint origin = CGPointMake(10.0, 64.0 + 70.0);
    
    GFCalendarView *calendar = [[GFCalendarView alloc] initWithFrameOrigin:origin width:width];
    
    // 点击某一天的回调
    calendar.didSelectDayHandler = ^(NSInteger year, NSInteger month, NSInteger day) {
        
        PushedViewController *pvc = [[PushedViewController alloc] init];
        pvc.title = [NSString stringWithFormat:@"%ld年%ld月%ld日", year, month, day];
        [self.navigationController pushViewController:pvc animated:YES];
        
    };
    
    [self.view addSubview:calendar];
    
}


@end
