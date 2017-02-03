.class Lse/mecenat/app/MecenatWebView$8;
.super Ljava/lang/Object;
.source "MecenatWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MecenatWebView;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MecenatWebView;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lse/mecenat/app/MecenatWebView;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 347
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView$8;->this$0:Lse/mecenat/app/MecenatWebView;

    iput-object p2, p0, Lse/mecenat/app/MecenatWebView$8;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lse/mecenat/app/MecenatWebView$8;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$8;->this$0:Lse/mecenat/app/MecenatWebView;

    # getter for: Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;
    invoke-static {v0}, Lse/mecenat/app/MecenatWebView;->access$200(Lse/mecenat/app/MecenatWebView;)Lse/mecenat/app/MecenatActivityInterface;

    move-result-object v1

    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$8;->val$view:Landroid/webkit/WebView;

    check-cast v0, Lse/mecenat/app/MecenatWebView;

    iget-object v2, p0, Lse/mecenat/app/MecenatWebView$8;->val$url:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lse/mecenat/app/MecenatActivityInterface;->bgOnLoadResource(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V

    .line 350
    return-void
.end method
