//
//  ModleController.m
//  PodTest
//
//  Created by TN on 2017/6/15.
//  Copyright © 2017年 TN. All rights reserved.
//

#import "ModleController.h"
#import "UIViewController+PushPresent.h"
@interface ModleController ()

@end

@implementation ModleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.navigationController.navigationBar.tintColor = [UIColor purpleColor];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self isPush];
   // [self dismissViewControllerAnimated:YES completion:nil];

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
