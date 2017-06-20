//
//  UIViewController+PushPresent.m
//  PodTest
//
//  Created by TN on 2017/6/15.
//  Copyright © 2017年 TN. All rights reserved.
//

#import "UIViewController+PushPresent.h"

@implementation UIViewController (PushPresent)
-(void)isPush{
    NSArray *viewcontrollers=self.navigationController.viewControllers;
    
    if (viewcontrollers.count > 1)
    {
        if ([viewcontrollers objectAtIndex:viewcontrollers.count - 1] == self)
        {
            //push方式
            [self.navigationController popViewControllerAnimated:YES];
        }
    }
    else
    {
        //present方式
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
