//
//  ViewController.m
//  WebView
//
//  Created by tiger fly on 2020/4/15.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "UIColor+JMCategory.h"

@interface ViewController ()<WKNavigationDelegate,WKUIDelegate>

@end

@implementation ViewController {
    
    UIProgressView *_progressView;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    configuration.allowsAirPlayForMediaPlayback = NO;
    WKWebView *webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds configuration:configuration];
    webView.navigationDelegate = self;
    webView.UIDelegate = self;
    [self.view addSubview:webView];
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.w3school.com.cn/js/js_intro.asp"]]];
    
    CGFloat statusHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    _progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, statusHeight, self.view.frame.size.width, 1.0)];
    _progressView.progress = 0.0f;
    _progressView.progressTintColor = [UIColor greenColor];
    _progressView.trackTintColor = [UIColor redColor];
    [self.view addSubview:_progressView];

    [webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    // Do any additional setup after loading the view.
}



#pragma mark --

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                       context:(void *)context {
    
    if ([keyPath isEqualToString:@"estimatedProgress"]) {
        float progress = [change[@"new"] floatValue];
        [_progressView setProgress:progress animated:true];
    }
}


#pragma mark --
///Called when the web view begins to receive web content.
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    
}
///Called when web content begins to load in a web view.
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    
}
///Called when a web view receives a server redirect.
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation {
    
}
///Called when the web view needs to respond to an authentication challenge.
- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential * _Nullable))completionHandler {
    NSURLCredential *credential = [[NSURLCredential alloc] initWithUser:@"" password:@"" persistence:NSURLCredentialPersistenceNone];
    completionHandler(NSURLSessionAuthChallengeUseCredential,credential);
}
///Called when an error occurs during navigation.
- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    
}
///Called when an error occurs while the web view is loading content.
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    
}
///Called when the navigation is complete.
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    
}
///Called when the web view’s web content process is terminated.
- (void)webViewWebContentProcessDidTerminate:(WKWebView *)webView {
    
}
///Decides whether to allow or cancel a navigation.
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    decisionHandler(WKNavigationActionPolicyAllow);
}
///Decides whether to allow or cancel a navigation after its response is known.
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {
    decisionHandler(WKNavigationResponsePolicyAllow);
}
///
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction preferences:(WKWebpagePreferences *)preferences decisionHandler:(void (^)(WKNavigationActionPolicy, WKWebpagePreferences * _Nonnull))decisionHandler {
    decisionHandler(WKNavigationActionPolicyAllow,preferences);
}













@end


