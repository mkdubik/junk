.class public Lse/mecenat/app/impl/MecenatWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MecenatWebChromeClient.java"


# static fields
.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "EXTRA_FROM_NOTIFICATION"

.field public static final INPUT_FILE_REQUEST_CODE:I = 0x7


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final hostActivity:Landroid/app/Activity;

.field mUploadMsg:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mecenatWebView:Lse/mecenat/app/MecenatWebView;


# direct methods
.method public constructor <init>(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView;)V
    .locals 1
    .param p1, "hostActivity"    # Lse/mecenat/app/MecenatActivityInterface;
    .param p2, "mecenatWebView"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->LOGTAG:Ljava/lang/String;

    .line 43
    invoke-interface {p1}, Lse/mecenat/app/MecenatActivityInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    .line 44
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "hostActivity":Lse/mecenat/app/MecenatActivityInterface;
    iput-object p1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->hostActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    .line 46
    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 96
    if-eqz p2, :cond_1

    .line 97
    iget-object v5, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    iget-object v5, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->LOGTAG:Ljava/lang/String;

    const-string v7, "Activity is finishing, skipping onCreateWindow"

    invoke-static {v5, v7}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 140
    :goto_0
    return v5

    .line 102
    :cond_0
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 103
    .local v4, "winDialog":Landroid/app/Dialog;
    invoke-virtual {v4, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 105
    new-instance v1, Landroid/webkit/WebView;

    iget-object v5, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, "newWebView":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 108
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 109
    new-instance v5, Lse/mecenat/app/impl/DialogWebViewClient;

    invoke-direct {v5}, Lse/mecenat/app/impl/DialogWebViewClient;-><init>()V

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    new-instance v5, Lse/mecenat/app/impl/DialogWebChromeClient;

    invoke-direct {v5, v4}, Lse/mecenat/app/impl/DialogWebChromeClient;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 112
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 120
    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 121
    const/16 v5, 0x82

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 123
    iget-object v3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebView$WebViewTransport;

    .line 124
    .local v3, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v3, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 125
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 126
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 128
    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    move v5, v7

    .line 130
    goto :goto_0

    .line 133
    .end local v1    # "newWebView":Landroid/webkit/WebView;
    .end local v3    # "transport":Landroid/webkit/WebView$WebViewTransport;
    .end local v4    # "winDialog":Landroid/app/Dialog;
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v5, v7, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 135
    .local v2, "result":Landroid/webkit/WebView$HitTestResult;
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "data":Ljava/lang/String;
    iget-object v5, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v5, p1, v0}, Lse/mecenat/app/MecenatWebView;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "result":Landroid/webkit/WebView$HitTestResult;
    :cond_2
    move v5, v6

    .line 140
    goto :goto_0
.end method

.method public onFileBrowseResult([Landroid/net/Uri;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/Uri;

    .prologue
    .line 199
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 200
    array-length v0, p1

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    .line 205
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 91
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v3, 0x1

    .line 50
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->LOGTAG:Ljava/lang/String;

    const-string v1, "Activity is finishing, skipping onJsAlert"

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 63
    :goto_0
    return v3

    .line 56
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lse/mecenat/app/impl/MecenatWebChromeClient$1;

    invoke-direct {v2, p0, p4}, Lse/mecenat/app/impl/MecenatWebChromeClient$1;-><init>(Lse/mecenat/app/impl/MecenatWebChromeClient;Landroid/webkit/JsResult;)V

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v3, 0x1

    .line 68
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->LOGTAG:Ljava/lang/String;

    const-string v1, "Activity is finishing, skipping onJsConfirm"

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 85
    :goto_0
    return v3

    .line 74
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lse/mecenat/app/impl/MecenatWebChromeClient$3;

    invoke-direct {v2, p0, p4}, Lse/mecenat/app/impl/MecenatWebChromeClient$3;-><init>(Lse/mecenat/app/impl/MecenatWebChromeClient;Landroid/webkit/JsResult;)V

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lse/mecenat/app/impl/MecenatWebChromeClient$2;

    invoke-direct {v2, p0, p4}, Lse/mecenat/app/impl/MecenatWebChromeClient$2;-><init>(Lse/mecenat/app/impl/MecenatWebChromeClient;Landroid/webkit/JsResult;)V

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3
    .param p1, "spaceNeeded"    # J
    .param p3, "totalUsedQuota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 147
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 148
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReachedMaxAppCacheSize() spaceNeeded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalUsedQuota:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedTitle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mecenatWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1, p2}, Lse/mecenat/app/MecenatWebView;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->hostActivity:Landroid/app/Activity;

    const-string v2, "File Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 4
    .param p1, "uploadMsg"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->hostActivity:Landroid/app/Activity;

    const-string v2, "File Browser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lse/mecenat/app/impl/MecenatWebChromeClient;->hostActivity:Landroid/app/Activity;

    const-string v2, "File Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method
