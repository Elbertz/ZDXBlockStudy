//
//  testViewController.h
//  ZDXBlockStudy
//
//  Created by Elbert on 17/2/20.
//  Copyright © 2017年 Elbert. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^myBlock)(UIColor* color);

@interface testViewController : UIViewController

@property (nonatomic,copy)myBlock block1;

@end
