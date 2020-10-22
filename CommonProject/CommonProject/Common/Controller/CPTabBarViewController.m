//
//  CPTabBarViewController.m
//  CommonProject
//
//  Created by Wang, Haizhou on 2020/10/22.
//

#import "CPTabBarViewController.h"

#import "CPHomePageViewController.h"
#import "CPMineViewController.h"

@interface CPTabBarViewController ()

@end

@implementation CPTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.viewControllers = @[
        [self _navigationWithClass:CPHomePageViewController.class title:@"首页" imageName:@"" selectedImageName:@""],
        [self _navigationWithClass:CPMineViewController.class title:@"关于" imageName:@"" selectedImageName:@""],
    ];
}

- (UINavigationController *)_navigationWithClass:(Class)class title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[(UIViewController *)[class alloc] init]];
    nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[UIImage imageNamed:imageName] selectedImage:[UIImage imageNamed:selectedImageName]];
    return nav;
}

@end
