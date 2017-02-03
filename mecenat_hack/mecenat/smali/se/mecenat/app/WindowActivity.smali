.class public Lse/mecenat/app/WindowActivity;
.super Lse/mecenat/app/common/BaseActivity;
.source "WindowActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final EVENT_SET_TITLE:I = 0x3

.field private static final EVENT_SHOW_CONTENT:I = 0x0

.field private static final EVENT_SHOW_PROGRESSBAR:I = 0x1

.field private static final EVENT_SHOW_RETRY:I = 0x2


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field final activity:Landroid/app/Activity;

.field private cacheStorage:Lse/mecenat/app/CacheStorageInterface;

.field private volatile errorFromContent:Z

.field private volatile errorFromSubNav:Z

.field private exitButton:Landroid/widget/ImageButton;

.field private exitButtonClickArea:Landroid/widget/FrameLayout;

.field private intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

.field private volatile loadedOkContent:Z

.field private volatile loadedOkSubNav:Z

.field private final mUiHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private retryButton:Landroid/widget/ImageButton;

.field private retryButtonClickArea:Landroid/widget/LinearLayout;

.field private switcher:Landroid/widget/ViewFlipper;

.field public webTitle:Landroid/widget/TextView;

.field private webViewContent:Lse/mecenat/app/MecenatWebView;

.field private webViewSubNav:Lse/mecenat/app/MecenatWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lse/mecenat/app/common/BaseActivity;-><init>()V

    .line 47
    iput-boolean v1, p0, Lse/mecenat/app/WindowActivity;->loadedOkContent:Z

    .line 48
    iput-boolean v1, p0, Lse/mecenat/app/WindowActivity;->loadedOkSubNav:Z

    .line 49
    iput-boolean v0, p0, Lse/mecenat/app/WindowActivity;->errorFromContent:Z

    .line 50
    iput-boolean v0, p0, Lse/mecenat/app/WindowActivity;->errorFromSubNav:Z

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/WindowActivity;->LOGTAG:Ljava/lang/String;

    .line 62
    iput-object p0, p0, Lse/mecenat/app/WindowActivity;->activity:Landroid/app/Activity;

    .line 71
    new-instance v0, Lse/mecenat/app/WindowActivity$1;

    invoke-direct {v0, p0}, Lse/mecenat/app/WindowActivity$1;-><init>(Lse/mecenat/app/WindowActivity;)V

    iput-object v0, p0, Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lse/mecenat/app/WindowActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lse/mecenat/app/WindowActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->switcher:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1000(Lse/mecenat/app/WindowActivity;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lse/mecenat/app/WindowActivity;->fireEvent(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lse/mecenat/app/WindowActivity;Landroid/widget/ViewFlipper;)Landroid/widget/ViewFlipper;
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 42
    iput-object p1, p0, Lse/mecenat/app/WindowActivity;->switcher:Landroid/widget/ViewFlipper;

    return-object p1
.end method

.method static synthetic access$1102(Lse/mecenat/app/WindowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lse/mecenat/app/WindowActivity;->loadedOkContent:Z

    return p1
.end method

.method static synthetic access$1200(Lse/mecenat/app/WindowActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lse/mecenat/app/WindowActivity;)Lse/mecenat/app/MecenatWebView;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    return-object v0
.end method

.method static synthetic access$300(Lse/mecenat/app/WindowActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->exitButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$302(Lse/mecenat/app/WindowActivity;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 42
    iput-object p1, p0, Lse/mecenat/app/WindowActivity;->exitButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$400(Lse/mecenat/app/WindowActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->exitButtonClickArea:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$402(Lse/mecenat/app/WindowActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 42
    iput-object p1, p0, Lse/mecenat/app/WindowActivity;->exitButtonClickArea:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$500(Lse/mecenat/app/WindowActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->retryButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$502(Lse/mecenat/app/WindowActivity;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 42
    iput-object p1, p0, Lse/mecenat/app/WindowActivity;->retryButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$600(Lse/mecenat/app/WindowActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->retryButtonClickArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$602(Lse/mecenat/app/WindowActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 42
    iput-object p1, p0, Lse/mecenat/app/WindowActivity;->retryButtonClickArea:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$700(Lse/mecenat/app/WindowActivity;)Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    return-object v0
.end method

.method static synthetic access$702(Lse/mecenat/app/WindowActivity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    .prologue
    .line 42
    iput-object p1, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    return-object p1
.end method

.method static synthetic access$802(Lse/mecenat/app/WindowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lse/mecenat/app/WindowActivity;->errorFromContent:Z

    return p1
.end method

.method static synthetic access$900(Lse/mecenat/app/WindowActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/WindowActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lse/mecenat/app/WindowActivity;->loadUrlContent(Ljava/lang/String;)V

    return-void
.end method

.method private fireEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lse/mecenat/app/WindowActivity;->fireEvent(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method private fireEvent(ILjava/lang/Object;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v1, p0, Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 103
    if-eqz p2, :cond_0

    .line 104
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    :cond_0
    iget-object v1, p0, Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method private loadUrlContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lse/mecenat/app/WindowActivity;->fireEvent(I)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lse/mecenat/app/WindowActivity;->loadedOkContent:Z

    .line 268
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatWebView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1}, Lse/mecenat/app/MecenatWebView;->loadUrl(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private updateProgress()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    iget-boolean v4, p0, Lse/mecenat/app/WindowActivity;->loadedOkContent:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lse/mecenat/app/WindowActivity;->loadedOkSubNav:Z

    if-eqz v4, :cond_1

    move v0, v2

    .line 251
    .local v0, "allLoadedOk":Z
    :goto_0
    iget-boolean v4, p0, Lse/mecenat/app/WindowActivity;->errorFromContent:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lse/mecenat/app/WindowActivity;->errorFromSubNav:Z

    if-eqz v4, :cond_2

    :cond_0
    move v1, v2

    .line 252
    .local v1, "someFailed":Z
    :goto_1
    iget-object v4, p0, Lse/mecenat/app/WindowActivity;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProgress: allLoadedOk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " someFailed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 254
    invoke-direct {p0, v3}, Lse/mecenat/app/WindowActivity;->fireEvent(I)V

    .line 263
    :goto_2
    return-void

    .end local v0    # "allLoadedOk":Z
    .end local v1    # "someFailed":Z
    :cond_1
    move v0, v3

    .line 250
    goto :goto_0

    .restart local v0    # "allLoadedOk":Z
    :cond_2
    move v1, v3

    .line 251
    goto :goto_1

    .line 257
    .restart local v1    # "someFailed":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 258
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lse/mecenat/app/WindowActivity;->fireEvent(I)V

    goto :goto_2

    .line 260
    :cond_4
    invoke-direct {p0, v2}, Lse/mecenat/app/WindowActivity;->fireEvent(I)V

    goto :goto_2
.end method


# virtual methods
.method public bgOnLoadResource(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 354
    return-void
.end method

.method public bgOnPageFailed(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 241
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_1

    .line 242
    iput-boolean v1, p0, Lse/mecenat/app/WindowActivity;->errorFromContent:Z

    .line 246
    :cond_0
    :goto_0
    invoke-direct {p0}, Lse/mecenat/app/WindowActivity;->updateProgress()V

    .line 247
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_0

    .line 244
    iput-boolean v1, p0, Lse/mecenat/app/WindowActivity;->errorFromSubNav:Z

    goto :goto_0
.end method

.method public bgOnPageLoading(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "finished"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_0

    .line 219
    iput-boolean p4, p0, Lse/mecenat/app/WindowActivity;->loadedOkContent:Z

    .line 221
    :cond_0
    if-eqz p4, :cond_1

    .line 222
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    sget-object v1, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->SIGN_IN:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-ne v0, v1, :cond_1

    .line 224
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    invoke-virtual {v0, p2}, Lse/mecenat/app/MecenatApplication;->setCurrentDomainUrl(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lse/mecenat/app/MecenatApplication;->isUserSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lse/mecenat/app/WindowActivity;->loadedOkContent:Z

    .line 227
    const/4 v0, 0x3

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lse/mecenat/app/WindowActivity;->fireEvent(ILjava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lse/mecenat/app/WindowActivity$3;

    invoke-direct {v1, p0}, Lse/mecenat/app/WindowActivity$3;-><init>(Lse/mecenat/app/WindowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    :cond_1
    invoke-direct {p0}, Lse/mecenat/app/WindowActivity;->updateProgress()V

    .line 238
    return-void
.end method

.method public bgOnReceivedTitle(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    sget-object v1, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->SIGN_IN:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lse/mecenat/app/WindowActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lse/mecenat/app/WindowActivity$4;-><init>(Lse/mecenat/app/WindowActivity;Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lse/mecenat/app/WindowActivity;->fireEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public handleUserAction(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Lse/mecenat/app/common/AppCommand;)Z
    .locals 8
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cmd"    # Lse/mecenat/app/common/AppCommand;

    .prologue
    const v7, 0x7f04000c

    const v6, 0x7f04000b

    const v5, 0x7f04000a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, v2}, Lse/mecenat/app/WindowActivity;->fireEvent(I)V

    .line 301
    iget-object v3, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    sget-object v4, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->SIGN_IN:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-ne v3, v4, :cond_0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mecenat."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-virtual {v3, p2}, Lse/mecenat/app/MecenatApplication;->setCurrentDomainUrl(Ljava/lang/String;)V

    .line 305
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lse/mecenat/app/WindowActivity;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-winHandleUserAction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v3}, Lse/mecenat/app/common/CommandHandler;->Handle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v3

    .line 308
    invoke-virtual {v3, p1}, Lse/mecenat/app/common/CommandHandler;->From(Lse/mecenat/app/MecenatWebView;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v3

    invoke-virtual {v3, p3}, Lse/mecenat/app/common/CommandHandler;->Using(Lse/mecenat/app/common/AppCommand;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v3

    invoke-virtual {v3}, Lse/mecenat/app/common/CommandHandler;->getCommandAction()Lse/mecenat/app/common/CommandAction;

    move-result-object v0

    .line 310
    .local v0, "ca":Lse/mecenat/app/common/CommandAction;
    sget-object v3, Lse/mecenat/app/WindowActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getAction()Lse/mecenat/app/common/CommandAction$ActionType;

    move-result-object v4

    invoke-virtual {v4}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lse/mecenat/app/WindowActivity;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "handleUserAction"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    invoke-direct {p0}, Lse/mecenat/app/WindowActivity;->updateProgress()V

    move v1, v2

    .line 349
    :pswitch_0
    return v1

    .line 317
    :pswitch_1
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->finish()V

    .line 318
    invoke-virtual {p0, v1, v6}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 322
    :pswitch_2
    const/4 v3, -0x1

    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lse/mecenat/app/WindowActivity;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->finish()V

    .line 324
    invoke-virtual {p0, v1, v6}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 329
    :pswitch_3
    :try_start_0
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lse/mecenat/app/WindowActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_1
    invoke-virtual {p0, v5, v7}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 337
    :pswitch_4
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lse/mecenat/app/WindowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    invoke-virtual {p0, v5, v7}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    goto :goto_1

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 175
    if-ne p2, v6, :cond_0

    if-nez p1, :cond_0

    .line 176
    const-string v3, "URL"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "URL"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v4

    iget-object v4, v4, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v5, "app-push-notification-mode"

    invoke-interface {v4, v5, v7}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 178
    invoke-static {v2, v3, v4}, Lse/mecenat/app/common/AppCommand;->parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;

    move-result-object v0

    .line 180
    .local v0, "cmd":Lse/mecenat/app/common/AppCommand;
    sget-object v3, Lse/mecenat/app/common/AppCommand;->CONTENT_VIEW:Lse/mecenat/app/common/AppCommand;

    if-ne v0, v3, :cond_0

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lse/mecenat/app/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "URL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v6, v1}, Lse/mecenat/app/WindowActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->finish()V

    .line 186
    const v3, 0x7f04000b

    invoke-virtual {p0, v7, v3}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    .line 191
    .end local v0    # "cmd":Lse/mecenat/app/common/AppCommand;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lse/mecenat/app/WindowActivity$5;->$SwitchMap$se$mecenat$app$common$WindowIntentBuilder$WindowIntentType:[I

    iget-object v1, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    invoke-virtual {v1}, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lse/mecenat/app/WindowActivity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->finish()V

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->finish()V

    .line 205
    const/4 v0, 0x0

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCacheUpdate(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 357
    iget-object v1, p0, Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    sget-object v2, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->SIGN_IN:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-ne v1, v2, :cond_0

    .line 358
    if-eqz p1, :cond_1

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "loggedin"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lse/mecenat/app/WindowActivity;->setResult(ILandroid/content/Intent;)V

    .line 362
    const/4 v1, 0x0

    const v2, 0x7f04000b

    invoke-virtual {p0, v1, v2}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    .line 363
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->finish()V

    .line 368
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lse/mecenat/app/MecenatApplication;->getSignInUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lse/mecenat/app/WindowActivity;->loadUrlContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lse/mecenat/app/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance v0, Lse/mecenat/app/impl/FileSystemCacheStorage;

    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lse/mecenat/app/WindowActivity;->cacheStorage:Lse/mecenat/app/CacheStorageInterface;

    .line 113
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lse/mecenat/app/WindowActivity;->setContentView(I)V

    .line 115
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lse/mecenat/app/WindowActivity;->webTitle:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatWebView;

    iput-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    .line 117
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatWebView;

    iput-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    .line 118
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatWebView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lse/mecenat/app/WindowActivity$2;

    invoke-direct {v1, p0}, Lse/mecenat/app/WindowActivity$2;-><init>(Lse/mecenat/app/WindowActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method

.method public onOverrideRequest(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 377
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lse/mecenat/app/WindowActivity;->cacheStorage:Lse/mecenat/app/CacheStorageInterface;

    invoke-virtual {p0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getCurrentCacheFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lse/mecenat/app/CacheStorageInterface;->getContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method
