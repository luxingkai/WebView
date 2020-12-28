//
//  ContextualMenus.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "ContextualMenus.h"

@interface ContextualMenus ()

@end

@implementation ContextualMenus

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /**
     WKContextMenuElementInfo
     
     An object that contains information about a link the user
     clicked in a webpage, and which you use to configure a
     context menu for that link.

     A WKContextMenuElementInfo object contains the URL
     of a link in the web view’s content. You don’t create
     instances of this class directly. Instead, the web
     view creates them and passes them to the methods of
     its associated WKUIDelegate object when the user
     interacts with the link. In your delegate method
     implementations, use the URL in this object to determine
     how to configure the contextual menu.
     */
    
    /**
     Getting the Element Information

     linkURL
     The URL of the link that the user clicked.
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
