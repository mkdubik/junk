.class public abstract Lse/mecenat/app/common/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lse/mecenat/app/MecenatActivityInterface;


# instance fields
.field private final cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lse/mecenat/app/common/BaseActivity$1;

    invoke-direct {v0, p0}, Lse/mecenat/app/common/BaseActivity$1;-><init>(Lse/mecenat/app/common/BaseActivity;)V

    iput-object v0, p0, Lse/mecenat/app/common/BaseActivity;->cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getAppState()Lse/mecenat/app/MecenatApplication;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lse/mecenat/app/common/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatApplication;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lse/mecenat/app/common/BaseActivity;->cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lse/mecenat/app/common/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "se.mecenat.app.CACHE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lse/mecenat/app/common/BaseActivity;->cacheUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lse/mecenat/app/common/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    return-void
.end method
