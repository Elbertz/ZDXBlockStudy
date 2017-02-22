//
//  ViewController.m
//  ZDXBlockStudy
//
//  Created by Elbert on 17/2/20.
//  Copyright © 2017年 Elbert. All rights reserved.
//

#import "ViewController.h"
#import "testViewController.h"
#import "girlFriends.h"


#define KTabbarH 64

@interface ViewController ()<loveDelegate>{
    UILabel *label1;
    NSTimer *timer;
}

@property (nonatomic,retain) UILabel *label2;
@property (nonatomic,retain) UILabel *label3;
@property (nonatomic,retain) UILabel *label4;
@property (nonatomic,retain) UILabel *label5;
@property (nonatomic,retain) UILabel *label6;
@property (nonatomic,retain) UILabel *label7;
@property (nonatomic,retain) UILabel *label8;
@property (nonatomic,retain) UILabel *label9;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setFrame:CGRectMake(10, 20+KTabbarH, 150, 30)];
    [button1 setTitle:@"enter next controller" forState:UIControlStateNormal];
    [button1.titleLabel setTextAlignment:NSTextAlignmentLeft];
    [button1 addTarget:self action:@selector(handleButton1Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    label1 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+KTabbarH, 50, 30)];
    [label1 setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:label1];
    
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button2 setFrame:CGRectMake(10, 70+KTabbarH, 150, 30)];
    [button2 setTitle:@"use self in block" forState:UIControlStateNormal];
    [button2.titleLabel setTextAlignment:NSTextAlignmentLeft];
    [button2 addTarget:self action:@selector(handleButton2Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    self.label2 = [[UILabel alloc]initWithFrame:CGRectMake(170, 70+KTabbarH, 50, 30)];
    [self.label2 setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:self.label2];
    //
    
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button3 setFrame:CGRectMake(10, 20+50*2+KTabbarH, 150, 30)];
    [button3 setTitle:@"gf calling" forState:UIControlStateNormal];
    //[button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(handleButton3Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    self.label3 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+50*2+KTabbarH, 150, 30)];
    [self.label3 setBackgroundColor:[UIColor yellowColor]];
    [self.label3 setText:@"给我买个包包?"];
    //self.label3.textAlignment=NSTextAlignmentRight;
    [self.view addSubview:self.label3];
    
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button4 setFrame:CGRectMake(10, 20+50*3+KTabbarH, 150, 30)];
    [button4 setTitle:@"gf calling in block" forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(handleButton4Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    self.label4 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+50*3+KTabbarH, 150, 30)];
    [self.label4 setBackgroundColor:[UIColor yellowColor]];
    [self.label4 setText:@"给我买个包包?"];
    [self.view addSubview:self.label4];
    
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button5 setFrame:CGRectMake(10, 20+50*4+KTabbarH, 150, 30)];
    [button5 setTitle:@"gf calling observer" forState:UIControlStateNormal];
    [button5 addTarget:self action:@selector(handleButton5Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    
    self.label5 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+50*4+KTabbarH, 150, 30)];
    [self.label5 setBackgroundColor:[UIColor yellowColor]];
    [self.label5 setText:@"给我买个包包?"];
    [self.view addSubview:self.label5];
    
    
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button6 setFrame:CGRectMake(10, 20+50*5+KTabbarH, 150, 30)];
    [button6 setTitle:@"block as parameter" forState:UIControlStateNormal];
    [button6 addTarget:self action:@selector(handleButton6Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button6];
    
    self.label6 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+50*5+KTabbarH, 150, 30)];
    [self.label6 setBackgroundColor:[UIColor yellowColor]];
    [self.label6 setText:@"给我买个包包?"];
    [self.view addSubview:self.label6];
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:30 repeats:NO block:^(NSTimer * _Nonnull timer) {
        [self.label3 setText:@"💔💔💔"];
        [self.label4 setText:@"💔💔💔"];
        [self.label5 setText:@"💔💔💔"];
        [self.label6 setText:@"💔💔💔"];
    }];
    
    
    
    //
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button7 setFrame:CGRectMake(10, 20+50*6+KTabbarH, 150, 30)];
    [button7 setTitle:@"标准递归求阶乘" forState:UIControlStateNormal];
    [button7 addTarget:self action:@selector(handleButton7Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button7];
    
    self.label7 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+50*6+KTabbarH, 150, 30)];
    [self.label7 setBackgroundColor:[UIColor yellowColor]];
    [self.label7 setText:@"0"];
    [self.view addSubview:self.label7];
    //NSLog(@"%d",[self digui:3]);
    
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button8 setFrame:CGRectMake(10, 20+50*7+KTabbarH, 150, 30)];
    [button8 setTitle:@"block作返回值求阶乘" forState:UIControlStateNormal];
    [button8 addTarget:self action:@selector(handleButton8Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button8];
    
    self.label8 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+50*7+KTabbarH, 150, 30)];
    [self.label8 setBackgroundColor:[UIColor yellowColor]];
    [self.label8 setText:@"0"];
    [self.view addSubview:self.label8];
    //[self recursiveFuction:3];
    //NSLog(@"%d",[self recursiveFuction:4]);
    
    
    
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button9 setFrame:CGRectMake(10, 20+50*8+KTabbarH, 150, 30)];
    [button9 setTitle:@"block作返回值求阶乘" forState:UIControlStateNormal];
    [button9 addTarget:self action:@selector(handleButton9Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button9];
    
    self.label9 = [[UILabel alloc]initWithFrame:CGRectMake(170, 20+50*8+KTabbarH, 150, 30)];
    [self.label9 setBackgroundColor:[UIColor yellowColor]];
    [self.label9 setText:@"0"];
    [self.view addSubview:self.label9];
    
}

- (void)handleButton1Action:(id)sender{
    testViewController *testVC = [[testViewController alloc]init];
    testVC.block1 = ^(UIColor *color){
        label1.backgroundColor = color;
    };
    [self.navigationController pushViewController:testVC animated:YES];
    
}

- (void)handleButton2Action:(id)sender{
    //当block中使用了self时，需要对self添加__weak关键字，避免循环调用
    
    __weak typeof(self) weakself = self;//等价于下一行代码
    //__weak UIViewController* weakself = self;
    testViewController *testVC = [[testViewController alloc]init];
    testVC.block1 = ^(UIColor *color){
        weakself.label2.backgroundColor = color;
    };
    [self.navigationController pushViewController:testVC animated:YES];
    //[self presentViewController:testVC animated:YES completion:nil];
}

- (void)handleButton3Action:(id)sender{
    girlFriends *gf = [girlFriends shareInstance];
    gf.delegate = self;
    
    [gf buyALadiesBackpackForMe];
}

- (void)handleButton4Action:(id)sender{
    __weak typeof(self) weakself = self;
    
    //block先赋值，再使用
    girlFriends *gf = [girlFriends shareInstance];
    //[gf buyAnotherLadiesBackpackForMe]; //wrong write place
    gf.buyBlock = ^(NSString *goods){
        NSString *tempStr = [NSString stringWithFormat:@"%@❤️❤️❤️😘😘😘",goods];
        [weakself.label4 setText:tempStr];
    };
    [gf buyAnotherLadiesBackpackForMe];
    
    if (timer.isValid == YES) {
        [timer invalidate];
    }
}

- (void)handleButton5Action:(id)sender{
    //tips:先注册观察者，再发送通知
    
    girlFriends *gf = [girlFriends shareInstance];
    //[gf buyAnyoneLadiesBackpackForMe];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(buyLVAction:) name:@"buybag" object:nil];
    
    [gf buyAnyoneLadiesBackpackForMe];
    
    
}

- (void)buyLVAction:(NSNotification *)sender{
    NSString *tempStr = [NSString stringWithFormat:@"%@❤️❤️❤️😘😘😘",sender.userInfo[@"backpack"]];
    [self.label5 setText:tempStr];
    
    if (timer.isValid == YES) {
        [timer invalidate];
    }
}

- (void)handleButton6Action:(id)sender{
    girlFriends *gf = [girlFriends shareInstance];
    [gf buyMoreLadiesBackpackForMe:^float(int loveNumber) {
        //
        NSLog(@"520");
        float result = 520+(float)loveNumber/10000;
        NSLog(@"%.4f",(float)loveNumber/10000);
        NSString *tempStr = [NSString stringWithFormat:@"%.4f❤️❤️❤️😘😘😘",result];
        [_label6 setText:tempStr];
        
        return result;
        
    }];
    
    if (timer.isValid == YES) {
        [timer invalidate];
    }
    
}

- (void)handleButton7Action:(id)sender{
    int diguiResult = [self digui:3];
    
    self.label7.text = [NSString stringWithFormat:@"%d",diguiResult];
}
    
- (void)handleButton8Action:(id)sender{
    int recursiveResult = [self recursiveFuction:3];
    self.label8.text = [NSString stringWithFormat:@"%d",recursiveResult];
}

- (void)handleButton9Action:(id)sender{
    girlFriends *gf = [girlFriends shareInstance];
    gf.recursiveResult2 = 1;//对recursiveResult2进行复位，避免重复点击按钮时计算错误
    
    //block作为返回值的递归函数的调用
    int recursiveResult = gf.setupTab5(3);
    self.label9.text = [NSString stringWithFormat:@"%d",recursiveResult];
}

#pragma - loveDelegate -
-(void)buySometingILove{
    [self.label3 setText:@"❤️❤️❤️😘😘😘"];
    if (timer.isValid == YES) {
        [timer invalidate];
    }
}



#pragma 递归
- (int)digui:(int)number{
    if (number <= 2 && number > 0) {
        return number;
    } else {
        int tempResult = [self digui:number-1];
        return number*tempResult;
    }
}

- (int)recursiveFuction:(int)number{
//    if (number <= 2 && number > 0) {
//        return _ablock(number);
//    } else {
//        return number*_ablock(number-1);
//    }
    girlFriends *gf = [girlFriends shareInstance];
    gf.recursiveFuction(number);
    
    return gf.recursiveResult;
}


-(void)dealloc{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"buybag" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
