//
//  UIResponder+CPWindow.m
//  CommonProject
//
//  Created by Wang, Haizhou on 2020/10/22.
//

#import "UIResponder+CPWindow.h"

#import "CPTabBarViewController.h"

@implementation UIResponder (CPWindow)

- (void)makeKeyAndVisibleWithScene:(id)scene {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    if (@available(iOS 13, *)) {
        if (scene) {
            UIWindowScene *windowScene = (UIWindowScene *)scene;
            [window setWindowScene:windowScene];
        }
    }
    window.rootViewController = [[CPTabBarViewController alloc] init];
    [window makeKeyAndVisible];
    [self setValue:window forKey:@"window"];
}

@end
