//
//  HJTDatePickerView.h
//  HJTDatePickerView
//
//  Created by hejintao on 2017/3/21.
//  Copyright © 2017年 hither. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSDate+Extension.h"

//用户定义需要显示什么类型的pickerView
typedef enum{
    DateStyleShowYearMonthDayHourMinute  = 0,
    DateStyleShowMonthDayHourMinute,
    DateStyleShowYearMonthDay,
    DateStyleShowMonthDay,
    DateStyleShowHourMinute
}HJTDateStyle;

@interface HJTDatePickerView : UIView

@property (nonatomic,assign)HJTDateStyle datePickerStyle;

@property (nonatomic,strong)UIColor *themeColor;

@property (nonatomic, retain) NSDate *maxLimitDate;//限制最大时间（没有设置默认2049）
@property (nonatomic, retain) NSDate *minLimitDate;//限制最小时间（没有设置默认1970）

-(instancetype)initWithCompleteBlock:(void(^)(NSDate *))completeBlock;

-(void)show;

@end
