//
//  TestOneViewController.m
//  noteTest
//
//  Created by XM on 17/4/27.
//  Copyright © 2017年 XM. All rights reserved.
//

#import "TestOneViewController.h"

@interface TestOneViewController ()

@end

@implementation TestOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /****************************** 接收方法 ******************************/
    /*!
     @method
     @brief 用于接收传过来的值
     @param addObserver   监听者，一般都是self
     @param selector   监听到通知以后要执行的方法
     @param name   监听的某个通知的Key
     @param object  写nil，会接收所有传来的值
     */
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noteAction:) name:@"NotificationName_one" object:nil];
    
}
// 监听到通知以后要执行的方法
- (void)noteAction:(NSNotification *)note
{
    // 用于接收通过object传来的值，具体数据格式需要对比你传值时候的格式进行转换
    id object = note.object;
    
    // 用于接收通过userInfo字典传来的值，传来的就是个字典，具体取值key需要跟传时候的key一一对应才能取出相应的值
    NSDictionary *userInfo = note.userInfo;
    
}

// 监听者移除
- (void)dealloc
{
    // 可用于移除所有的监听
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    // 可用于移除某个Key所以应的监听
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"NotificationName_one" object:nil];
    
}

@end
