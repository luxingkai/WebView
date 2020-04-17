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


# JavaScript(从应用程序中评估JavaScript程序，并支持应用程序的JavaScript脚本。)

<1>.JavaContext: JSContext对象表示一个JavaScript执行环境。您可以创建并使用JavaScript上下文来评估来自Objective-C或Swift代码的JavaScript脚本，访问在JavaScript中定义或计算的值，以及使JavaScript可以访问本机对象、方法或函数。   

<2>.JSManagedValue:  一个JSManagedValue对象包装了一个JSValue对象，添加“条件保留”行为以提供值的自动内存管理。托管值的主要用例是将JavaScript值存储在Objective-C或Swift对象中，该对象本身被导出到JavaScript。

<3>.JSValue: JSValue实例是对JavaScript值的引用。您可以使用JSValue类在JavaScript和Objective-C或Swift表示之间转换基本值(例如数字和字符串)，以便在本机代码和JavaScript代码之间传递数据。您还可以使用这个类来创建JavaScript对象，这些对象包装自定义类的本机对象或由本机方法或块提供实现的JavaScript函数。

<4>.JSVirtualMachine: JSVirtualMachine实例表示一个自包含的JavaScript执行环境。使用这个类有两个主要目的:支持并发的JavaScript执行，以及管理连接在JavaScript和Objective-C或Swift之间的对象的内存。

<5>. JSExport: 将Objective-C类及其实例方法、类方法和属性导出到JavaScript代码的协议。












