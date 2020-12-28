//
//  WebDataManagement.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "WebDataManagement.h"

@interface WebDataManagement ()

@end

@implementation WebDataManagement

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- WKWebsiteDataStore
    
    /**
     An object that manages cookies, disk and memory caches,
     and other types of data for a web view.

     Use a WKWebsiteDataStore object to configure and manage web
     site data. Specifically, use this object to:
     •  Manage cookies that your web site uses
     •  Learn about the types of data that websites store
     •  Remove unwanted web site data
     
     Create a data store object and assign it to the websiteDataStore
     property of a WKWebViewConfiguration object before you create
     your web view. The defaultDataStore method returns the default
     data store that saves website data persistently to disk. To
     implement private browsing, create a nonpersistent data store
     using the nonPersistentDataStore method instead.
     */
    
    /**
     Creating a Data Store Object
     
     + defaultDataStore
     Returns the default data store, which stores data persistently to disk.
     
     + nonPersistentDataStore
     Creates a new data store object that stores website data in memory,
     and doesn’t write that data to disk.
     */
    
    
    /**
     Inspecting Data Store Properties
     
     persistent
     A Boolean value that indicates whether this object stores data to disk.
     */
    
    /**
     Retrieving a Cookie Store
     
     httpCookieStore
     The object that manages the HTTP cookies for your website.
     */
    
    /**
     Retrieving Specific Types of Data
     
     - fetchDataRecordsOfTypes:completionHandler:
     Fetches the specified types of records from the data store.
     
     + allWebsiteDataTypes
     Returns the set of all the available data types.
     */
    
    /**
     Removing Specific Types of Data
     
     - removeDataOfTypes:forDataRecords:completionHandler:
     Removes the specified types of website data from one or more data records.
     
     - removeDataOfTypes:modifiedSince:completionHandler:
     Removes website data that changed after the specified date.
     */
    
    
#pragma mark -- WKWebsiteDataRecord
    
    /**
     A record of the data that a particular website stores persistently.

     Use WKWebsiteDataRecord objects to discover the types of
     information that a website stores. Records identify the
     data types a website stores, but don’t identify the actual
     data. You might use this information to help the user manage
     website data. For example, Safari provides a way for users
     to view and remove website data. The domain name of each
     record contains the website’s domain name and suffix.
     
     You don’t create WKWebsiteDataRecord objects directly.
     WebKit creates these records and stores them in the web
     view’s data store. Use the fetchDataRecordsOfTypes:completionHandler:
     of that data store to retrieve the current record objects.
     You also use that object to remove unwanted records.
     */
    
    /**
     Getting the Record information
     
     == displayName
     The display name for the data record.
     */
    
    /**
     Getting the Data Type
     
     == dataTypes
     The types of data associated with the record.
     */
    
    
    
#pragma mark -- WKHTTPCookieStore
    
    /**
     An object that manages the HTTP cookies associated with
     a particular web view.

     Use a WKHTTPCookieStore to specify the initial cookies for
     your webpages, and to manage cookies for your web content.
     For example, you might use this object to delete the cookie
     for the current session when the user logs out. To detect when
     the webpage changes a cookie, install a cookie observer
     using the addObserver: method.
     
     You don’t create a WKHTTPCookieStore object directly. Instead,
     retrieve this object from the WKWebsiteDataStore object in
     your web view’s configuration object
     */
    
    
    /**
     Managing Cookies
     
     - getAllCookies:
     Fetches all stored cookies asynchronously and delivers them to
     the specified completion handler.
     
     - setCookie:completionHandler:
     Adds a cookie to the cookie store.
     
     - deleteCookie:completionHandler:
     Deletes the specified cookie.
     */

    /**
     Observing Cookie Store Changes
     
     - addObserver:
     Adds an observer to the cookie store.
     
     - removeObserver:
     Removes an observer from the cookie store.
     */
    
    
    
#pragma mark -- WKURLSchemeHandler
    
    /**
     A protocol for loading resources with URL schemes that
     WebKit doesn't handle.

     Adopt the WKURLSchemeHandler protocol in objects that handle
     custom URL schemes for your web content. Custom schemes let
     you integrate custom resource types into your web content,
     and you may define custom schemes for resources that your
     app requires. For example, you might use a custom scheme to
     integrate content that is available only on the user’s device,
     such as the user’s photos. Adopt this protocol in one of
     your app’s objects and register it using the
     setURLSchemeHandler:forURLScheme: method of WKWebViewConfiguration.

     When a web view encounters a resource that uses a custom scheme,
     it creates a WKURLSchemeTask object and passes it to the methods
     of your scheme handler object. Use the webView:startURLSchemeTask:
     method to begin loading the resource. While your handler loads
     the object, the web view may call your handler’s
     webView:stopURLSchemeTask: method to notify you that
     the resource is no longer needed.
     */
    
    /**
     Loading a Custom Resource
     
     - webView:startURLSchemeTask:
     Asks your handler to begin loading the data for the specified resource.
     Required.
     */
    
    /**
     Responding to a Canceled Resource Request
     
     - webView:stopURLSchemeTask:
     Asks your handler to stop loading the data for the specified resource.
     Required.
     */
    
    

#pragma mark -- WKURLSchemeTask
    
    /**
     WKURLSchemeTask
     
     An interface that WebKit uses to request custom resources
     from your app.
     
     The WKURLSchemeTask protocol defines an interface that WebKit
     uses to request custom resources. You don’t adopt this
     interface in your own objects. Instead, WebKit creates
     objects that adopt this interface and delivers them to
     your custom scheme handlers — that is, objects that adopt
     the WKURLSchemeHandler protocol. You use the objects that
     WebKit provides to get information about the requested
     resources and load them. You also use those objects to
     report your progress back to WebKit.
     
     When WebKit needs a custom scheme, it places an appropriate
     URL request in the task’s request property. Upon receiving
     the request, determine the size of the resource and call
     the didReceiveResponse: method with an appropriate URL
     response object. Providing a response mirrors the behavior
     that a web server performs when it receives a request.
     
     After you load some portion of the resource data, call the
     didReceiveData: method to send it to WebKit. You may call
     that method multiple times to deliver data incrementally,
     or call it once with all of the data. After you finish
     delivering all of the data, call the didFinish method.
     If an error occurs at any point during the load process,
     call didFailWithError: to report it.
     */
    
    /**
     Getting the URL of the Requested Resource
     
     request
     Information about the resource to load.
     Required.
     */
    
    /**
     Reporting Progress Back to WebKit
     
     - didReceiveResponse:
     Returns a URL response to WebKit with information about the
     requested resource.
     Required.
     
     - didReceiveData:
     Sends some or all of the resource data to WebKit.
     Required.
     
     - didFinish
     Signals the successful completion of the task.
     Required.
     */

    
    /**
     Reporting an Error to WebKit
     
     - didFailWithError:
     Completes the task and reports the specified error back to WebKit.
     Required.
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
