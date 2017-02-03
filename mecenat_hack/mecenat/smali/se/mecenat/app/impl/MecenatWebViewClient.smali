.class public Lse/mecenat/app/impl/MecenatWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MecenatWebViewClient.java"


# instance fields
.field private final mecenatWebView:Lse/mecenat/app/MecenatWebView;


# direct methods
.method public constructor <init>(Lse/mecenat/app/MecenatWebView;)V
    .locals 0
    .param p1, "mecenatWebView"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object p1, p0, Lse/mecenat/app/impl/MecenatWebViewClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    .line 24
    return-void
.end method


# virtual methods
.method public baseshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebViewClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1, p2}, Lse/mecenat/app/MecenatWebView;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebViewClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1, p2}, Lse/mecenat/app/MecenatWebView;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebViewClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1, p2, p3}, Lse/mecenat/app/MecenatWebView;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebViewClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lse/mecenat/app/MecenatWebView;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebViewClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1, p2}, Lse/mecenat/app/MecenatWebView;->onOverrideRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "wView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebViewClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1, p2}, Lse/mecenat/app/MecenatWebView;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
