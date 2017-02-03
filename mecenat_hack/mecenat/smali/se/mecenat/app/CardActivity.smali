.class public Lse/mecenat/app/CardActivity;
.super Lse/mecenat/app/common/BaseActivity;
.source "CardActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field private cacheStorage:Lse/mecenat/app/CacheStorageInterface;

.field intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

.field private final mUiHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public webViewContent:Lse/mecenat/app/MecenatWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lse/mecenat/app/common/BaseActivity;-><init>()V

    .line 35
    iput-object p0, p0, Lse/mecenat/app/CardActivity;->activity:Landroid/app/Activity;

    .line 40
    new-instance v0, Lse/mecenat/app/CardActivity$1;

    invoke-direct {v0, p0}, Lse/mecenat/app/CardActivity$1;-><init>(Lse/mecenat/app/CardActivity;)V

    iput-object v0, p0, Lse/mecenat/app/CardActivity;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lse/mecenat/app/CardActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/CardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lse/mecenat/app/CardActivity;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lse/mecenat/app/CardActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1}, Lse/mecenat/app/MecenatWebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public bgOnLoadResource(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    return-void
.end method

.method public bgOnPageFailed(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public bgOnPageLoading(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "finished"    # Z

    .prologue
    .line 104
    return-void
.end method

.method public bgOnReceivedTitle(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public handleUserAction(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Lse/mecenat/app/common/AppCommand;)Z
    .locals 7
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cmd"    # Lse/mecenat/app/common/AppCommand;

    .prologue
    const v6, 0x7f04000c

    const v5, 0x7f04000b

    const v4, 0x7f04000a

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lse/mecenat/app/common/CommandHandler;->Handle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p1}, Lse/mecenat/app/common/CommandHandler;->From(Lse/mecenat/app/MecenatWebView;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v1

    invoke-virtual {v1, p3}, Lse/mecenat/app/common/CommandHandler;->Using(Lse/mecenat/app/common/AppCommand;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/common/CommandHandler;->getCommandAction()Lse/mecenat/app/common/CommandAction;

    move-result-object v0

    .line 111
    .local v0, "ca":Lse/mecenat/app/common/CommandAction;
    sget-object v1, Lse/mecenat/app/CardActivity$3;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getAction()Lse/mecenat/app/common/CommandAction$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 142
    const-string v1, "handleUserAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 113
    :pswitch_0
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lse/mecenat/app/CardActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->finish()V

    .line 118
    invoke-virtual {p0, v3, v5}, Lse/mecenat/app/CardActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v1, -0x1

    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lse/mecenat/app/CardActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->finish()V

    .line 124
    invoke-virtual {p0, v3, v5}, Lse/mecenat/app/CardActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 129
    :pswitch_3
    :try_start_0
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lse/mecenat/app/CardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    invoke-virtual {p0, v4, v6}, Lse/mecenat/app/CardActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 137
    :pswitch_4
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lse/mecenat/app/CardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    invoke-virtual {p0, v4, v6}, Lse/mecenat/app/CardActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCacheUpdate(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    .line 52
    invoke-super {p0, p1}, Lse/mecenat/app/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v4, Lse/mecenat/app/impl/FileSystemCacheStorage;

    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Lse/mecenat/app/impl/FileSystemCacheStorage;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lse/mecenat/app/CardActivity;->cacheStorage:Lse/mecenat/app/CacheStorageInterface;

    .line 55
    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "METHOD"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "method":Ljava/lang/String;
    const-string v4, "URL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "url":Ljava/lang/String;
    const-string v4, "ORIENTATION"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, "orientation":I
    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->getRequestedOrientation()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lse/mecenat/app/CardActivity;->setRequestedOrientation(I)V

    .line 94
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 69
    const v4, 0x7f030019

    invoke-virtual {p0, v4}, Lse/mecenat/app/CardActivity;->setContentView(I)V

    .line 70
    const v4, 0x7f0c006f

    invoke-virtual {p0, v4}, Lse/mecenat/app/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lse/mecenat/app/MecenatWebView;

    iput-object v4, p0, Lse/mecenat/app/CardActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    .line 72
    iget-object v4, p0, Lse/mecenat/app/CardActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v5, Lse/mecenat/app/CardActivity$2;

    invoke-direct {v5, p0, v1, v3}, Lse/mecenat/app/CardActivity$2;-><init>(Lse/mecenat/app/CardActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onOverrideRequest(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 170
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lse/mecenat/app/CardActivity;->cacheStorage:Lse/mecenat/app/CacheStorageInterface;

    invoke-virtual {p0}, Lse/mecenat/app/CardActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getCurrentCacheFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lse/mecenat/app/CacheStorageInterface;->getContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method
