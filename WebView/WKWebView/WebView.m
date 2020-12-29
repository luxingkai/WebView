//
//  WebView.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "WebView.h"

@interface WebView ()<WKUIDelegate>

@end

@implementation WebView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
#pragma mark -- Replacing UIWebView in Your App
    
    /*
     Find a suitable alternative to handle your app's web content.
     
     If your app is using UIWebView, you need to replace it with
     another Apple technology, because this class is now deprecated.
     Choose among several technologies, based on your app's functionality
     and the degree of configurability you need. This article explores
     some alternatives and specifically the configuration and
     architectural changes of WKWebView.
     */
    
    
    /**
     Consider Alternative Technologies
     
     Before beginning a migration away from UIWebView, consider whether
     it can be replaced with other tools. Apple has a variety of technologies
     that can replace a web view to accomplish similar functionality, and
     possibly a richer feature set with less code.
     
     If you need an in-app web browser and don't need deep customization
     of that experience, SFSafariViewController is a good choice. It handles
     all the features you would need to implement in a basic browser and more.
     
     If you need to authenticate your users, use ASWebAuthenticationSession.
     If you need to display maps or map tiles, consider using MPMapView.
     */
    
    /**
     Update to WKWebView
     
     If you need a high degree of configurability or are using web content
     in ways unrelated to browsing, Use WKWebView.
     
     WKWebView is not a drop-in replacement for UIWebView. It has a
     different architecture that requires rethinking how you use web views,
     as well as code changes to implement its functionality.
     You may not be able to implement some features in WKWebView.
     */
    
    /**
     Implement Delegates for Functionality

     WKWebView uses various delegates to implement functionality
     that is similar to UIWebView Delegate. The table below shows
     the UIWebViewDelegates and their WKWebView equivalents, in
     the WKNavigationDelegate column.
     
     UIWebViewDelegate
     webViewDidStartLoad:
     webViewDidFinishLoad:
     webView:didFailLoadWithError:
     webView:shouldStartLoadWithRequest:navigationType:
     connection:didReceiveAuthenticationChallenge:
     
     WKNavigationDelegate
     webview:didStartProvisionalNavigation:
     webView:didFinishNavigation:
     webView:didFailProvisionalNavigation:withError:
     webView:didFailNavigation:withError:
     webView:decidePolicyForNavigationAction:decisionHandler:
     webView:decidePolicyForNavigationResponse:decisionHandler:
     webView:didReceiveAuthenticationChallenge:completionHandler:
     
     ⚠️ The webView:decidePolicyForNavigationAction:decisionHandler:
     function doesn't return a BOOL as its UIWebView counterpart did;
     it uses the decisionHandler to return an allow or cancel value.
     */
    
    
    /**
     Plan for Architectural Changes
     
     One major architectural difference between UIWebView and WKWebView
     is that WkWebView's methods tend to be asynchronous, while
     UIWebView's methods were synchronous.
     
     This difference requires code and architecture changes in your app.
     Another major change relates to creating single sign on (SSO)
     functionality. Cookie restrictions across the entire WKWebView
     landscape, mean SSO functionality in WKWebView is not supported
     for third-party cookies and clients should use a token-based
     authentication system like OAuth for SSO. Third-party cookies
     are cookies for a domain other than the domain for which the
     context was loaded. APIs in the Authentication Service
     framework are specifically built to do this.
     */
    
    
    
#pragma mark --
    
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
     object. For example, use a web View configuration object to specify
     handlers for custom URL schemes, manage cookies, and customize
     preferences for your web content.
     
     Before your web view appears onscreen, load content from a web
     server using a URLRequest structure or load content directly
     from a local file or HTML string. The web view automatically
     loads embedded resources such as images or video as part of the
     initial load request. It then renders your content and displays
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
    
    
 
    /**
     Creating a Web View
     */
//    [WKWebView alloc] initWithFrame:<#(CGRect)#> configuration:<#(nonnull WKWebViewConfiguration *)#>
    WKWebView *webView = nil;
//    webView.configuration
    
    
    /**
     Determining Whether WebKit Can Load Content
     */
//    WKWebView handlesURLScheme:<#(nonnull NSString *)#>
    
    
    /**
     Displaying Native User Interface Elements
     */
//    webView.UIDelegate
        
    
    /**
     Managing Navigation Between Webpages
     */
//    webView.navigationDelegate


    /**
     Loading Web Content
     */
//    webView loadRequest:<#(nonnull NSURLRequest *)#>
//    webView loadHTMLString:<#(nonnull NSString *)#> baseURL:<#(nullable NSURL *)#>
//    webView loadFileURL:<#(nonnull NSURL *)#> allowingReadAccessToURL:<#(nonnull NSURL *)#>
//    webView loadData:<#(nonnull NSData *)#> MIMEType:<#(nonnull NSString *)#> characterEncodingName:<#(nonnull NSString *)#> baseURL:<#(nonnull NSURL *)#>
//    webView.loading
//    webView.estimatedProgress
    
    
    /**
     Managing the Loading Process
     */
//    [webView reload];
//    webView reloadFromOrigin
//    webView.reloadFromOrigin
//    webView stopLoading
//    webView.stopLoading
 

    /**
     Inspecting the View Information
     */
//    webView.scrollView
//    webView.title
//    webView.URL
//    webView.customUserAgent
//    webView.serverTrust
//    webView.hasOnlySecureContent
    
    
    /**
     Searching the Current Page's Content (iOS14)
     */
    
    
    /**
     Navigating Between Webpages
     */
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

    
    /**
     Executing JavaScript
     */
//    webView evaluateJavaScript:<#(nonnull NSString *)#> completionHandler:<#^(id _Nullable, NSError * _Nullable error)completionHandler#>
    
    
    /**
     Capturing the WebView's Content
     */
//    webView takeSnapshotWithConfiguration:<#(nullable WKSnapshotConfiguration *)#> completionHandler:<#^(UIImage * _Nullable snapshotImage, NSError * _Nullable error)completionHandler#>
    
    
    
#pragma mark -- WKUIDelegate
    
    /**
     The methods for presenting native user interface elements
     on behalf of a webpage.
     
     Web view user interface delegates implement this protocol
     to control the opening of new windows, augment the behavior
     of default menus items displayed when the user clicks
     elements, and perform other user interface-related tasks.
     These methods can be invoked as a result of handling JavaScript
     or other plug-in content. The default web view implementation
     assumes one window per web view, so nonconventional uesr interfaces
     might implement a user interface delegate.
     */
    
    /**
     Creating and Closing the Web View
     
     - webView:createWebViewWithConfiguration:forNavigationAction:windowFeatures:
     Creates a new web view.
     
     - webViewDidClose:
     Notifies your app that the DOM window closed successfully.
     */
    
    /**
     Displaying UI Panels
     
     - webView:runJavaScriptAlertPanelWithMessage:initiatedByFrame:completionHandler:
     Displays a JavaScript alert panel.

     - webView:runJavaScriptConfirmPanelWithMessage:initiatedByFrame:completionHandler:
     Displays a JavaScript confirm panel.
     
     - webView:runJavaScriptTextInputPanelWithPrompt:defaultText:initiatedByFrame:completionHandler:
     Displays a JavaScript text input panel.
     */
    
    /**
     Displaying an Upload Panel
     
     - webView:runOpenPanelWithParameters:initiatedByFrame:completionHandler:
     Displays a file upload panel.
     
     WKOpenPanelParameters
     The configuration details of a file upload control in your web content.
     */
    
    /**
     Displaying a Contextual Menu
     
     - webView:contextMenuConfigurationForElement:completionHandler:
     Tells the delegate that a contextual menu interaction began.
     
     - webView:contextMenuForElement:willCommitWithAnimator:
     Provides the delegate with the animator object that the web view
     uses to display the contextual menu.
     
     - webView:contextMenuWillPresentForElement:
     Tells the delegate that the web view is about to present the
     contextual menu for the specified element.
     
     - webView:contextMenuDidEndForElement:
     Tells the delegate that the web view dismissed the contextual
     menu for the specified element.
     
     UIContextMenuConfiguration
     An object containing the configuration details for the contextual menu.
     */
    
}

#pragma mark -- Creating and Closing the Web View
- (nullable WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures {
    return nil;
}

- (void)webViewDidClose:(WKWebView *)webView {
    
}

#pragma mark -- Displaying UI Panels
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler {
    
}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL))completionHandler {
    
}

- (void)webView:(WKWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * _Nullable))completionHandler {
    
}

#pragma mark -- Displaying a Contextual Menu

- (void)webView:(WKWebView *)webView contextMenuConfigurationForElement:(WKContextMenuElementInfo *)elementInfo completionHandler:(void (^)(UIContextMenuConfiguration * _Nullable))completionHandler {
    
}

- (void)webView:(WKWebView *)webView contextMenuForElement:(WKContextMenuElementInfo *)elementInfo willCommitWithAnimator:(id<UIContextMenuInteractionCommitAnimating>)animator {
    
}

- (void)webView:(WKWebView *)webView contextMenuWillPresentForElement:(WKContextMenuElementInfo *)elementInfo {
    
}

- (void)webView:(WKWebView *)webView contextMenuDidEndForElement:(WKContextMenuElementInfo *)elementInfo {
    
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
