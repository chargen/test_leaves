//
//  ViewController.m
//  testLeaveView
//
//  Created by Đinh Văn Nhật on 2015/01/29.
//  Copyright (c) 2015年 nhat. All rights reserved.
//

#import "ViewController.h"
#import "ImageExampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *pdfButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pdfButton.frame = CGRectMake(100, 100, 100, 100);
    [pdfButton setTitle:@"pdf" forState:UIControlStateNormal];
    [pdfButton addTarget:self action:@selector(pdfButtonOnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pdfButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pdfButtonOnclick {
    UIViewController* viewController = [[ImageExampleViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
