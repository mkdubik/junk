.class public Lse/mecenat/app/MecenatWebView;
.super Landroid/webkit/WebView;
.source "MecenatWebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "HandlerLeak",
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/MecenatWebView$WebContentType;
    }
.end annotation


# static fields
.field private static final EVENT_TIMEOUT:I


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private final backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

.field public currentUrl:Ljava/lang/String;

.field private hostActivity:Lse/mecenat/app/MecenatActivityInterface;

.field public loadFailed:Z

.field public loadTimeout:Z

.field private final mHandler:Landroid/os/Handler;

.field private mWebChromeClient:Lse/mecenat/app/impl/MecenatWebChromeClient;

.field public timer:Ljava/util/Timer;

.field private webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

.field private webViewClient:Lse/mecenat/app/impl/MecenatWebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->LOGTAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lse/mecenat/app/impl/BackgroundHandlerThread;

    const-string v1, "WebViewBackGroundThread"

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/BackgroundHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->currentUrl:Ljava/lang/String;

    .line 104
    new-instance v0, Lse/mecenat/app/MecenatWebView$1;

    invoke-direct {v0, p0}, Lse/mecenat/app/MecenatWebView$1;-><init>(Lse/mecenat/app/MecenatWebView;)V

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->mHandler:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    invoke-interface {v0}, Lse/mecenat/app/BackgroundQueueInterface;->start()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->LOGTAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lse/mecenat/app/impl/BackgroundHandlerThread;

    const-string v1, "WebViewBackGroundThread"

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/BackgroundHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->currentUrl:Ljava/lang/String;

    .line 104
    new-instance v0, Lse/mecenat/app/MecenatWebView$1;

    invoke-direct {v0, p0}, Lse/mecenat/app/MecenatWebView$1;-><init>(Lse/mecenat/app/MecenatWebView;)V

    iput-object v0, p0, Lse/mecenat/app/MecenatWebView;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    invoke-interface {v0}, Lse/mecenat/app/BackgroundQueueInterface;->start()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lse/mecenat/app/MecenatWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 39
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lse/mecenat/app/MecenatWebView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 39
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lse/mecenat/app/MecenatWebView;)Lse/mecenat/app/MecenatActivityInterface;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 39
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    return-object v0
.end method

.method private configureWebView(Lse/mecenat/app/MecenatWebView;)V
    .locals 9
    .param p1, "mecenatWebView"    # Lse/mecenat/app/MecenatWebView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    new-instance v4, Lse/mecenat/app/impl/MecenatWebViewClient;

    invoke-direct {v4, p0}, Lse/mecenat/app/impl/MecenatWebViewClient;-><init>(Lse/mecenat/app/MecenatWebView;)V

    iput-object v4, p0, Lse/mecenat/app/MecenatWebView;->webViewClient:Lse/mecenat/app/impl/MecenatWebViewClient;

    .line 166
    new-instance v4, Lse/mecenat/app/impl/MecenatWebChromeClient;

    iget-object v5, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    invoke-direct {v4, v5, p0}, Lse/mecenat/app/impl/MecenatWebChromeClient;-><init>(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView;)V

    iput-object v4, p0, Lse/mecenat/app/MecenatWebView;->mWebChromeClient:Lse/mecenat/app/impl/MecenatWebChromeClient;

    .line 168
    invoke-virtual {p1}, Lse/mecenat/app/MecenatWebView;->getWebContentType()Lse/mecenat/app/MecenatWebView$WebContentType;

    move-result-object v4

    sget-object v5, Lse/mecenat/app/MecenatWebView$WebContentType;->SUB_NAV:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-eq v4, v5, :cond_4

    move v1, v2

    .line 169
    .local v1, "scrollEnabled":Z
    :goto_0
    invoke-direct {p0, v1}, Lse/mecenat/app/MecenatWebView;->enableScrolling(Z)V

    .line 171
    iget-object v4, p0, Lse/mecenat/app/MecenatWebView;->webViewClient:Lse/mecenat/app/impl/MecenatWebViewClient;

    invoke-virtual {p0, v4}, Lse/mecenat/app/MecenatWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 172
    iget-object v4, p0, Lse/mecenat/app/MecenatWebView;->mWebChromeClient:Lse/mecenat/app/impl/MecenatWebChromeClient;

    invoke-virtual {p0, v4}, Lse/mecenat/app/MecenatWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 173
    invoke-virtual {p0, v3}, Lse/mecenat/app/MecenatWebView;->setScrollBarStyle(I)V

    .line 175
    iget-object v4, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    invoke-interface {v4}, Lse/mecenat/app/MecenatActivityInterface;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v4

    invoke-virtual {v4}, Lse/mecenat/app/MecenatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "appCachePath":Ljava/lang/String;
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-wide/32 v6, 0x19000000

    invoke-virtual {v4, v6, v7}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 178
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 179
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 180
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 182
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 183
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 184
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 187
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 189
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 192
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 193
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 196
    iget-object v3, p0, Lse/mecenat/app/MecenatWebView;->webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

    sget-object v4, Lse/mecenat/app/MecenatWebView$WebContentType;->MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lse/mecenat/app/MecenatWebView;->webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

    sget-object v4, Lse/mecenat/app/MecenatWebView$WebContentType;->CARD:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lse/mecenat/app/MecenatWebView;->webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

    sget-object v4, Lse/mecenat/app/MecenatWebView$WebContentType;->SUB_NAV:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-ne v3, v4, :cond_1

    .line 198
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 199
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lse/mecenat/app/MecenatWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 203
    :cond_1
    sget-object v3, Lse/mecenat/app/MecenatWebView$10;->$SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

    iget-object v4, p0, Lse/mecenat/app/MecenatWebView;->webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v4}, Lse/mecenat/app/MecenatWebView$WebContentType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 214
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 217
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 218
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 221
    :cond_2
    :goto_1
    iget-object v2, p0, Lse/mecenat/app/MecenatWebView;->webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

    sget-object v3, Lse/mecenat/app/MecenatWebView$WebContentType;->CONTENT:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-ne v2, v3, :cond_3

    .line 222
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lse/mecenat/app/MecenatWebView;->requestFocus(I)Z

    .line 223
    new-instance v2, Lse/mecenat/app/MecenatWebView$3;

    invoke-direct {v2, p0}, Lse/mecenat/app/MecenatWebView$3;-><init>(Lse/mecenat/app/MecenatWebView;)V

    invoke-virtual {p0, v2}, Lse/mecenat/app/MecenatWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    :cond_3
    return-void

    .end local v0    # "appCachePath":Ljava/lang/String;
    .end local v1    # "scrollEnabled":Z
    :cond_4
    move v1, v3

    .line 168
    goto/16 :goto_0

    .line 206
    .restart local v0    # "appCachePath":Ljava/lang/String;
    .restart local v1    # "scrollEnabled":Z
    :pswitch_0
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_1

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_1

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enableScrolling(Z)V
    .locals 1
    .param p1, "scrollEnabled"    # Z

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lse/mecenat/app/MecenatWebView;->setVerticalScrollBarEnabled(Z)V

    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Lse/mecenat/app/MecenatWebView$4;

    invoke-direct {v0, p0}, Lse/mecenat/app/MecenatWebView$4;-><init>(Lse/mecenat/app/MecenatWebView;)V

    invoke-virtual {p0, v0}, Lse/mecenat/app/MecenatWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public baseRequest(Landroid/webkit/WebView;Ljava/lang/String;Lse/mecenat/app/HttpInterface;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "httpInterface"    # Lse/mecenat/app/HttpInterface;

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "response":Landroid/webkit/WebResourceResponse;
    if-eqz p3, :cond_0

    .line 406
    invoke-interface {p3, p2}, Lse/mecenat/app/HttpInterface;->requestUrl(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 408
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "response":Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v0

    .restart local v0    # "response":Landroid/webkit/WebResourceResponse;
    :cond_1
    iget-object v1, p0, Lse/mecenat/app/MecenatWebView;->webViewClient:Lse/mecenat/app/impl/MecenatWebViewClient;

    invoke-virtual {v1, p1, p2}, Lse/mecenat/app/impl/MecenatWebViewClient;->baseshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebContentType()Lse/mecenat/app/MecenatWebView$WebContentType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

    return-object v0
.end method

.method public init(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView$WebContentType;)V
    .locals 0
    .param p1, "activity"    # Lse/mecenat/app/MecenatActivityInterface;
    .param p2, "contentType"    # Lse/mecenat/app/MecenatWebView$WebContentType;

    .prologue
    .line 154
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    .line 155
    iput-object p2, p0, Lse/mecenat/app/MecenatWebView;->webContentType:Lse/mecenat/app/MecenatWebView$WebContentType;

    .line 157
    invoke-direct {p0, p0}, Lse/mecenat/app/MecenatWebView;->configureWebView(Lse/mecenat/app/MecenatWebView;)V

    .line 158
    return-void
.end method

.method public loadHasFailed(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # Z
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lse/mecenat/app/MecenatWebView;->loadFailed:Z

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lse/mecenat/app/MecenatWebView;->loadTimeout:Z

    .line 273
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 275
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    invoke-interface {v0, p0, p2, p3, p4}, Lse/mecenat/app/MecenatActivityInterface;->bgOnPageFailed(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lse/mecenat/app/MecenatWebView;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-loadUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lse/mecenat/app/MecenatWebView;->loadFailed:Z

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lse/mecenat/app/MecenatWebView;->loadTimeout:Z

    .line 124
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView;->currentUrl:Ljava/lang/String;

    .line 126
    new-instance v0, Lse/mecenat/app/MecenatWebView$2;

    invoke-direct {v0, p0}, Lse/mecenat/app/MecenatWebView$2;-><init>(Lse/mecenat/app/MecenatWebView;)V

    .line 138
    .local v0, "timeTask":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lse/mecenat/app/MecenatWebView;->timer:Ljava/util/Timer;

    .line 139
    iget-object v1, p0, Lse/mecenat/app/MecenatWebView;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 144
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    return-void
.end method

.method public onFileBrowseResult([Landroid/net/Uri;)V
    .locals 1
    .param p1, "results"    # [Landroid/net/Uri;

    .prologue
    .line 416
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->mWebChromeClient:Lse/mecenat/app/impl/MecenatWebChromeClient;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->mWebChromeClient:Lse/mecenat/app/impl/MecenatWebChromeClient;

    invoke-virtual {v0, p1}, Lse/mecenat/app/impl/MecenatWebChromeClient;->onFileBrowseResult([Landroid/net/Uri;)V

    .line 420
    :cond_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    new-instance v1, Lse/mecenat/app/MecenatWebView$8;

    invoke-direct {v1, p0, p1, p2}, Lse/mecenat/app/MecenatWebView$8;-><init>(Lse/mecenat/app/MecenatWebView;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lse/mecenat/app/BackgroundQueueInterface;->runInBackground(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public onOverrideRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    check-cast p1, Lse/mecenat/app/MecenatWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-interface {v0, p1, p2}, Lse/mecenat/app/MecenatActivityInterface;->onOverrideRequest(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    new-instance v2, Lse/mecenat/app/MecenatWebView$5;

    invoke-direct {v2, p0, p2, p1, v0}, Lse/mecenat/app/MecenatWebView$5;-><init>(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lse/mecenat/app/BackgroundQueueInterface;->runInBackground(Ljava/lang/Runnable;)V

    .line 297
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 298
    iget-object v2, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    move-object v1, p1

    check-cast v1, Lse/mecenat/app/MecenatWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lse/mecenat/app/MecenatActivityInterface;->bgOnReceivedTitle(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 306
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    new-instance v2, Lse/mecenat/app/MecenatWebView$6;

    invoke-direct {v2, p0, p2, p1, v0}, Lse/mecenat/app/MecenatWebView$6;-><init>(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lse/mecenat/app/BackgroundQueueInterface;->runInBackground(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    invoke-interface {v0}, Lse/mecenat/app/BackgroundQueueInterface;->stop()V

    .line 90
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    new-instance v1, Lse/mecenat/app/MecenatWebView$7;

    invoke-direct {v1, p0, p2, p3, p4}, Lse/mecenat/app/MecenatWebView$7;-><init>(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lse/mecenat/app/BackgroundQueueInterface;->runInBackground(Ljava/lang/Runnable;)V

    .line 339
    invoke-virtual {p0}, Lse/mecenat/app/MecenatWebView;->stopLoading()V

    .line 340
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    new-instance v1, Lse/mecenat/app/MecenatWebView$9;

    invoke-direct {v1, p0, p1, p2}, Lse/mecenat/app/MecenatWebView$9;-><init>(Lse/mecenat/app/MecenatWebView;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lse/mecenat/app/BackgroundQueueInterface;->runInBackground(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    invoke-interface {v0}, Lse/mecenat/app/BackgroundQueueInterface;->start()V

    .line 85
    return-void
.end method

.method public retry()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lse/mecenat/app/MecenatWebView;->loadUrl(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "wView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lse/mecenat/app/MecenatWebView;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shouldOverrideUrlLoading"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "jshttp"

    const-string v3, "http"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "requestedUrl":Ljava/lang/String;
    iget-object v2, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    invoke-interface {v2}, Lse/mecenat/app/MecenatActivityInterface;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    .line 370
    invoke-interface {v3}, Lse/mecenat/app/MecenatActivityInterface;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    iget-object v3, v3, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-push-notification-mode"

    invoke-interface {v3, v4, v5}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 369
    invoke-static {v1, v2, v3}, Lse/mecenat/app/common/AppCommand;->parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;

    move-result-object v0

    .line 372
    .local v0, "cmd":Lse/mecenat/app/common/AppCommand;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error.aspx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v2, -0x1

    const-string v3, "Server error"

    iget-object v4, p0, Lse/mecenat/app/MecenatWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {p0, v5, v2, v3, v4}, Lse/mecenat/app/MecenatWebView;->loadHasFailed(ZILjava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v2, 0x1

    .line 377
    .end local p1    # "wView":Landroid/webkit/WebView;
    :goto_0
    return v2

    .restart local p1    # "wView":Landroid/webkit/WebView;
    :cond_0
    iget-object v2, p0, Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;

    check-cast p1, Lse/mecenat/app/MecenatWebView;

    .end local p1    # "wView":Landroid/webkit/WebView;
    invoke-interface {v2, p1, v1, v0}, Lse/mecenat/app/MecenatActivityInterface;->handleUserAction(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Lse/mecenat/app/common/AppCommand;)Z

    move-result v2

    goto :goto_0
.end method
