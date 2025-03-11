//
//  HBViewController.m
//  HBCommonModule
//
//  Created by haobingege on 03/10/2025.
//  Copyright (c) 2025 haobingege. All rights reserved.
//

#import "HBViewController.h"
#import "HBDevelopKit.h"
#import "HBCommonModule_Example-Swift.h"

@interface HBViewController ()

@end

@implementation HBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    HBUseAlamofire *useAlamofire = [[HBUseAlamofire alloc]init];
    [useAlamofire fetchDataFrom:@"https://www.baidu.com" completion:^(NSString * _Nullable result) {
        NSLog(@"result: %@", result);
    }];
     
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
