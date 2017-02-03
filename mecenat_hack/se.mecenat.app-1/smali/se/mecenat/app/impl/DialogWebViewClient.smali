.class public Lse/mecenat/app/impl/DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "DialogWebViewClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "wView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
