//
//  ViewController.m
//  单例的使用总结
//
//  Created by 曦胜 on 2018/2/26.
//  Copyright © 2018年 曦胜科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)shareBtnClicked:(id)sender {
    
    LoginViewController *loginvc = [LoginViewController shareLoginViewController];
    [self presentViewController:loginvc animated:YES completion:^{
        
    }];
    
    
}

- (IBAction)initBtnClicked:(id)sender {
    
    LoginViewController *loginvc = [[LoginViewController alloc]init];
    [self presentViewController:loginvc animated:YES completion:^{
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
