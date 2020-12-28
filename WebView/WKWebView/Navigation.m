//
//  Navigation.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "Navigation.h"

@interface Navigation ()

@end

@implementation Navigation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- WKNavigationDelegate
    
    /*
     WKNavigationDelegate
     
     Methods for accepting or rejecting navigation changes,
     and for tracking the progress of navigation requests.

     Implement the methods of the WKNavigationDelegate protocol in
     the object you use to coordinate changes in your web view’s
     main frame. As the user attempts to navigate web content, the
     web view coordinates with its navigation delegate to manage
     any transitions. For example, you might use these methods to
     restrict navigation from specific links within your content.
     You might also use them to track the progress of requests, and
     to respond to errors and authentication challenges.
     */
    
    
    /**
     Allowing or Denying Navigation Requests
     
     - webView:decidePolicyForNavigationAction:preferences:decisionHandler:
     Asks the delegate for permission to navigate to new content based
     on the specified preferences and action information.
     
     - webView:decidePolicyForNavigationAction:decisionHandler:
     Asks the delegate for permission to navigate to new content
     based on the specified action information.
     
     - webView:decidePolicyForNavigationResponse:decisionHandler:
     Asks the delegate for permission to navigate to new content
     after the response to the navigation request is known.
     
     ==WKNavigationActionPolicy
     Constants that indicate whether to allow or cancel navigation to a webpage.
     
     ==WKNavigationResponsePolicy
     Constants that indicate whether to allow or cancel navigation to a webpage.
     */
    
    
    /**
     Tracking the Load Progress of a Request

     
     webView:didStartProvisionalNavigation:
     Tells the delegate that navigation from the main frame has started.

     - webView:didReceiveServerRedirectForProvisionalNavigation:
     Tells the delegate that the web view received a server redirect
     for a request.
     
     - webView:didCommitNavigation:
     Tells the delegate that the web view has started to receive
     content for the main frame.
     
     - webView:didFinishNavigation:
     Tells the delegate that navigation is complete.
     */
    

    
    /**
     Responding to Authentication Challenges

     - webView:didReceiveAuthenticationChallenge:completionHandler:
     Asks the delegate to respond to an authentication challenge.

     - webView:authenticationChallenge:shouldAllowDeprecatedTLS:
     Asks the delegate whether to continue with a connection that
     uses a deprecated version of TLS.
     */
    
    
    /**
     Responding to Navigation Errors

     - webView:didFailNavigation:withError:
     Tells the delegate that an error occurred during navigation.
     
     - webView:didFailProvisionalNavigation:withError:
     Tells the delegate that an error occurred during the early
     navigation process.
     
     - webViewWebContentProcessDidTerminate:
     Tells the delegate that the web view’s content process was terminated.
     */
    
    
    
#pragma mark -- WKBackForwordList
    
    /**
     An object that manages the list of previously loaded webpages,
     which the web view uses for forward and backward navigation.

     Use a WKBackForwardList object to retrieve a web view’s
     previously loaded pages. Typically, you don’t create
     WKBackForwardList objects directly. Each web view creates
     one automatically and uses it to store the history of all
     loaded pages. Fetch this object from your web view’s
     backForwardList property and use its contents to facilitate
     programmatic navigation.
     */

    /**
     Getting the Most Recent Items
     
     backItem
     The item immediately preceding the current item, if any.
     
     currentItem
     The current item.
     
     forwardItem
     The item immediately following the current item, if any.
     */
    
    
    /**
     Getting Specific Items in the List
     
     - itemAtIndex:
     Returns the item at the relative offset from the current item.
     */
    
    
    /**
     Getting Sublists
     
     backList
     The array of items that precede the current item.
     
     forwardList
     The array of items that follow the current item.
     */
    
    
    
#pragma mark -- WKBackForwardListItem
    
    /**
     A representation of a webpage that the web view previously
     visited.

     Use a WKBackForwardListItem object to get information about
     previously visited webpages. This object identifies the
     page’s title and URL. It also identifes the URL that requested
     the webpage.
     
     You don’t create WKBackForwardListItem objects directly.
     Instead, a WKBackForwardList object creates them in conjunction
     with its associated web view when the web view loads new pages.
     */
    
    /**
     Getting the Page-Specific Information
     
     ==title
     The title of the webpage this item represents.
     
     ==URL
     The URL of the webpage this item represents.
     */

    /**
     Getting the Requesting Page
     
     ==initialURL
     The source URL that originally asked the web view
     to load this page.
     */
    
    
    
#pragma mark -- WKNavigation
    
    /**
     An object that tracks the loading progress of a webpage.
     
     A WKNavigation object uniquely identifies a load request
     for a webpage. When you ask a web view to load content or
     navigate to a page, the web view returns a WKNavigation
     object that identifies your request. As the load operation
     progresses, the web view reports progress of that operation
     to various methods of its navigation delegate, passing them
     the matching WKNavigation object.
     */
    
    /**
     Getting the Content Mode
     
     effectiveContentMode
     The content mode WebKit uses to load the webpage.
     */
    
    
#pragma mark -- WKNavigationAction
    
    /**
     An object that contains information about an action that
     causes navigation to occur.

     Use a WKNavigationAction object to make policy decisions
     about whether to allow navigation within your app’s web
     view. You don’t create WKNavigationAction objects directly.
     Instead, the web view creates them and delivers them to
     the appropriate delegate objects. Use the methods of your
     delegate to analyze the action and determine whether to
     allow the resulting navigation to occur.
     */
    
    /**
     Getting the Navigation Type
     
     navigationType
     The type of action that triggered the navigation.
     
     WKNavigationType
     The type of action that triggered the navigation.
     */
    
    
    /**
     Inspecting Navigation Information
     
     request
     The URL request object associated with the navigation action.
     
     sourceFrame
     The frame that requested the navigation.
     
     targetFrame
     The frame in which to display the new content.
     */
    
    
    /**
     Inspecting User Actions
     
     buttonNumber
     The number of the mouse button that caused the navigation request.
     
     modifierFlags
     The modifier keys that were pressed at the time of the
     navigation request.
     */
    
    
#pragma mark -- WKNavigationResponse

    /**
     An object that contains the response to a navigation
     request, and which you use to make navigation-related policy decisions.

     Use a WKNavigationResponse object to make policy decisions
     about whether to allow navigation within your app’s web
     view. You don’t create WKNavigationResponse objects directly.
     Instead, the web view creates them and delivers them to the
     appropriate delegate objects. Use the methods of your
     delegate to analyze the response and determine whether
     to allow the resulting navigation to occur.
     */
    
        
    /**
     Getting the Response Details
     
     response
     The frame’s response.
     */
    
    /**
     Getting Additional Response Information
     
     canShowMIMEType
     A Boolean value that indicates whether WebKit is capable
     of displaying the response’s MIME type natively.
     
     forMainFrame
     A Boolean value that indicates whether the response targets
     the web view’s main frame.
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
