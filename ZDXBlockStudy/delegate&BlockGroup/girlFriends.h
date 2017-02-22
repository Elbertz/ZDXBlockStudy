//
//  girlFriends.h
//  ZDXBlockStudy
//
//  Created by Elbert on 17/2/21.
//  Copyright © 2017年 Elbert. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^myLoveBlock)(NSString *goods);
typedef float(^myLoveBlock2)(int loveNumber);

//声明一个代理，命名为女友的爱
@protocol loveDelegate <NSObject>

- (void)buySometingILove;

@end

@interface girlFriends : NSObject
{
    int recursiveResult;
}
@property (nonatomic,retain) id <loveDelegate> delegate;

@property (nonatomic,copy) myLoveBlock buyBlock;
@property (nonatomic,copy) myLoveBlock2 LNBlock;

@property (nonatomic,assign)int recursiveResult;
@property (nonatomic,assign)int recursiveResult2;

+ (id)shareInstance;//实现单例方法，表明女友有且只有一个

- (void)buyALadiesBackpackForMe;//use Delegate
- (void)buyAnotherLadiesBackpackForMe;//use Block
- (void)buyAnyoneLadiesBackpackForMe;//use Notification
- (void)buyMoreLadiesBackpackForMe:(myLoveBlock2)ablock;//block as parameter


- (girlFriends *(^)(int))recursiveFuction;

- (int(^)(int))setupTab5;

@end
