.class public Lse/mecenat/app/impl/DialogWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "DialogWebChromeClient.java"


# instance fields
.field private final winDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "winDialog"    # Landroid/app/Dialog;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 20
    iput-object p1, p0, Lse/mecenat/app/impl/DialogWebChromeClient;->winDialog:Landroid/app/Dialog;

    .line 21
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 26
    iget-object v0, p0, Lse/mecenat/app/impl/DialogWebChromeClient;->winDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    const-string v0, "Webdialog"

    const-string v1, "Window trying to close"

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
