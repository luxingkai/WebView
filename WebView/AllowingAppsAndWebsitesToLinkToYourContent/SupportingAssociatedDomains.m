//
//  SupportingAssociatedDomains.m
//  WebView
//
//  Created by tigerfly on 2020/12/29.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "SupportingAssociatedDomains.h"

@interface SupportingAssociatedDomains ()

@end

@implementation SupportingAssociatedDomains

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /*
     Connect your app and a website to provide both a native
     app and a browser experience.
     
     Associated domains establish a secure association between
     domains and your app so you can share credential or
     provide features in your app from your website. For example,
     an online retailer may offer an app to accompany their
     website and enhance the uesr experience.
     
     Shared web credentails, universal links, Handoff, and App
     Clips all use associated domains. Associated domains provide
     the underpinning to universal links, a feature that allows
     an app to present content in place of all or part of its
     website. Users who don't download the app get the same
     information in a web browser instead of the native app.
     
     To associate a website with your app, you'll need to have
     the associated domain file on your website and the appropriate
     entitlement in your app.  The apps in the apple-app-site-association
     file on your website must have a matching Associated Domains Entitlement.
     */
    
    
    /**
     Add the Associated Domain File to Your Website

     When a user installs your app, the system attempts to download
     the associated domain file and verify the domains in your entitlement.
     
     ⚠️ If your site uses multiple subdomains (such as example.com,
     www.example.com, or support.example.com), each requires its
     own entry in the Associated Domains Entitlement, and each
     must serve its own apple-app-site-association file.
     
     To add the associated domain file to your website, create a
     file named apple-app-site-association (without an extension).
     Update the JSON code in the file for the services you’ll
     support on the domain. For universal links, be sure to list
     the app identifiers for your domain in the applinks service.
     Similarly, if you create an App Clip, be sure to list your
     App Clip’s app identifier using the appclips service.
     
     The following JSON code represents the contents of a simple
     association file.
     ===============================================================
     {
       "applinks": {
           "details": [
                {
                  "appIDs": [ "ABCDE12345.com.example.app", "ABCDE12345.com.example.app2" ],
                  "components": [
                    {
                       "#": "no_universal_links",
                       "exclude": true,
                       "comment": "Matches any URL whose fragment equals no_universal_links and instructs the system not to open it as a universal link"
                    },
                    {
                       "/": "/buy/*",
                       "comment": "Matches any URL whose path starts with /buy/"
                    },
                    {
                       "/": "/help/website/*",
                       "exclude": true,
                       "comment": "Matches any URL whose path starts with /help/website/ and instructs the system not to open it as a universal link"
                    },
                    {
                       "/": "/help/*",
                       "?": { "articleNumber": "????" },
                       "comment": "Matches any URL whose path starts with /help/ and which has a query item with name 'articleNumber' and a value of exactly 4 characters"
                    }
                  ]
                }
            ]
        },
        "webcredentials": {
           "apps": [ "ABCDE12345.com.example.app" ]
        },
         "appclips": {
             "apps": ["ABCED12345.com.example.MyApp.Clip"]
         }
     }
     ===============================================================
     
     The appIDs and apps keys specify the application identifiers
     for the apps that are available for use on this website along
     with their service types. Use the following format for the
     values in these keys:
     ===============================================================
     <Application Identifier Prefix>.<Bundle Identifier>
     ===============================================================

     The details dictionary only applies to the applinks service
     type; other service types don’t use it. The components key
     is an array of dictionaries that provides pattern matching
     for components of the URL.
     
     After you construct the association file, place it in your
     site’s .well-known directory. The file’s URL should match
     the following format:
     ===============================================================
     https://<fully qualified domain>/.well-known/apple-app-site-association
     ===============================================================

     You must host the file using https:// with a valid certificate
     and with no redirects.
     */
    
    
    /**
     Add the Associated Domains Entitlement to Your App

     To set up the entitlement in your app, open the project’s
     Signing & Capabilities tab in Xcode and add the Associated
     Domains capability. If they’re not already present, this
     step adds the Associated Domains Entitlement to your app
     and the associated domains feature to your app ID.
     
     To add your domain to the entitlement, click Add (+) at the
     bottom of the Domains table to add a placeholder domain.
     Replace the placeholder with the appropriate prefix for the
     service your app will support, and your site’s domain.
     file:///Users/tigerfly/Desktop/WebView/WebView/741497b6-a7af-427b-9e5a-4980336ac70e.png
     
     Add the domains you want your app to share credentials with.
     To match all subdomains of an associated domain, specify a
     wildcard with the prefix *. before the beginning of a
     specific domain.
     Each domain you specify uses the following format:
     ===============================================================
     <service>:<fully qualified domain>
     ===============================================================

     Starting with macOS 11 and iOS 14, apps no longer send
     requests for apple-app-site-association files directly
     to your web server. Instead, they send these requests
     to an Apple-managed content delivery network (CDN)
     dedicated to associated domains.
     
     While you’re developing your app, if your web server is
     unreachable from the public internet, you can use the
     alternate mode feature to bypass the CDN and connect
     directly to your private domain.
     
     You enable an alternate mode by adding a query string
     to your associated domain’s entitlement as follows:
     ===============================================================
     <service>:<fully qualified domain>?mode=<alternate mode>
     ===============================================================

     
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
