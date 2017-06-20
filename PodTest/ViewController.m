//
//  ViewController.m
//  PodTest
//
//  Created by TN on 2017/6/9.
//  Copyright © 2017年 TN. All rights reserved.
//

#define ScreenWidth  [UIScreen mainScreen].bounds.size.width
#define ScreenHeight  [UIScreen mainScreen].bounds.size.height


#import "ViewController.h"
#import <objc/runtime.h>
#import "UserStatus.h"
#import "ModleController.h"
#import <lottie-ios/Lottie/Lottie.h>
@interface ViewController ()
@property(nonatomic,strong)UIWebView *WebView;
@end

@implementation ViewController
{
    LOTAnimationView *lottie;
    NSInteger  textStyleIndex;
    UITextField  *input;
}
- (void)viewDidLoad {
    [super viewDidLoad];
  //  [self defaultUI];
  //  [self getPhoneApp];
  //  [self lottie];
   // [self RGB];
    [self shareAirDrop];
}
-(void)appendUserAgent{
    NSString *oldAgent = [self.WebView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
    NSString *newAgent =+
    //[oldAgent stringByAppendingString:@"iOS"];
    
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:
                         newAgent, @"UserAgent", nil];
    [[NSUserDefaults standardUserDefaults] registerDefaults:dic];
    
    

}
-(void)shareAirDrop{
    
    NSArray *array = @[@"liwei",@"hahaahh"];
    UIActivityViewController * activity = [[UIActivityViewController alloc]initWithActivityItems:array applicationActivities:nil];
    
    [self.view.window.rootViewController presentViewController:activity animated:YES completion:nil];
    NSLog(@"anbi");

}

-(void)enCodeUrl{

    NSString *url = @"";
    [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    UIScrollView *contain= [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    contain.keyboardDismissMode =  UIScrollViewKeyboardDismissModeOnDrag;
    contain.backgroundColor = [UIColor redColor];
    [self.view addSubview:contain];
    UITableViewCell *CELL;
   // CELL.indentationLevel
    
}

-(void)RGB{
    UIColor *color = [UIColor colorWithRed:.4 green:.5 blue:.6 alpha:1];
const CGFloat *components = CGColorGetComponents(color.CGColor);
    NSLog(@"Red:=%f",components[0]);
    NSLog(@"Green:=%f",components[1]);
    NSLog(@"Blue:=%f",components[2]);
    NSLog(@"Alpha:=%f",components[3]);
    
}


#pragma lottie handle 
-(void) lottie{

    NSString *stringCir = @"9squares-AlBoardman";
    
   NSString *stringArrow =  @"HamburgerArrow";
    NSString *stringIcon = @"IconTransitions";
    NSString *stringMask = @"LottieLogo1_masked";
    NSString *stringWater = @"Watermelon";
    lottie = [LOTAnimationView animationNamed:stringMask];
    lottie.center = self.view.center;
    lottie.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
    lottie.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:lottie];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [lottie play];
    });

    
    
    
}

//获取手机安装的应用
-(void)getPhoneApp{
   Class c =NSClassFromString(@"LSApplicationWorkspace");
   id s = [(id)c performSelector:NSSelectorFromString(@"defaultWorkspace")];
   NSArray *array = [s performSelector:NSSelectorFromString(@"allInstalledApplications")];
   for (id item in array)
    {
    NSLog(@"%@",[item performSelector:NSSelectorFromString(@"applicationIdentifier")]);
    //NSLog(@"%@",[item performSelector:NSSelectorFromString(@"bundleIdentifier")]);
    NSLog(@"%@",[item performSelector:NSSelectorFromString(@"bundleVersion")]);
    NSLog(@"%@",[item performSelector:NSSelectorFromString(@"shortVersionString")]);
   }
}

-(void)methodSign{

    SEL initSel = @selector(init);
    SEL allocInit = @selector(alloc);
    // 从NSString 类获取实力方法签名
    NSMethodSignature *initSign = [NSString instanceMethodSignatureForSelector:initSel];
    initSign = [@"test" methodSignatureForSelector:initSel];
    //  从NSString类中获取类方法签名
    NSMethodSignature *allocSign = [NSString methodSignatureForSelector:allocInit];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

//    NSString * urlString = @"App-Prefs:root=Privacy";
//    
//    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlString]]) {
//        
//        if ([[UIDevice currentDevice].systemVersion doubleValue] >= 10.0) {
//            
//            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
//            
//        } else {
//            
//            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
//            
//        }
//        
//    }
 //   [self alpha0];
 //   NSString *toPinY = [self transform:@"李伟"];
  //  NSLog(@"转换：%@",toPinY);
    
   // [self setStatusBarBackgroundColor:[UIColor greenColor]];
    
    [lottie play];
    
}
-(void)alpha0{

    ModleController *vc = [[ModleController alloc] init];
    UINavigationController *na = [[UINavigationController alloc] initWithRootViewController:vc];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
    {
        na.modalPresentationStyle = UIModalPresentationPageSheet;
    }
    else
    {
        self.modalPresentationStyle=UIModalPresentationPopover;
    }
    
    [self presentViewController:na animated:YES completion:nil];
    

}

-(void)defaultUI{
    
    unsigned int outCount = 0 ;
    
    
  objc_property_t   *propers =  class_copyPropertyList([UserStatus class], &outCount);
    
    
    for (NSInteger i=0 ;i<outCount;i++) {
     NSString *name  =  @(property_getName(propers[i]));
        
        NSString *attributes = @(property_getAttributes(propers[i]));
        
        NSLog(@"%@========%@",name,attributes);
        
    }
    
    unsigned int methods = 0;
    Method *methoList = class_copyMethodList([UserStatus class], &methods);
    
    for (int i=0; i<methods; i++) {
        
      //  NSString *name = method_getName(methoList[i]);
        
        
    }
    NSTimer *time;
 //   UITrackingRunLoopMode
   // [[NSRunLoop currentRunLoop] addTimer:time forMode:nsrun]
    
    
    input = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    input.textColor = [UIColor redColor];
    input.font  = [UIFont systemFontOfSize:30];
    [self.view addSubview:input];
    input.center = self.view.center;
    input.tintColor = [UIColor greenColor];
    input.placeholder  = @"输入";
    input.layer.borderColor = [UIColor purpleColor].CGColor;
    input.layer.borderWidth = 2;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(200, 200, 90, 40)];
    [btn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];

    textStyleIndex = 0;
 //   [self registerNotification];
    [self testFontTextStyle];
}
-(void)click{
    NSString *pattern = @"^\\d{2,8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES%@", pattern];
    BOOL isMatch = [pred evaluateWithObject:input.text];
    
    NSLog(@"====匹配==%D",isMatch);
}
-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 手动触发
-(void)willChangeValueForKey:(NSString *)key{

}


-(void)didChangeValueForKey:(NSString *)key{


}

-(void)registerNotification{

    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(resetLabelStyle:) name:UIContentSizeCategoryDidChangeNotification object:nil];
    
}

/**
 // 标题1样式
 @available(iOS 9.0, *)
 public static let title1: UIFontTextStyle
 // 标题2样式
 @available(iOS 9.0, *)
 public static let title2: UIFontTextStyle
 // 标题3样式
 @available(iOS 9.0, *)
 public static let title3: UIFontTextStyle
 // 大标题样式
 @available(iOS 7.0, *)
 public static let headline: UIFontTextStyle
 // 小标题样式
 @available(iOS 7.0, *)
 public static let subheadline: UIFontTextStyle
 // 主内容样式
 @available(iOS 7.0, *)
 public static let body: UIFontTextStyle
 // 插图样式
 @available(iOS 9.0, *)
 public static let callout: UIFontTextStyle
 // 脚注样式
 @available(iOS 7.0, *)
 public static let footnote: UIFontTextStyle
 // 说明1样式
 @available(iOS 7.0, *)
 public static let caption1: UIFontTextStyle
 // 说明2样式
 @available(iOS 7.0, *)
 public static let caption2: UIFontTextStyle

 */


-(void) testFontTextStyle {
    
    [self addFontLabelWithTextStyle:UIFontTextStyleTitle1];
    [self addFontLabelWithTextStyle:UIFontTextStyleTitle2];
    [self addFontLabelWithTextStyle:UIFontTextStyleTitle3];
    [self addFontLabelWithTextStyle:UIFontTextStyleHeadline];
    [self addFontLabelWithTextStyle:UIFontTextStyleSubheadline];
    [self addFontLabelWithTextStyle:UIFontTextStyleBody];
    [self addFontLabelWithTextStyle:UIFontTextStyleCallout];
    [self addFontLabelWithTextStyle:UIFontTextStyleFootnote];
    [self addFontLabelWithTextStyle:UIFontTextStyleCaption1];
    [self addFontLabelWithTextStyle:UIFontTextStyleCaption2];
}
// 添加label
-(void)addFontLabelWithTextStyle:(UIFontTextStyle)style {
    UILabel * label = [[UILabel alloc]initWithFrame: CGRectMake(40, 80 + textStyleIndex * 40 , 400, 20)];
    label.text = style;
    label.adjustsFontForContentSizeCategory = YES;
    label.font = [UIFont preferredFontForTextStyle:style];
    [self.view addSubview:label];
     textStyleIndex += 1;
}


// 回调通知
-(void) resetLabelStyle:(NSNotification*)notification {
    
    NSLog(@"处理中");
    
    for (UIView *temp in self.view.subviews) {
        
        if ([temp isKindOfClass:[UILabel class]]) {
            
            UILabel *result = (UILabel *)temp;
       NSString *style = [result.font.fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];
            
            result.font = [UIFont preferredFontForTextStyle:style];
        }
    }
    
}

-(void)httpCookie{

  //  NSHTTPCookie *cookie = [NSHTTPCookie cookieWithProperties:@{NSHTTPCookieName:@"customerCookie",NSHTTPCookieValue:@"liwei",NSHTTPCookieDomain:@".baidu.com",NSHTTPCookiePath:@"/"}];
    
    NSArray *cookies = [NSHTTPCookieStorage sharedHTTPCookieStorage].cookies;
    
    
    NSLog(@"%@",cookies);
    
}

// 无限调试。window， via network  connect via address。

// 视图所在控制器
- (UIViewController *)viewController
{
    UIViewController *viewController = nil;
    UIResponder *next = self.nextResponder;
    while (next)
    {
        if ([next isKindOfClass:[UIViewController class]])
        {
            viewController = (UIViewController *)next;
            break;
        }
        next = next.nextResponder;
    }
    return viewController;
}

//方法一
-(void)deketeDefault{
   NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
[[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];
}

//方法二
- (void)resetDefaults
{
    NSUserDefaults * defs = [NSUserDefaults standardUserDefaults];
    NSDictionary * dict = [defs dictionaryRepresentation]; //返回domain'下的所有key。
    for (id key in dict)
    {
        [defs removeObjectForKey:key];
    }
    [defs synchronize];
}
-(NSString *)transform:(NSString *)chinese
{
    //将NSString装换成NSMutableString
    NSMutableString *pinyin = [chinese mutableCopy];
    //将汉字转换为拼音(带音标)
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    NSLog(@"%@", pinyin);
    //去掉拼音的音标
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    NSLog(@"%@", pinyin);
    //返回最近结果
    return pinyin;
}
-(UIStatusBarStyle)preferredStatusBarStyle{

    return UIStatusBarStyleLightContent;
}
#pragma status 处理
- (void)setStatusBarBackgroundColor:(UIColor *)color
{
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    
    NSLog(@"%@",[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"]);
    
    
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)])
    {
        statusBar.backgroundColor = color;
    }
}
//判断当前ViewController是push还是present的方式显示的
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
