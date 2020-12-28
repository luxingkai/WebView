//
//  AppDelegate.m
//  WebView
//
//  Created by tiger fly on 2020/4/15.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "WebKitViewController.h"
#import "WebView.h"
#import "WebViewConfigurationController.h"
#import "WebDataManagement.h"
#import "Navigation.h"
#import "PageContent.h"
#import "PageLevelSearch.h"
#import "ContextualMenus.h"
#import "Snapshots.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    PageContent *vc = [PageContent new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}




@end
