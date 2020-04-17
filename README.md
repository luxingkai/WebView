# WebView
<1>.初始化
WKNavigationDelegate: WKNavigationDelegate协议的方法帮助您实现在web视图接受、加载和完成导航请求的过程中触发的自定义行为。
WKProcessPool: WKProcessPool对象表示一个Web内容进程池。
WKWindowFeatures: 当请求新的web视图时，WKWindowFeatures对象指定包含窗口的可选属性。
WKWebView: 显示交互式web内容的对象，如应用程序内的浏览器。
WKWebViewConfiguration: 用于初始化web视图的属性集合。
WKPreferences: WKPreferences对象封装了web视图的首选项设置。
WKUIDelegate: WKUIDelegate类提供了代表网页显示本地用户界面元素的方法。

<2>.导航
WKNavigation: WKNavigation对象包含用于跟踪网页加载进度的信息。
WKNavigationAction: WKNavigationAction对象包含有关可能导致导航的操作的信息，用于制定策略决策。
WKNavigationResponse: WKNavigationResponse对象包含有关导航响应的信息，用于制定策略决策。

<3>.返回列表 
WKBackForwardList: WKBackForwardList对象维护一个已访问页面列表，该列表用于返回和转发最近的页面。
WKBackForwardListItem: WKBackForwardListItem对象表示web视图的后向列表中的网页。

<4>.元素和框架信息
WKFrameInfo: WKFrameInfo对象包含关于网页上某个帧的信息。

<5>.网站信息 
WKWebsiteDataRecord: WKWebsiteDataRecord对象表示根据原始URL的域名和后缀分组的网站数据。
WKWebsiteDataStore: WKWebsiteDataStore对象表示所选网站使用的各种类型的数据。数据类型包括cookie、磁盘和内存缓存，以及持久数据，如WebSQL、IndexedDB数据库和本地存储。

<6>.文件加载
WKOpenPanelParameters: WKOpenPanelParameters对象包含文件上载控件指定的参数。

<7>.脚本运行
WKUserContentController: WKUserContentController对象为JavaScript提供了一种向web视图发送消息和注入用户脚本的方法。
WKScriptMessage: WKScriptMessage对象包含关于从网页发送的消息的信息。
WKUserScript: WKUserScript对象表示可以注入到网页中的脚本。
WKScriptMessageHandler: 一个符合WKScriptMessageHandler协议的类提供了一种方法，用于从网页中运行的JavaScript接收消息。

<8>.URL Scheme处理
WKURLSchemHandler: 一个用于加载资源的协议，带有WebKit不知道如何处理的URL模式。
WKURLSchemeTask: 为加载资源而创建的任务。

<9>.webpages 
WKSecurityOrigin: WKSecurityOrigin对象由主机名、协议和端口号组成。第一方加载是指任何加载URL与请求web站点具有相同的安全来源。第一方的网页可以访问彼此的资源，如脚本和数据库。


# JavaScript

















