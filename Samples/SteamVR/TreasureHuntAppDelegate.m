#if !defined(__has_feature) || !__has_feature(objc_arc)
#error "This file requires ARC support. Compile with -fobjc-arc"
#endif

#import "SteamVRAppDelegate.h"

#import "SteamVRViewController.h"

@implementation SteamVRAppDelegate

#pragma mark - UIApplicationDelegate overrides

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  UINavigationController *navigationController = [[UINavigationController alloc]
                          initWithRootViewController:[[SteamVRViewController alloc] init]];
  navigationController.navigationBarHidden = YES;

  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.rootViewController = navigationController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
