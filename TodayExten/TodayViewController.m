//
//  TodayViewController.m
//  TodayExten
//
//  Created by TN on 2017/6/14.
//  Copyright © 2017年 TN. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

static NSString *const url = @"podExt://pod";
@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
}
-(void)configUI{
    self.preferredContentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, 150);
    UILabel *openAppLabel = [[UILabel alloc] init];
    openAppLabel.textColor = [UIColor colorWithRed:(97.0/255.0) green:(97.0/255.0) blue:(97.0/255.0) alpha:1];
    openAppLabel.backgroundColor = [UIColor clearColor];
    openAppLabel.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100);
    openAppLabel.textAlignment = NSTextAlignmentCenter;
    openAppLabel.text = @"点击打开app";
    openAppLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:openAppLabel];
    openAppLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *openURLContainingAPP = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(openURLContainingAPP)];
    [openAppLabel addGestureRecognizer:openURLContainingAPP];
}

- (void)openURLContainingAPP
{
   
    [self.extensionContext openURL:[NSURL URLWithString:url]
                 completionHandler:^(BOOL success) {
                     NSLog(@"open url result:%d",success);
                 }];
}

-(UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets{

    return UIEdgeInsetsMake(0, 0, 0, 0);
}
- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
