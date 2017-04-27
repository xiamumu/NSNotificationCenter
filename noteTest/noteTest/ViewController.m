//
//  ViewController.m
//  noteTest
//
//  Created by XM on 17/4/27.
//  Copyright © 2017年 XM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /****************************** 发送方法 ******************************/

    // 方法一
    /*!
     @method
     @brief 用于携带单一的对象或者单一的值，
     @param postNotificationName   发送通知所必须传的唯一的Key
     @param object   格式必须是OC对象或者OC数据格式，不能携带基础数据格式，可不传，不传写nil
     */
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationName_one" object:@(2)];
    
    // 方法二
    /*!
     @method
     @brief 携带对象或者OC数据格式或字典
     @param postNotificationName   发送通知所必须传的唯一的Key
     @param object   格式必须是OC对象或者OC数据格式，不能携带基础数据格式，可不传，不传写nil
     @param userInfo  以字典格式携带需要传的值
     */
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationName_two" object:nil userInfo:@{@"key": @"我真帅"}];
    
    
    // 方法三（其实就是上两种方法拆开写）
    // 可拆开写的三种格式
    NSNotification *note = [[NSNotification alloc] initWithName:@"" object:nil userInfo:nil];
    NSNotification *note1 = [NSNotification notificationWithName:@"" object:nil];
    NSNotification *note2 = [NSNotification notificationWithName:@"" object:nil userInfo:nil];
    
    [[NSNotificationCenter defaultCenter] postNotification:note];
    [[NSNotificationCenter defaultCenter] postNotification:note1];
    [[NSNotificationCenter defaultCenter] postNotification:note2];

    
}




@end
