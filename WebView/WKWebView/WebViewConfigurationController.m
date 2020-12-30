//
//  WebViewConfigurationController.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "WebViewConfigurationController.h"
#import <WebKit/WebKit.h>

@interface WebViewConfigurationController ()

@end

@implementation WebViewConfigurationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- WKWebViewConfiguration
    
    /**
     A collection of properties that you use to initialize a web view.

     A WKWebViewConfiguration object provides information about
     how to configure a WKWebView object. Use your configuration
     object to specify:
     
     •  The initial cookies to make available to your web content
     •  Handlers for any custom URL schemes your web content uses
     •  Setting for how to handle media content
     •  Information about how to manage selections within the web view
     •  Custom scripts to inject into the webpage
     •  Custom rules that determine how to render content
     
     You create a WkWebViewConfiguration object in your code, configure
     its properties, and pass it to the initializer of your WKWebView
     object. The web view incorporates your configuration settings
     only at creation time, you cannot change those settings dynamically
     later.
     */
    
    WKWebViewConfiguration *webViewConfiguration = [WKWebViewConfiguration new];
    /**
     Configuring the Web View's Behavior
     
     ==websiteDataStore
     The object you use to get and set the site’s cookies
     and to track the cached data objects.
     
     ==userContentController
     The object that coordinates interactions between your app’s
     native code and the webpage’s scripts and other content.
     
     ==processPool
     The object that coordinates the processes the web view uses to
     render its web content and execute scripts.
     
     ==applicationNameForUserAgent
     The app name that appears in the user agent string.
     
     ==limitsNavigationsToAppBoundDomains
     A Boolean value that indicates whether the web view limits
     navigation to pages within the app’s domain.
     */
    
    
    /**
     Configuring the Web View’s Preferences
     
     preferences
     The object that manages the preference-related settings for the web view.
     
     defaultWebpagePreferences
     The default preferences to use when loading and rendering content.
     */
    
    
    /**
     Adding Handlers for Custom URL Schemes
     
     - setURLSchemeHandler:forURLScheme:
     Registers an object to load resources associated with the specified URL scheme.
     
     - urlSchemeHandlerForURLScheme:
     Returns the currently registered handler object for the specified URL scheme.
     */
    
    
    /**
     Configuring the Rendering Behavior
     
     ==ignoresViewportScaleLimits
     A Boolean value that determines whether a web view allows
     scaling of the webpage.
     
     ==suppressesIncrementalRendering
     A Boolean value that indicates whether the web view suppresses
     content rendering until the content is fully loaded into memory.
     */
    if (@available(iOS 10.0, *)) {
        webViewConfiguration.ignoresViewportScaleLimits = NO;
    } else {
        // Fallback on earlier versions
    }
    
    
    /**
     Setting Media Playback Preferences
     
     ==allowsInlineMediaPlayback
     A Boolean value that indicates whether HTML5 videos play inline
     or use the native full-screen controller.
     
     ==allowsAirPlayForMediaPlayback
     A Boolean value that indicates whether the web view allows
     media playback over AirPlay.
     
     ==allowsPictureInPictureMediaPlayback
     A Boolean value that indicates whether HTML5 videos can play
     Picture in Picture.
     
     ==mediaTypesRequiringUserActionForPlayback
     The media types that require a user gesture to begin playing.
     
     ==WKAudiovisualMediaTypes
     The media types that require a user gesture to begin playing.
     */
    webViewConfiguration.allowsInlineMediaPlayback = YES;
    webViewConfiguration.allowsAirPlayForMediaPlayback = YES;
    
    
    /**
     Identifying Data Types
     
     ==dataDetectorTypes
     The types of data detectors to apply to the web view’s content.
     
     ==WKDataDetectorTypes
     The data detector types.
     */
    if (@available(iOS 10.0, *)) {
        webViewConfiguration.dataDetectorTypes = UIDataDetectorTypePhoneNumber | UIDataDetectorTypeLink;
    } else {
        // Fallback on earlier versions
    }
    
    
    /**
     Setting Selection Granularity
     
     ==selectionGranularity
     The level of granularity with which the user can interactively
     select web view content.
     
     ==WKSelectionGranularity
     The granularity with which the user can select and modify web
     view content.
     */
    webViewConfiguration.selectionGranularity = WKSelectionGranularityDynamic;
    
    /**
     Selecting User Interface Directionality
     
     userInterfaceDirectionPolicy
     The directionality of user interface elements.
     
     WKUserInterfaceDirectionPolicy
     The policy that determines the directionality of user interface
     elements in a web view.
     */
    
    
    
#pragma mark -- WKWindowFeatures
    
    /**
     Display-related attributes that a webpage requests for its window.

     A WKWindowFeatures object contains the attributes that a
     webpage requests from its containing web view. You don’t
     create a WKWindowFeatures object directly. When a navigation
     action results in the display of a new web view, WKWebView
     creates this object and passes it to the webView:createWebViewWithConfiguration:forNavigationAction:windowFeatures:
     method of its UI delegate object. The delegate uses the information
     in this object to configure and return the new web view.
     */

    /**
     Inspecting Window Position and Dimensions
     
     == allowsResizing
     A Boolean value that indicates whether to make the containing
     window window resizable.
     
     == height
     The requested height of the containing window.
     
     == width
     The requested width of the containing window.
     
     == x
     The requested x-coordinate of the containing window.
     
     == y
     The requested y-coordinate of the containing window.
     */
    
    
    /**
     Inspecting Visibility Properties
     
     == menuBarVisibility
     A Boolean value that indicates whether the webpage requests
     a visible menu bar.
     
     == statusBarVisibility
     A Boolean value that indicates whether the webpage requested a
     visible status bar.
     
     == toolbarsVisibility
     A Boolean value that indicates whether the webpage requested
     a visible toolbar.
     */
    
    
#pragma mark -- WKProcessPool
    
    /**
     WKProcessPool
     An opaque token that you use to run multiple web views in
     a single process.

     A WKProcessPool object represents a single process that WebKit
     uses to manage web content. To provide a more secure and stable
     experience, WebKit renders the content of web views in separate
     processes, rather than in your app’s process space. By default,
     WebKit gives each web view its own process space until it
     reaches an implementation-defined process limit. After that,
     web views with the same WKProcessPool object share the same
     web content process.
     
     If your app creates multiple web views, assign the same
     WKProcessPool object to web views that may safely share
     a process space. Instantiate an instance of this class and
     assign it to the processPool property of each web view’s
     WKWebViewConfiguration object.
     */
    
    
#pragma mark -- WKPreferences
    
    /**
     WKPreferences
     An object that encapsulates the standard behaviors to
     apply to websites.

     Use a WKPreferences object to specify the preferences for
     your website, including the minimum font size, the JavaScript
     behavior, and the behavior for handling fraudulent websites.
     Create this object and assign it to the preferences property
     of the WKWebViewConfiguration object you use to create your
     web view.
     */
    
    /**
     Setting Rendering Preferences
     
     ==minimumFontSize
     The minimum font size, in points.
     
     ==tabFocusesLinks
     A Boolean value that indicates whether pressing the tab
     key changes the focus to links and form controls.
     */
    
    /**
     Setting Java and JavaScript Preferences
     
     == javaScriptCanOpenWindowsAutomatically
     A Boolean value that indicates whether JavaScript can open windows
     without user interaction.
     */
    
    /**
     Setting Fraud Warning Preferences
     
     == fraudulentWebsiteWarningEnabled
     A Boolean value that indicates whether the web view shows warnings
     for suspected fraudulent content, such as malware or phishing attemps.
     */
    
    
#pragma mark -- WKWebpagePreferences
    
    /**
     An object that specifies the behaviors to use when
     loading and rendering page content.

     Create a WKWebpagePreferences object when you want to
     change the default rendering behavior of your web view.
     Typically, iOS devices render web content for a mobile
     experience, and Mac devices render content for a desktop
     experience.
     */
    
    
    /**
     Setting the JavaScript Preferences

     == allowsContentJavaScript
     A Boolean value that indicates whether JavaScript from web
     content is allowed to run.
     */
    
    /**
     Setting the Preferred Content Mode
     
     ==preferredContentMode
     The content mode for the web view to use when it loads
     and renders a webpage.
     
     ==WKContentMode
     Constants that indicate how to render web view content.
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
