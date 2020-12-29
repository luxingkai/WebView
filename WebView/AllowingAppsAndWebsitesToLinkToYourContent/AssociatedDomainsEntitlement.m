//
//  AssociatedDomainsEntitlement.m
//  WebView
//
//  Created by tigerfly on 2020/12/29.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "AssociatedDomainsEntitlement.h"

@interface AssociatedDomainsEntitlement ()

@end

@implementation AssociatedDomainsEntitlement

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /*
     Associated Domains Entitlement
     
     The associated domains for specific services, such as
     shared web credentials, universal links, and App Clips.
     ===============================================================
     Key
     com.apple.developer.associated-domains
     
     Type
     Array of strings
     ===============================================================
     */
    
    
    /**
     This key specifies a list of domains for each service
     enabled. Add an associated domain to the list in the
     following format:
     ===============================================================
     <service>:<fully qualified domain>
     ===============================================================

     Services include:
     ===============================================================
     webcredentials
     Use this service for shared web credentials.
     
     applinks
     Use this service for universal links.
     
     activitycontinuation
     Use this service for Handoff.
     
     appclips
     Use this service for an App Clip.
     ===============================================================

     ⚠️ In macOS 11 and later and iOS 14 and later, apps
     request apple-app-site-association files from an
     Apple-managed content delivery network (CDN) dedicated
     to associated domains, instead of directly from your web
     server. If the CDN has an old version of the file, or
     doesn’t already have a copy of the file, it connects to
     your web server to obtain the latest version.
     
     
     While developing your app, if you use a private web
     server that’s unreachable from the public internet,
     you can use the alternate mode feature to bypass the
     CDN and connect directly to your private domain.
     Add a query string to your associated domains
     entitlement as follows:
     ===============================================================
     <service>:<fully qualified domain>?mode=<alternate mode>
     ===============================================================

     Where alternate mode is one of the following:

     developer
     Specifies that only devices in developer mode can access
     the domain. In this mode, you can use any valid SSL
     certificate on your web server, including a certificate
     the system doesn’t trust. Make sure you don’t expose
     your users to security issues, such as man-in-the-middle
     attacks. As an added precaution, only apps signed with
     a development profile can use developer mode, and users
     must opt in on any device they use.
     
     managed
     Specifies that only devices managed with a mobile device
     management (MDM) profile can access the domain. This mode
     requires consent from the MDM administrator.
     
     developer+managed
     Specifies that only devices that are in both developer
     and managed modes at the same time can access the domain.
     
     To add this entitlement to your app, enable the Associated
     Domains capability in Xcode.
     */
    
    
    
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
