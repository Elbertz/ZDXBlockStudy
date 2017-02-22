//
//  ViewController.h
//  ZDXBlockStudy
//
//  Created by Elbert on 17/2/20.
//  Copyright © 2017年 Elbert. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController

typedef ViewController *(^recursionBlock)(int number);

@property (nonatomic,copy) recursionBlock ablock;

@end

