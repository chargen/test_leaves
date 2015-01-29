//
//  ViewController.m
//  testLeaveView
//
//  Created by Đinh Văn Nhật on 2015/01/29.
//  Copyright (c) 2015年 nhat. All rights reserved.
//

#import "ViewController.h"
#import "ImageExampleViewController.h"
#import "PDFExampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *pdfButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pdfButton.frame = CGRectMake(100, 100, 100, 100);
    [pdfButton setTitle:@"show pdf" forState:UIControlStateNormal];
    [pdfButton addTarget:self action:@selector(pdfButtonOnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pdfButton];
    
    UIButton *imageButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    imageButton.frame = CGRectMake(100, 200, 100, 100);
    [imageButton setTitle:@"show image" forState:UIControlStateNormal];
    [imageButton addTarget:self action:@selector(imageButtonOnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imageButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pdfButtonOnclick {
    UIViewController* viewController = [[PDFExampleViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];

}

- (void)imageButtonOnclick {
    UIViewController* viewController = [[ImageExampleViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];

}
@end
