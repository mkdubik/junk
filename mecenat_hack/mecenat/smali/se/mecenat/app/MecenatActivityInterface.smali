.class public interface abstract Lse/mecenat/app/MecenatActivityInterface;
.super Ljava/lang/Object;
.source "MecenatActivityInterface.java"


# virtual methods
.method public abstract bgOnLoadResource(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
.end method

.method public abstract bgOnPageFailed(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract bgOnPageLoading(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract bgOnReceivedTitle(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
.end method

.method public abstract getAppState()Lse/mecenat/app/MecenatApplication;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract handleUserAction(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Lse/mecenat/app/common/AppCommand;)Z
.end method

.method public abstract onCacheUpdate(Z)V
.end method

.method public abstract onOverrideRequest(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method
