//
//  ViewController.m
//  iOSMemaryDemo
//
//  Created by MacBook Pro on 6/17/21.
//

#import "ViewController.h"
#import "InstanceDemo.hpp"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

//
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:button];
    [button setTitle:@"测试按钮" forState:UIControlStateNormal];
    button.frame = CGRectMake(200, 200, 100, 100);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonClick
{
    NSLog(@"buttonClick ...on...");
    InstanceDemo * instance = InstanceDemo::getInstance();
    instance->test();
}



@end
