.class public Lse/mecenat/app/MainActivity;
.super Lse/mecenat/app/common/BaseSlidingActivity;
.source "MainActivity.java"


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

.field private cacheStorage:Lse/mecenat/app/CacheStorageInterface;

.field private volatile errorFromContent:Z

.field private volatile errorFromMenu:Z

.field private volatile errorFromSubNav:Z

.field private volatile loadedOkContent:Z

.field private volatile loadedOkMenu:Z

.field private volatile loadedOkSubNav:Z

.field private final mUiHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private navigationButton:Landroid/widget/ImageButton;

.field private navigationButtonClickArea:Landroid/widget/FrameLayout;

.field private retryButton:Landroid/widget/ImageButton;

.field private retryButtonClickArea:Landroid/widget/LinearLayout;

.field private switcher:Landroid/widget/ViewFlipper;

.field private webTitle:Landroid/widget/TextView;

.field private webViewContent:Lse/mecenat/app/MecenatWebView;

.field private webViewMenu:Lse/mecenat/app/MecenatWebView;

.field private webViewSubNav:Lse/mecenat/app/MecenatWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lse/mecenat/app/common/BaseSlidingActivity;-><init>()V

    .line 55
    iput-boolean v1, p0, Lse/mecenat/app/MainActivity;->loadedOkContent:Z

    .line 56
    iput-boolean v1, p0, Lse/mecenat/app/MainActivity;->loadedOkSubNav:Z

    .line 57
    iput-boolean v1, p0, Lse/mecenat/app/MainActivity;->loadedOkMenu:Z

    .line 58
    iput-boolean v0, p0, Lse/mecenat/app/MainActivity;->errorFromContent:Z

    .line 59
    iput-boolean v0, p0, Lse/mecenat/app/MainActivity;->errorFromSubNav:Z

    .line 60
    iput-boolean v0, p0, Lse/mecenat/app/MainActivity;->errorFromMenu:Z

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;

    .line 82
    new-instance v0, Lse/mecenat/app/MainActivity$1;

    invoke-direct {v0, p0}, Lse/mecenat/app/MainActivity$1;-><init>(Lse/mecenat/app/MainActivity;)V

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lse/mecenat/app/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lse/mecenat/app/MainActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->switcher:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1000(Lse/mecenat/app/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->navigationButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lse/mecenat/app/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lse/mecenat/app/MainActivity;->assertSignedIn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lse/mecenat/app/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    return-void
.end method

.method static synthetic access$1300(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lse/mecenat/app/MainActivity;->loadUrlMenu(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lse/mecenat/app/MainActivity;->loadUrlSubNav(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lse/mecenat/app/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    return-object v0
.end method

.method static synthetic access$400(Lse/mecenat/app/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->navigationButtonClickArea:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;

    return-object v0
.end method

.method static synthetic access$600(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    return-object v0
.end method

.method static synthetic access$702(Lse/mecenat/app/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lse/mecenat/app/MainActivity;->errorFromContent:Z

    return p1
.end method

.method static synthetic access$800(Lse/mecenat/app/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->retryButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lse/mecenat/app/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->retryButtonClickArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private assertSignedIn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lse/mecenat/app/MecenatApplication;->isUserSignedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    :goto_0
    return v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    const-string v4, "x-app-old-uid"

    invoke-virtual {v3, v4}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    .local v1, "needsMigration":Z
    :goto_1
    sget-object v3, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->SIGN_IN:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    invoke-static {p0, v3}, Lse/mecenat/app/common/WindowIntentBuilder;->Create(Landroid/app/Activity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v3, "http://mecenat.com/se/mobile/sign-in/"

    .line 306
    :goto_2
    invoke-virtual {v4, v3}, Lse/mecenat/app/common/WindowIntentBuilder;->WithUrl(Ljava/lang/String;)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v3

    .line 307
    invoke-virtual {v3, v2}, Lse/mecenat/app/common/WindowIntentBuilder;->WithExitButton(Z)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v0

    .line 309
    .local v0, "intentBuilder":Lse/mecenat/app/common/WindowIntentBuilder;
    invoke-virtual {v0}, Lse/mecenat/app/common/WindowIntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lse/mecenat/app/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    invoke-virtual {p0, v2, v2}, Lse/mecenat/app/MainActivity;->overridePendingTransition(II)V

    move v1, v2

    .line 311
    goto :goto_0

    .end local v0    # "intentBuilder":Lse/mecenat/app/common/WindowIntentBuilder;
    .end local v1    # "needsMigration":Z
    :cond_1
    move v1, v2

    .line 304
    goto :goto_1

    .line 305
    .restart local v1    # "needsMigration":Z
    :cond_2
    const-string v3, "https://mecenat.com/se/mobile/app-sign-in"

    goto :goto_2
.end method

.method private configureSlideMenu(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 519
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 520
    .local v0, "menu":Lcom/slidingmenu/lib/SlidingMenu;
    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 522
    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 523
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 524
    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    .line 525
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 526
    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V

    .line 527
    invoke-virtual {p0, p1}, Lse/mecenat/app/MainActivity;->setSlidingActionBarEnabled(Z)V

    .line 528
    return-void
.end method

.method private fireEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lse/mecenat/app/MainActivity;->fireEvent(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method private fireEvent(ILjava/lang/Object;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v1, p0, Lse/mecenat/app/MainActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 114
    if-eqz p2, :cond_0

    .line 115
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    :cond_0
    iget-object v1, p0, Lse/mecenat/app/MainActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method private loadUrlContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 426
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lse/mecenat/app/MainActivity;->loadedOkContent:Z

    .line 428
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatWebView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1}, Lse/mecenat/app/MecenatWebView;->loadUrl(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private loadUrlMenu(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lse/mecenat/app/MainActivity;->loadedOkMenu:Z

    .line 434
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1}, Lse/mecenat/app/MecenatWebView;->loadUrl(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private loadUrlSubNav(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 438
    iput-boolean v1, p0, Lse/mecenat/app/MainActivity;->loadedOkSubNav:Z

    .line 439
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    .line 440
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatWebView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0, p1}, Lse/mecenat/app/MecenatWebView;->loadUrl(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method private updateProgress()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 409
    iget-boolean v4, p0, Lse/mecenat/app/MainActivity;->loadedOkContent:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lse/mecenat/app/MainActivity;->loadedOkSubNav:Z

    if-eqz v4, :cond_1

    move v0, v2

    .line 410
    .local v0, "allLoadedOk":Z
    :goto_0
    iget-boolean v4, p0, Lse/mecenat/app/MainActivity;->errorFromContent:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lse/mecenat/app/MainActivity;->errorFromSubNav:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lse/mecenat/app/MainActivity;->errorFromMenu:Z

    if-eqz v4, :cond_2

    :cond_0
    move v1, v2

    .line 412
    .local v1, "someFailed":Z
    :goto_1
    iget-object v4, p0, Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProgress() allLoadedOk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lse/mecenat/app/MainActivity;->loadedOkContent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lse/mecenat/app/MainActivity;->loadedOkSubNav:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lse/mecenat/app/MainActivity;->loadedOkMenu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") someFailed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 415
    invoke-direct {p0, v3}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    .line 423
    :goto_2
    return-void

    .end local v0    # "allLoadedOk":Z
    .end local v1    # "someFailed":Z
    :cond_1
    move v0, v3

    .line 409
    goto :goto_0

    .restart local v0    # "allLoadedOk":Z
    :cond_2
    move v1, v3

    .line 410
    goto :goto_1

    .line 417
    .restart local v1    # "someFailed":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 418
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    goto :goto_2

    .line 420
    :cond_4
    invoke-direct {p0, v2}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    goto :goto_2
.end method


# virtual methods
.method public bgOnLoadResource(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v1, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v1, :cond_0

    .line 532
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v2

    iget-object v2, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v3, "app-push-notification-mode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 532
    invoke-static {p2, v1, v2}, Lse/mecenat/app/common/AppCommand;->parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;

    move-result-object v0

    .line 534
    .local v0, "cmd":Lse/mecenat/app/common/AppCommand;
    sget-object v1, Lse/mecenat/app/common/AppCommand;->SUB_NAV:Lse/mecenat/app/common/AppCommand;

    if-ne v0, v1, :cond_0

    .line 535
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    .line 537
    iget-object v1, p0, Lse/mecenat/app/MainActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lse/mecenat/app/MainActivity$4;

    invoke-direct {v2, p0, p2}, Lse/mecenat/app/MainActivity$4;-><init>(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    .end local v0    # "cmd":Lse/mecenat/app/common/AppCommand;
    :cond_0
    return-void
.end method

.method public bgOnPageFailed(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_1

    .line 394
    iput-boolean v2, p0, Lse/mecenat/app/MainActivity;->errorFromContent:Z

    .line 405
    :cond_0
    :goto_0
    invoke-direct {p0}, Lse/mecenat/app/MainActivity;->updateProgress()V

    .line 406
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_2

    .line 396
    iput-boolean v2, p0, Lse/mecenat/app/MainActivity;->errorFromSubNav:Z

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_0

    .line 398
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lse/mecenat/app/MainActivity$3;

    invoke-direct {v1, p0}, Lse/mecenat/app/MainActivity$3;-><init>(Lse/mecenat/app/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    iput-boolean v2, p0, Lse/mecenat/app/MainActivity;->errorFromMenu:Z

    goto :goto_0
.end method

.method public bgOnPageLoading(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "finished"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_1

    .line 383
    iput-boolean p4, p0, Lse/mecenat/app/MainActivity;->loadedOkContent:Z

    .line 389
    :cond_0
    :goto_0
    invoke-direct {p0}, Lse/mecenat/app/MainActivity;->updateProgress()V

    .line 390
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_2

    .line 385
    iput-boolean p4, p0, Lse/mecenat/app/MainActivity;->loadedOkSubNav:Z

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;

    if-ne p1, v0, :cond_0

    .line 387
    iput-boolean p4, p0, Lse/mecenat/app/MainActivity;->loadedOkMenu:Z

    goto :goto_0
.end method

.method public bgOnReceivedTitle(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 368
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

    invoke-virtual {p1}, Lse/mecenat/app/MecenatWebView;->getWebContentType()Lse/mecenat/app/MecenatWebView$WebContentType;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/MecenatWebView$WebContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-boolean v0, p0, Lse/mecenat/app/MainActivity;->errorFromContent:Z

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lse/mecenat/app/MainActivity;->fireEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleUserAction(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Lse/mecenat/app/common/AppCommand;)Z
    .locals 8
    .param p1, "callingWebView"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cmd"    # Lse/mecenat/app/common/AppCommand;

    .prologue
    const v7, 0x7f04000c

    const v6, 0x7f04000a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 447
    iget-object v3, p0, Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUserAction() url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, v2}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    .line 449
    invoke-direct {p0}, Lse/mecenat/app/MainActivity;->assertSignedIn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 450
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v3}, Lse/mecenat/app/common/CommandHandler;->Handle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v3

    .line 451
    invoke-virtual {v3, p1}, Lse/mecenat/app/common/CommandHandler;->From(Lse/mecenat/app/MecenatWebView;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v3

    invoke-virtual {v3, p3}, Lse/mecenat/app/common/CommandHandler;->Using(Lse/mecenat/app/common/AppCommand;)Lse/mecenat/app/common/CommandHandler;

    move-result-object v3

    invoke-virtual {v3}, Lse/mecenat/app/common/CommandHandler;->getCommandAction()Lse/mecenat/app/common/CommandAction;

    move-result-object v0

    .line 453
    .local v0, "ca":Lse/mecenat/app/common/CommandAction;
    invoke-virtual {p1}, Lse/mecenat/app/MecenatWebView;->getWebContentType()Lse/mecenat/app/MecenatWebView$WebContentType;

    move-result-object v3

    sget-object v4, Lse/mecenat/app/MecenatWebView$WebContentType;->MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-ne v3, v4, :cond_0

    .line 454
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    iget-object v3, v3, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-push-notification-mode"

    invoke-interface {v3, v4, v1}, Lse/mecenat/app/SettingsInterface;->setBoolean(Ljava/lang/String;Z)V

    .line 458
    :cond_0
    const-string v3, "appcmd=viapush"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    iget-object v3, v3, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-push-notification-mode"

    invoke-interface {v3, v4, v2}, Lse/mecenat/app/SettingsInterface;->setBoolean(Ljava/lang/String;Z)V

    .line 463
    :cond_1
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    iget-object v3, v3, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-push-notification-mode"

    invoke-interface {v3, v4, v1}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    .end local v0    # "ca":Lse/mecenat/app/common/CommandAction;
    :goto_0
    return v1

    .line 467
    .restart local v0    # "ca":Lse/mecenat/app/common/CommandAction;
    :cond_2
    sget-object v3, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

    invoke-virtual {p1}, Lse/mecenat/app/MecenatWebView;->getWebContentType()Lse/mecenat/app/MecenatWebView$WebContentType;

    move-result-object v4

    invoke-virtual {v4}, Lse/mecenat/app/MecenatWebView$WebContentType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 508
    iget-object v1, p0, Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;

    const-string v3, "handleUserAction() Unknown webcontenttype"

    invoke-static {v1, v3}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .end local v0    # "ca":Lse/mecenat/app/common/CommandAction;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lse/mecenat/app/MainActivity;->updateProgress()V

    move v1, v2

    .line 515
    goto :goto_0

    .line 472
    .restart local v0    # "ca":Lse/mecenat/app/common/CommandAction;
    :pswitch_0
    sget-object v3, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getAction()Lse/mecenat/app/common/CommandAction$ActionType;

    move-result-object v4

    invoke-virtual {v4}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 501
    iget-object v1, p0, Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUserAction() ! Command not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :pswitch_1
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->signOut()V

    .line 476
    :pswitch_2
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    .line 478
    iget-object v1, p0, Lse/mecenat/app/MainActivity;->webTitle:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 482
    :pswitch_3
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    .line 484
    :try_start_0
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lse/mecenat/app/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_2
    invoke-virtual {p0, v6, v7}, Lse/mecenat/app/MainActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 492
    :pswitch_4
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    .line 493
    invoke-virtual {v0}, Lse/mecenat/app/common/CommandAction;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lse/mecenat/app/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 494
    invoke-virtual {p0, v6, v7}, Lse/mecenat/app/MainActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 485
    :catch_0
    move-exception v1

    goto :goto_2

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 472
    :pswitch_data_1
    .packed-switch 0x1
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
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 320
    const/4 v4, 0x7

    if-ne p1, v4, :cond_2

    .line 321
    const/4 v2, 0x0

    .line 324
    .local v2, "results":[Landroid/net/Uri;
    if-ne p2, v5, :cond_0

    .line 325
    if-eqz p3, :cond_0

    .line 326
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "dataString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 328
    new-array v2, v6, [Landroid/net/Uri;

    .line 329
    .end local v2    # "results":[Landroid/net/Uri;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v7

    .line 335
    .end local v1    # "dataString":Ljava/lang/String;
    .restart local v2    # "results":[Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v4, v2}, Lse/mecenat/app/MecenatWebView;->onFileBrowseResult([Landroid/net/Uri;)V

    .line 364
    .end local v2    # "results":[Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    if-ne p2, v5, :cond_4

    if-nez p1, :cond_4

    .line 344
    const-string v4, "URL"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    const-string v4, "URL"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v4

    invoke-virtual {v4}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v5

    iget-object v5, v5, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v6, "app-push-notification-mode"

    invoke-interface {v5, v6, v7}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 347
    invoke-static {v3, v4, v5}, Lse/mecenat/app/common/AppCommand;->parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;

    move-result-object v0

    .line 349
    .local v0, "cmd":Lse/mecenat/app/common/AppCommand;
    sget-object v4, Lse/mecenat/app/common/AppCommand;->CONTENT_VIEW:Lse/mecenat/app/common/AppCommand;

    if-ne v0, v4, :cond_1

    .line 350
    invoke-direct {p0, v3}, Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    .end local v0    # "cmd":Lse/mecenat/app/common/AppCommand;
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    const-string v4, "loggedin"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    invoke-direct {p0}, Lse/mecenat/app/MainActivity;->assertSignedIn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v4

    invoke-virtual {v4}, Lse/mecenat/app/MecenatApplication;->getMenuUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lse/mecenat/app/MainActivity;->loadUrlMenu(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v4

    invoke-virtual {v4}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_4
    if-ne p2, v6, :cond_1

    if-nez p1, :cond_1

    .line 362
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onCacheUpdate(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onCacheUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    if-eqz p1, :cond_0

    .line 552
    invoke-direct {p0}, Lse/mecenat/app/MainActivity;->assertSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isBehindShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lse/mecenat/app/MecenatApplication;->getMenuUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lse/mecenat/app/MainActivity;->loadUrlMenu(Ljava/lang/String;)V

    .line 556
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 123
    invoke-super {p0, p1}, Lse/mecenat/app/common/BaseSlidingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    new-instance v0, Lse/mecenat/app/impl/FileSystemCacheStorage;

    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->cacheStorage:Lse/mecenat/app/CacheStorageInterface;

    .line 126
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->setBehindContentView(I)V

    .line 127
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->setContentView(I)V

    .line 130
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->webTitle:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->switcher:Landroid/widget/ViewFlipper;

    .line 132
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->navigationButton:Landroid/widget/ImageButton;

    .line 133
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->navigationButtonClickArea:Landroid/widget/FrameLayout;

    .line 134
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->retryButton:Landroid/widget/ImageButton;

    .line 135
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->retryButtonClickArea:Landroid/widget/LinearLayout;

    .line 136
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatWebView;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;

    .line 137
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatWebView;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    .line 138
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lse/mecenat/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatWebView;

    iput-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    .line 141
    invoke-direct {p0, v2}, Lse/mecenat/app/MainActivity;->fireEvent(I)V

    .line 144
    invoke-direct {p0, v2}, Lse/mecenat/app/MainActivity;->configureSlideMenu(Z)V

    .line 147
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lse/mecenat/app/MainActivity$2;

    invoke-direct {v1, p0}, Lse/mecenat/app/MainActivity$2;-><init>(Lse/mecenat/app/MainActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Lse/mecenat/app/common/BaseSlidingActivity;->onDestroy()V

    .line 293
    return-void
.end method

.method public onInitCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 297
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 232
    sparse-switch p1, :sswitch_data_0

    .line 254
    :cond_0
    invoke-super {p0, p1, p2}, Lse/mecenat/app/common/BaseSlidingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 234
    :sswitch_0
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isBehindShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    .line 239
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showBehind()V

    goto :goto_1

    .line 243
    :sswitch_1
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0}, Lse/mecenat/app/MecenatWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isBehindShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    .line 247
    :cond_2
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v0}, Lse/mecenat/app/MecenatWebView;->goBack()V

    .line 248
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatWebView;->setVisibility(I)V

    .line 249
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOverrideRequest(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Lse/mecenat/app/MecenatWebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 565
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    .line 568
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lse/mecenat/app/MainActivity;->cacheStorage:Lse/mecenat/app/CacheStorageInterface;

    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getCurrentCacheFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lse/mecenat/app/CacheStorageInterface;->getContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 281
    invoke-super {p0}, Lse/mecenat/app/common/BaseSlidingActivity;->onPause()V

    .line 282
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Lse/mecenat/app/common/BaseSlidingActivity;->onRestart()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 270
    invoke-super {p0}, Lse/mecenat/app/common/BaseSlidingActivity;->onResume()V

    .line 272
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lse/mecenat/app/MecenatApplication;->isUserSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatApplication;->refreshCache(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Lse/mecenat/app/common/BaseSlidingActivity;->onStart()V

    .line 265
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 287
    invoke-super {p0}, Lse/mecenat/app/common/BaseSlidingActivity;->onStop()V

    .line 288
    return-void
.end method
