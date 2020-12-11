//
//  WebView.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "WebView.h"

@interface WebView ()

@end

@implementation WebView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     An object that displays interactive web content, such as for
     an in-app browser.
     
     A WKWebView object is a platform-native view that you use to
     incorporate web content seamlessly into your app's UI. A web
     view supports a full web-browsing experience, and presents
     HTML, CSS, and JavaScript content alongside your app's native
     views. Use it when web technologies satisfy your app's layout
     and styling requirements more readily than native views. For
     example, your might use it when your app's content changes
     frequently.
     
     A web view offers control over the navigation and user experience
     through delegate objects. Use the navigation delegate to react
     when the user clicks links in your web content, or interacts
     with the content in a way that affects navigation. For example,
     you might prevent the user from navigating to new content unless
     specific conditions are met. Use the UI delegate to present
     native UI elements, such as alerts or contextual menus, in
     response to interactions with your web content.
     
     ⚠️  WKWebView replaces with UIWebView class in iOS 8 and later,
     and it replaces the Web View class in masOS 10.10 and later.
     
     Embed a WKWebView object programmatically into your view hierarchy,
     or add it using interface Builder. Interface Builder supports
     many customizations, such as configuring data detectors, media
     playback, and interaction behaviors. For more extensive customizations,
     create your web view programmatically using a WKWebViewConfiguration
     object. For example, use a wbe View configuration object to specify
     handlers for custom URL schemes, manage cookies, and customize
     preferences for your web content.
     
     Before your web view appears onscreen, load content from a web
     server using a URLRequest structure or load content directly
     from a local file or HTML string. The web view automatically
     loads embedded resources such as images or video as part of the
     intial load request. It then renders your content and displays
     the results inside the view's bounds rectangle. The following
     code example shows a view controller that replaces its default
     view with a custom WKWebView object.
     
     A web view automatically converts telephone numbers that appear
     in web content to Phone links. When the user taps a Phone link,
     the Phone app launches and dails teh number. Use the
     WKWebViewConfiguration object to change the default data detector
     behavior.
     
     You can also use setMagnification:centeredAtPoint: to programmatically
     set the scale of web content the first time it appears in a web
     view. Thereafter, the user can change the scale using gestures.
     */
    
    
    /**
     Managing the Navigation Through Your Web Content
     
     WKWebView provides a complete browsing experience, including
     the ability to navigate between different webpages using links,
     forward and back buttons, and more. When the user clicks a link
     in your content, the web view acts like a browser and displays
     the content at that link. To disallow navigation, or to customize
     your web view's navigation behavior, provides your web view with
     a navigation delegate -- that is, an object that conforms to the
     WKNavigationDelegate protocol. Use your navigation delegate to
     modify the web view's navigation behavior, or to track the loading
     progress of new content.
     
     You can also use the methods of WKWebView to navigation programmatically
     through your content, or to tirgger navigation from other parts of
     your app's interface. For example, if your UI includes forward and back
     buttons, connect those buttons to the goBack: and goForward: methods
     of your web view to trigger the corresponding web navigation. Use the
     canGoBack and canGoForward properties to determine when to enable or
     disable your buttons.
     */
    
    
#pragma mark -- Creating a Web View
    
//    [WKWebView alloc] initWithFrame:<#(CGRect)#> configuration:<#(nonnull WKWebViewConfiguration *)#>
    WKWebView *webView = nil;
//    webView.configuration
    
    
#pragma mark -- Determining Whether WebKit Can Load Content
    
//    WKWebView handlesURLScheme:<#(nonnull NSString *)#>
    
    
#pragma mark -- Displaying Native User Interface Elements
    
//    webView.UIDelegate
        
    
#pragma mark -- Managing Navigation Between Webpages
    
//    webView.navigationDelegate

    
#pragma mark -- Loading Web Content
        
//    webView loadRequest:<#(nonnull NSURLRequest *)#>
//    webView loadHTMLString:<#(nonnull NSString *)#> baseURL:<#(nullable NSURL *)#>
//    webView loadFileURL:<#(nonnull NSURL *)#> allowingReadAccessToURL:<#(nonnull NSURL *)#>
//    webView loadData:<#(nonnull NSData *)#> MIMEType:<#(nonnull NSString *)#> characterEncodingName:<#(nonnull NSString *)#> baseURL:<#(nonnull NSURL *)#>
//    webView.loading
//    webView.estimatedProgress
    
#pragma mark -- Managing the Loading Process
    
//    [webView reload];
//    webView reloadFromOrigin
//    webView.reloadFromOrigin
//    webView stopLoading
//    webView.stopLoading
 
    
#pragma mark -- Inspecting the View Information
    
//    webView.scrollView
//    webView.title
//    webView.URL
//    webView.customUserAgent
//    webView.serverTrust
//    webView.hasOnlySecureContent
    
    
#pragma mark -- Searching the Current Page's Content (iOS14)
    
#pragma mark -- Navigating Between Webpages
    
//    webView.allowsBackForwardNavigationGestures
//    webView.backForwardList
//    webView goBack
//    webView.goBack
//    webView goForward
//    webView.goForward
//    webView goToBackForwardListItem:<#(nonnull WKBackForwardListItem *)#>
//    webView canGoBack
//    webView canGoForward
//    webView.allowsLinkPreview
    
#pragma mark -- Capturing the WebView's Content
    
//    webView takeSnapshotWithConfiguration:<#(nullable WKSnapshotConfiguration *)#> completionHandler:<#^(UIImage * _Nullable snapshotImage, NSError * _Nullable error)completionHandler#>
    
    
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
