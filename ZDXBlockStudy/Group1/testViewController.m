//
//  testViewController.m
//  ZDXBlockStudy
//
//  Created by Elbert on 17/2/20.
//  Copyright © 2017年 Elbert. All rights reserved.
//

#import "testViewController.h"

@interface testViewController ()

@end

@implementation testViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setFrame:CGRectMake(10, 20+64, 50, 30)];
    [button1 setTitle:@"test controller" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(handleButton1Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    
}

- (void)handleButton1Action:(id)sender{
    UIColor *color = [UIColor redColor];

    //给Block传入参数color
    self.block1(color);
    [self.navigationController popViewControllerAnimated:YES];
    //[self dismissViewControllerAnimated:YES completion:nil];
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
