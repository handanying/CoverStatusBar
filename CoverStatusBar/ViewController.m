//
//  ViewController.m
//  CoverStatusBar
//
//  Created by ying on 2016/12/21.
//  Copyright © 2016年 ying. All rights reserved.
//

#import "ViewController.h"
#import "WYXWindow.h"

@interface ViewController ()
@end

@implementation ViewController{
    WYXWindow *wind;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self hideStautsBarWithGetStatusBar];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    // 因为当前viewcontroller 是 rootController，所以调用该方法要在viewDidAppear:方法中
    // 不然在appdelegate中设置的rootController就会失效
    // 如果不是在rootController,则在 viewDidLoad 中调用即可
    // [self hideStatusBarWithWindow];
}

// 以KVC的方式来获取statusBar,你会发现其也应该是继承自UIView
- (void)hideStautsBarWithGetStatusBar{
    // 你可以试着打印statusBar及基父类的类型
    //    id statusBar = [[UIApplication sharedApplication] valueForKey:@"statusBar"];
    //    NSLog(@"%@--%@",statusBar,[statusBar superclass]);
    UIView  *statusBar = [[UIApplication sharedApplication] valueForKey:@"statusBar"];
    UIView *newView = [[UIView alloc] initWithFrame:statusBar.frame];
    newView.backgroundColor = [UIColor yellowColor];
    [statusBar addSubview:newView];
}

// 自定义window来覆盖statusbar
- (void)hideStatusBarWithWindow{
    wind = [WYXWindow newWindow];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
