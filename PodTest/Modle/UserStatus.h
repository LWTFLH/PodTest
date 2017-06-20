//
//  UserStatus.h
//  PodTest
//
//  Created by TN on 2017/6/9.
//  Copyright © 2017年 TN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserStatus : NSObject
@property(nonatomic,copy)NSString *pased;
@property(nonatomic,copy)NSString *logWay;
@property(nonatomic,copy)NSString *money;
@property(nonatomic,copy)NSString *fenQi;
@property(nonatomic,copy)NSString *used;
@property(nonatomic,copy)NSString *verify;
@property(nonatomic,copy)NSString *bank;
@property(nonatomic,copy)NSString *phone;
@property(nonatomic,copy)NSString *idCard;
@property(nonatomic,copy)NSString *failede;
@property(nonatomic,copy)NSString *reason;
@property(nonatomic,copy)NSString *dayu;

-(void)handleUser;
-(void)handMoney;
-(void)handleFenqi;

@end
