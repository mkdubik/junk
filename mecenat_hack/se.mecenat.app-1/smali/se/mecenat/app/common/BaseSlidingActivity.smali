.class public abstract Lse/mecenat/app/common/BaseSlidingActivity;
.super Lcom/slidingmenu/lib/app/SlidingActivity;
.source "BaseSlidingActivity.java"

# interfaces
.implements Lse/mecenat/app/MecenatActivityInterface;


# instance fields
.field private final cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/slidingmenu/lib/app/SlidingActivity;-><init>()V

    .line 22
    new-instance v0, Lse/mecenat/app/common/BaseSlidingActivity$1;

    invoke-direct {v0, p0}, Lse/mecenat/app/common/BaseSlidingActivity$1;-><init>(Lse/mecenat/app/common/BaseSlidingActivity;)V

    iput-object v0, p0, Lse/mecenat/app/common/BaseSlidingActivity;->cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getAppState()Lse/mecenat/app/MecenatApplication;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lse/mecenat/app/common/BaseSlidingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatApplication;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lse/mecenat/app/common/BaseSlidingActivity;->cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lse/mecenat/app/common/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingActivity;->onPause()V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "se.mecenat.app.CACHE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lse/mecenat/app/common/BaseSlidingActivity;->cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lse/mecenat/app/common/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingActivity;->onResume()V

    .line 36
    return-void
.end method
