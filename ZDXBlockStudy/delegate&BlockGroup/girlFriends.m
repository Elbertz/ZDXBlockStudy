//
//  girlFriends.m
//  ZDXBlockStudy
//
//  Created by Elbert on 17/2/21.
//  Copyright © 2017年 Elbert. All rights reserved.
//

#import "girlFriends.h"

@interface girlFriends ()



@end

@implementation girlFriends

static id TheOne = nil;
+(id)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        TheOne = [[self alloc]init];
    });
    
    return TheOne;
}

-(instancetype)init{
    if (self = [super init]) {
        //
        self.recursiveResult = 1;
        self.recursiveResult2 = 1;
    }
    return self;
}

-(void)buyALadiesBackpackForMe{
    [self.delegate buySometingILove];
}

-(void)buyAnotherLadiesBackpackForMe{
    NSString *str = [NSString stringWithFormat:@"cocci"];
    _buyBlock(str);
}

-(void)buyAnyoneLadiesBackpackForMe{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"buybag" object:nil userInfo:@{@"backpack":@"LV"}];
}

-(void)buyMoreLadiesBackpackForMe:(myLoveBlock2)ablock{
    float result = ablock(1314);
    NSLog(@"%.4f",result);
    
}


- (girlFriends *(^)(int))recursiveFuction{
    _recursiveResult = 1;
    return ^girlFriends *(int number){
        //_recursiveResult += number;
        for (int i = 1;i <= number ;i++ ) {
            _recursiveResult *= i;
        }
        return self;
    };
}


#pragma mark - blcok作为返回值
/**
 * 没有返回值,没有参数的block作为返回值
 */
- (void(^)())setupTab1
{
    void(^block)() = ^{
        NSLog(@"setupNav1");
    };
    return block;
}
/**
 * 有返回值,没有参数的block作为返回值
 */
- (int(^)())setupTab2
{
    int(^block)() = ^{
        NSLog(@"setupNav1");
        return 3;
    };
    return block;
}
/**
 * 没有返回值,有参数的block作为返回值
 */
- (void(^)(int, int))setupTab3
{
    void(^block)(int, int) = ^(int a, int b){
        int c = a + b;
        NSLog(@"%d", c);
        
    };
    return block;
}
/**
 * 有返回值,有参数的block作为返回值
 */
- (int(^)(int, int))setupTab4
{
    int(^block)(int, int) = ^(int a, int b){
        int c = a + b;
        NSLog(@"%d", c);
        return c;
    };
    return block;
}


- (int(^)(int))setupTab5
{
    __weak typeof (self)weakSelf = self;
    
    
    int(^block)(int) = ^(int a){
        _recursiveResult2 *= a;
        NSLog(@"%d -- %d", _recursiveResult2,a);
        if (a>1) {
            weakSelf.setupTab5(a-1);
            //[weakSelf setupTab5](a-1);
        }
        
        return _recursiveResult2;
        
    };
    return block;
}

@end
