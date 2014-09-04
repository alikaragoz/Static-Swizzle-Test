//
//  AIAppDelegate.m
//  Static Swizzle
//
//  Created by Ali Karagoz on 04/09/14.
//
//

#import "AIAppDelegate.h"

#import "GADInterstitial.h"
#import "GADInterstitial+Swizzle.h"

@interface AIAppDelegate ()

@property (nonatomic, strong) GADInterstitial *interstitial;

@end

@implementation AIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Interstitial
    self.interstitial = [[GADInterstitial alloc] init];
    NSLog(@"%s Interstitial Class : %@", __PRETTY_FUNCTION__, self.interstitial.class);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *viewController = [[UIViewController alloc] init];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
