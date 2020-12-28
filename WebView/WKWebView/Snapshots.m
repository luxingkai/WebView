//
//  Snapshots.m
//  WebView
//
//  Created by tigerfly on 2020/12/11.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "Snapshots.h"


@interface Snapshots ()

@end
 
@implementation Snapshots {
    WKWebView *webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- WKSnapshotConfiguration
    
    /**
     The configuration data to use when generating an image
     from a web view’s contents.

     Create a WKSnapshotConfiguration object when you want to
     generate an image based on your web view’s content. Use this
     object to specify the portion of the web view to capture
     and the capture behavior. To generate the snapshot, pass
     the configuration object to the
     takeSnapshotWithConfiguration:completionHandler: method of
     WKWebView, which returns a platform-native image for you
     to use.
     */
    
    /**
     Specifying the Snapshot Dimensions

     == rect
     The portion of your web view to capture, specified as a
     rectangle in the view’s coordinate system.
     
     == snapshotWidth
     The width of the captured image, in points.
     */
    
    /**
     Configuring the Capture Behavior
     
     afterScreenUpdates
     A Boolean value that indicates whether to take the
     snapshot after incorporating any pending screen updates.
     */
    
    
    
#pragma mark -- WKPDFConfiguration
    
    /**
     The configuration data to use when generating a PDF
     representation of a web view’s contents.

     Create a WKPDFConfiguration object when you want to
     generate a PDF version of your web view’s content.
     Use this object to specify the portion of the web view
     to capture. To generate the PDF content, pass the
     configuration object to the
     createPDF(configuration:completionHandler:) method of
     WKWebView, which returns the PDF data for you to use.
     */
    
    /**
     Specifying the Snapshot Dimensions
     
     rect
     The portion of your web view to capture, specified as a
     rectangle in the view’s coordinate system.
     */
    
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"保存" style:UIBarButtonItemStyleDone target:self action:@selector(preserve)];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    WKWebViewConfiguration *webViewConfiguration = [[WKWebViewConfiguration alloc] init];
    
    webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds configuration:webViewConfiguration];
    [self.view addSubview:webView];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    [webView loadRequest:urlRequest];


}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    if (error == nil) {
        NSLog(@"图片保存成功");
    }
}


#pragma mark -- preserve

- (void)preserve {
    
    if (webView.estimatedProgress < 1) {
        NSLog(@"网页未加载完成");
        return;
    }
    WKSnapshotConfiguration *snapshotConfiguration = [WKSnapshotConfiguration new];
    snapshotConfiguration.rect = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [webView takeSnapshotWithConfiguration:snapshotConfiguration completionHandler:^(UIImage * _Nullable snapshotImage, NSError * _Nullable error) {
        UIImageWriteToSavedPhotosAlbum(snapshotImage, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    }];
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
