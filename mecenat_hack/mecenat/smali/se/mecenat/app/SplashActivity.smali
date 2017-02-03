.class public Lse/mecenat/app/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mSplashThread:Ljava/lang/Thread;

.field private splashActivity:Lse/mecenat/app/SplashActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/SplashActivity;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lse/mecenat/app/SplashActivity;)Lse/mecenat/app/SplashActivity;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/SplashActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;

    return-object v0
.end method


# virtual methods
.method public getAppState()Lse/mecenat/app/MecenatApplication;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lse/mecenat/app/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatApplication;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    iput-object p0, p0, Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lse/mecenat/app/location/LocationService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "requestLocationIntent":Landroid/content/Intent;
    sget-object v2, Lse/mecenat/app/location/LocationService;->ACTION_START_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lse/mecenat/app/SplashActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    invoke-virtual {p0}, Lse/mecenat/app/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setFormat(I)V

    .line 65
    const v2, 0x7f03002f

    invoke-virtual {p0, v2}, Lse/mecenat/app/SplashActivity;->setContentView(I)V

    .line 68
    const/16 v1, 0x12c

    .line 70
    .local v1, "splashTime":I
    new-instance v2, Lse/mecenat/app/SplashActivity$1;

    invoke-direct {v2, p0}, Lse/mecenat/app/SplashActivity$1;-><init>(Lse/mecenat/app/SplashActivity;)V

    iput-object v2, p0, Lse/mecenat/app/SplashActivity;->mSplashThread:Ljava/lang/Thread;

    .line 138
    iget-object v2, p0, Lse/mecenat/app/SplashActivity;->mSplashThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 140
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 141
    sget-boolean v2, Lse/mecenat/app/Constants;->DEBUG_MODE:Z

    if-eqz v2, :cond_0

    .line 142
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 30
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 35
    return-void
.end method
