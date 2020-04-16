//
//  ViewController.m
//  WebView
//
//  Created by tiger fly on 2020/4/15.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<WKNavigationDelegate,WKUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    configuration.allowsAirPlayForMediaPlayback = NO;
    WKWebView *webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds configuration:configuration];
    webView.navigationDelegate = self;
    webView.UIDelegate = self;
    [self.view addSubview:webView];
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.w3school.com.cn/js/js_intro.asp"]]];
    
    
    
    // Do any additional setup after loading the view.
}

#pragma mark --

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    
    NSLog(@"%ld",(long)navigation.effectiveContentMode);
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    
}




@end


