//
//  WYXWindow.m
//  HideStatusBar
//
//  Created by ying on 2016/12/21.
//  Copyright © 2016年 ying. All rights reserved.
//

#import "WYXWindow.h"

@implementation WYXWindow
static const CGRect frame = {{0, 0}, {320, 20}};
+ (instancetype)newWindow{
    WYXWindow *newWin = [[WYXWindow alloc] initWithFrame:frame];
    if (newWin) {
        newWin.windowLevel = UIWindowLevelAlert -2;
        newWin.backgroundColor = [UIColor redColor];
        [newWin makeKeyAndVisible];
    }
    return newWin;
}


@end
