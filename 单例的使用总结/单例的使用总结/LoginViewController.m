//
//  LoginViewController.m
//  单例的使用总结
//
//  Created by 曦胜 on 2018/2/26.
//  Copyright © 2018年 曦胜科技有限公司. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
//创建静态对象,防止外部访问
static LoginViewController * _instance;

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    //也可以使用一次性代码
    static dispatch_once_t oncetoken;
    dispatch_once(&oncetoken, ^{
        if (_instance==nil) {
            _instance = [super allocWithZone:zone];
        }
        
    });
    return _instance;
    
}

//为了使实例易于外界访问,我们一般提供一个类方法
//类方法命名规范 share类名|default类名|类名
+(instancetype)shareLoginViewController{
//    return _instance;
    //最好用self,用loginviewcontroller他的子类调用时会出现错误

    LoginViewController *loginVC = [[self alloc] init];
        NSLog(@"loginVC内容是%@",loginVC);
    return loginVC;
    
}


- (instancetype)init
{
//    self = [super init];
    return _instance;
}


//为了严谨,也要重写copywithzone和mutablecopywithzone;
-(id)copyWithZone:(NSZone *)zone{
    return _instance;
    
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    
    return _instance;
}

- (IBAction)btnClicked:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
