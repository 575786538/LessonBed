//
//  AppDelegate.m
//  LessonLabel
//
//  Created by lanouhn on 16/1/14.
//  Copyright (c) 2016年 Rui. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)dealloc {
    self.window = nil;
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //创建window
    //UIScreen mainScreen 获取屏幕对象,然后取bounds属性,得到的是屏幕的大小
    self.window = [[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds]autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    //创建一张与window一样大小的视图
    UIView *contentView = [[UIView alloc]initWithFrame:self.window.bounds];
    contentView.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:contentView];
    [contentView release];
    
    /*UILabel(标签):UIView的子类,在UIView的基础上添加了显示文字的功能.
     UILabel使用步骤
     1.创建空间对象
     2.配置属性
     3.添加到父视图
     4.释放(alloc出来的控件才需要释放)*/
    //创建空间对象
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, 375, 400)];
    //配置属性
    label.backgroundColor = [UIColor greenColor];
    //1.设置现实的文字
    label.text = @"Need you now  o(≧v≦)o~~ We found love  ￣へ￣";
    
    NSLog(@"0.0");
    //2.设置文字的颜色
    label.textColor = [UIColor yellowColor];
    //3.设置文字的大小
//    label.font = [UIFont systemFontOfSize:27];//只能设置字体的大小
    label.font = [UIFont fontWithName:@"ChalkboardSE-Regular" size:27];
    //5.设置label显示文字的行数
    label.numberOfLines =3;//设置为 0 --- 不限制行数,label会根据自己的高度尽可能多的显示文字
    //6.行的截取方式
   // label.lineBreakMode = NSLineBreakByCharWrapping;//按字符截取
    //7.文本对齐格式
    label.textAlignment =     NSTextAlignmentCenter;
    //8.设置阴影的颜色
    label.shadowColor = [UIColor blueColor];
    //9.设置阴影偏移量
    label.shadowOffset = CGSizeMake(3, 3);
    //添加到父视图
    [contentView addSubview:label];
    //释放
    [label release];
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
