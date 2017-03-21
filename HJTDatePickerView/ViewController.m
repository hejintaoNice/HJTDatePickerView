//
//  ViewController.m
//  HJTDatePickerView
//
//  Created by hejintao on 2017/3/21.
//  Copyright © 2017年 hither. All rights reserved.
//

#import "ViewController.h"
#import "HJTDatePickerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    selectBtn.frame = CGRectMake(20, 100, self.view.frame.size.width-40, 50);
    selectBtn.layer.cornerRadius = 5;
    selectBtn.backgroundColor = [UIColor lightGrayColor];
    [selectBtn setTitle:@"选择时间" forState:UIControlStateNormal];
    [self.view addSubview:selectBtn];
    [selectBtn addTarget:self action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)selectAction:(UIButton *)btn {
    HJTDatePickerView *datepicker = [[HJTDatePickerView alloc] initWithCompleteBlock:^(NSDate *startDate) {
//        NSString *date = [startDate stringWithFormat:@"yyyy-MM-dd HH:mm"];
        NSString *date = [startDate stringWithFormat:@"yyyy-MM-dd"];
        NSLog(@"时间： %@",date);
        [btn setTitle:date forState:UIControlStateNormal];
        
    }];
    datepicker.datePickerStyle = DateStyleShowYearMonthDay;
    //    datepicker.minLimitDate = [NSDate date:@"1970-1-01 00:00" WithFormat:@"yyyy-MM-dd HH:mm"];
    //    datepicker.maxLimitDate = [NSDate date:@"2049-12-31 23:59" WithFormat:@"yyyy-MM-dd HH:mm"];
    
    datepicker.minLimitDate = [NSDate date:@"1970-1-01" WithFormat:@"yyyy-MM-dd"];
    datepicker.maxLimitDate = [NSDate date:@"2049-12-31" WithFormat:@"yyyy-MM-dd"];
    [datepicker show];
    
}


@end
