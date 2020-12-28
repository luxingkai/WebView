//
//  PageContent.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "PageContent.h"

@interface PageContent ()

@end

@implementation PageContent

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    
#pragma mark --  WKUserContentController
    
    /**
     An object for managing interactions between JavaScript
     code and your web view, and for filtering content in
     your web view.

     A WKUserContentController object provides a bridge
     between your app and the JavaScript code running in
     the web view. Use this object to do the following:
     •  Inject JavaScript code into webpages running in your
        web view.
     •  Install custom JavaScript functions that call through
        to your app’s native code.
     •  Specify custom filters to prevent the webpage from
        loading restricted content.
     
     Create and configure a WKUserContentController object as
     part of your overall web view setup. Assign the object to
     the userContentController property of your WKWebViewConfiguration
     object before creating your web view.
     */
    
    
    /**
     Adding and Removing Custom Scripts

     - addUserScript:
     Injects the specified script into the webpage’s content.
     
     - removeAllUserScripts
     Removes all user scripts from the web view.
     
     userScripts
     The user scripts associated with the user content controller.
     */
    
    
    /**
     Adding and Removing Message Handlers
     
     - addScriptMessageHandler:name:
     Installs a message handler that you can call from your JavaScript code.
     
     - addScriptMessageHandler:contentWorld:name:
     Installs a message handler that you can call from the
     specified content world in your JavaScript code.
     
     - addScriptMessageHandlerWithReply:contentWorld:name:
     Installs a message handler that returns a reply to your JavaScript code.
     
     - removeScriptMessageHandlerForName:
     Uninstalls the custom message handler with the specified name from
     your JavaScript code.
     
     - removeScriptMessageHandlerForName:contentWorld:
     Uninstalls a custom message handler from the specified content world
     in your JavaScript code.
     
     - removeAllScriptMessageHandlersFromContentWorld:
     Uninstalls all custom message handlers from the specified
     content world in your JavaScript code.
     
     - removeAllScriptMessageHandlers
     Uninstalls all custom message handlers associated with the
     user content controller.
     
     WKScriptMessageHandler
     An interface for receiving messages from JavaScript code
     running in a webpage.
     
     WKScriptMessageHandlerWithReply
     An interface for responding to messages from JavaScript
     code running in a webpage.
     */
    
    
    /**
     Adding and Removing Content Rules
     
     - addContentRuleList:
     Adds the specified content rule list to the content controller object.
     
     - removeContentRuleList:
     Removes the specified rule list from the content controller object.

     - removeAllContentRuleLists
     Removes all rules lists from the content controller.
     
     WKContentRuleList
     A compiled list of rules to apply to web content.
     */
    
    
    
#pragma mark -- WKContentRuleListStore
    
    /**
     An object that contains the rules for how to load and
     filter content in the web view.
     
     Use a WKContentRuleListStore to compile and manage
     rules for filtering content in a web view. Rule lists
     act as content blockers inside your app. You use them
     to prevent the web view from loading specific content,
     either based on the original location of that content
     or other criteria you specify. For example, a corporate
     app might use rules to prevent the web view from loading
     content that originates from outside the corporate network.
     
     Fetch the default WKContentRuleListStore object or
     create a custom store object and use it to compile
     or access the available rules. Each store object
     stores its existing rules persistently in the file
     system and loads those rules at creation time. A store
     object doesn’t automatically apply any of its rules
     to a particular web view. To apply a rule to a web
     view, add it to the WKUserContentController object
     of the web view’s configuration object.
     */
    
    
    /**
     Creating a Content Rule List Store
     
     + defaultStore
     Returns the default content rule list store.
     
     + storeWithURL:
     Creates a new content rule list store in the specified directory.
     */
    
    /**
     Creating and Deleting Content Rule Lists
     
     - compileContentRuleListForIdentifier:encodedContentRuleList:completionHandler:
     Compiles the specified JSON content into a new rule list and
     adds it to the current data store.
     
     - removeContentRuleListForIdentifier:completionHandler:
     Removes a rule list from the current data store asynchronously.
     */
    
    /**
     Accessing the Current Rule Lists
     
     - getAvailableContentRuleListIdentifiers:
     Fetches the identifiers for all rule lists in the store asynchronously.
     
     - lookUpContentRuleListForIdentifier:completionHandler:
     Searches asynchronously for a specific rule list in the data store.
     */
    
    
#pragma mark -- WKContentWorld
    
    /**
     An object that defines a scope of execution for JavaScript
     code, and which you use to prevent conflicts between
     different scripts.

     Use a WKContentWorld object as a namespace to separate
     your app’s web environment from the environment of individual
     webpages or scripts you execute. Content worlds help prevent
     issues that occur when two scripts modify environment
     variables in conflicting ways. Executing a script in its
     own content world effectively gives it a separate copy
     of the environment variables to modify. You might use
     this support in the following scenarios:

     •  You have complex script logic to bridge your web
        content to your app, but your web content has complex
        script libraries of its own. In that scenario, use one
        content world for your app-specific scripts and a separate
        content world for your content-specific scripts.

     •  You implement a web browser that supports JavaScript
        extensions. In that scenario, create a unique content
        world for each extension to prevent conflicts between
        the extensions.
     
     A WKContentWorld object is a namespace and doesn’t persist
     data outside of the current web view or webpage. If you use
     the same content world in two WKWebView objects, variables
     in one web view’s content world don’t appear in the other
     web view. Similarly, when the user or your app navigates
     to a new webpage, variables from the previous page are gone,
     even if both pages share the same content world.

     Use the methods and properties of this class to fetch
     the content world you need. WKContentWorld provides a
     default content world for your app and a content world
     for the current web page. You can also create new
     content worlds. For example, you might create a custom
     content world for each JavaScript extension you manage.
     Specify the content world object when configuring or
     executing scripts associated with your content.

     ⚠️ The content world doesn’t apply to the current document
     or DOM of a webpage. Changes you make to the DOM are visible
     to all script code, regardless of content world. The content
     world affects only references to other JavaScript variables.
     */

    
    /**
     Getting the Default Content World
     
     defaultClientWorld
     The default world for clients.
     */
    
    /**
     Getting the Namespace for the Current Page
     
     pageWorld
     The content world for the current webpage’s content.
     */
    
    /**
     Retrieving a Custom Content World
     
     + worldWithName:
     Returns the custom content world with the specified name.
     
     name
     The name of a custom content world.
     */
    
    
    
#pragma mark -- WKFrameInfo
    
    /**
     An object that contains information about a frame on a
     webpage.

     An instance of this class is a transient, data-only object;
     it does not uniquely identify a frame across multiple
     delegate method calls.
     */
    
    /**
     Inspecting Frame Information
     
     mainFrame
     A Boolean value indicating whether the frame is the web
     site's main frame or a subframe.
     
     request
     The frame’s current request.
     
     securityOrigin
     The frame’s security origin.
     */
    
    
#pragma mark -- WKSecurityOrigin
    
    /**
     An object that identifies the origin of a particular resource.

     A WKSecurityOrigin object is a transient, data-only object
     that identifies the host name, protocol, and port number
     associated with a particular resource. You don’t create
     WKSecurityOrigin objects directly. Instead, WebKit creates
     them for the resources it loads. A first-party load is
     any load URL has the same security origin as the requesting
     web site. First-party webpages can access each other’s
     resources, such as scripts and databases.
     
     Because a WKSecurityOrigin object is transient, it doesn’t
     uniquely identify a security origin across multiple delegate
     method calls.
     */
    
    /**
     Getting the Host Information

     host
     The security origin’s host.
     
     port
     The security origin's port.
     */
    
    /**
     Getting the Host Protocol
     
     protocol
     The security origin's protocol.
     */
    
    
    
#pragma mark -- WKUserScript
    
    /**
     A script that the web view injects into a webpage.

     Create a WKUserScript object when you want to inject custom
     script code into the pages of your web view. Use this object
     to specify the JavaScript code to inject, and parameters
     relating to when and how to inject that code. Before you
     create the web view, add this object to the
     WKUserContentController object associated with your
     web view’s configuration.
     */
    
    /**
     Creating a User Script Object

     - initWithSource:injectionTime:forMainFrameOnly:
     Creates a user script object that contains the specified
     source code and attributes.
     
     - initWithSource:injectionTime:forMainFrameOnly:inContentWorld:
     Creates a user script object that is scoped to a particular content world.
     */
    
    /**
     Inspecting Script Information

     source
     The script’s source code.
     
     injectionTime
     The time at which to inject the script into the webpage.
     
     WKUserScriptInjectionTime
     Constants for the times at which to inject script content
     into a webpage.

     forMainFrameOnly
     A Boolean value that indicates whether to inject the script
     into the main frame or all frames.
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
