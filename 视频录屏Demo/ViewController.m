//
//  ViewController.m
//  视频录屏Demo
//
//  Created by apple on 2019/2/19.
//  Copyright © 2019年 apple. All rights reserved.
//

#import "ViewController.h"
#import "XKSettingVideoViewController.h"
#import "XKSrttingAVFoundationVideoViewController.h"
#import "UIView+EXTION.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *gotoVideoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    gotoVideoBtn.backgroundColor = [UIColor lightGrayColor];
    [gotoVideoBtn setTitle:@"img录制视频界面" forState:UIControlStateNormal];
    [gotoVideoBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    gotoVideoBtn.frame = CGRectMake(20, 70, self.view.width-40, 50);
    [gotoVideoBtn addTarget:self action:@selector(gotoVideoVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:gotoVideoBtn];
    
    UIButton *gotoVideoBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    gotoVideoBtn2.backgroundColor = [UIColor lightGrayColor];
    [gotoVideoBtn2 setTitle:@"avfileout录制视频界面" forState:UIControlStateNormal];
    [gotoVideoBtn2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    gotoVideoBtn2.frame = CGRectMake(20, 140, self.view.width-40, 50);
    [gotoVideoBtn2 addTarget:self action:@selector(gotoVideoVC2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:gotoVideoBtn2];
}

-(void)gotoVideoVC{
    XKSettingVideoViewController *vc = [[XKSettingVideoViewController alloc] init];

    [self.navigationController pushViewController:vc animated:YES];
}

-(void)gotoVideoVC2{
    XKSrttingAVFoundationVideoViewController *vc = [[XKSrttingAVFoundationVideoViewController alloc] init];

    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
