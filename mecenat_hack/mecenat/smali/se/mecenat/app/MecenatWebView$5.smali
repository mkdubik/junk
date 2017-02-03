.class Lse/mecenat/app/MecenatWebView$5;
.super Ljava/lang/Object;
.source "MecenatWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MecenatWebView;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MecenatWebView;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 284
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView$5;->this$0:Lse/mecenat/app/MecenatWebView;

    iput-object p2, p0, Lse/mecenat/app/MecenatWebView$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lse/mecenat/app/MecenatWebView$5;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lse/mecenat/app/MecenatWebView$5;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lse/mecenat/app/MecenatWebView$5;->this$0:Lse/mecenat/app/MecenatWebView;

    # getter for: Lse/mecenat/app/MecenatWebView;->LOGTAG:Ljava/lang/String;
    invoke-static {v1}, Lse/mecenat/app/MecenatWebView;->access$000(Lse/mecenat/app/MecenatWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-onPageFinished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lse/mecenat/app/MecenatWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$5;->this$0:Lse/mecenat/app/MecenatWebView;

    # getter for: Lse/mecenat/app/MecenatWebView;->hostActivity:Lse/mecenat/app/MecenatActivityInterface;
    invoke-static {v0}, Lse/mecenat/app/MecenatWebView;->access$200(Lse/mecenat/app/MecenatWebView;)Lse/mecenat/app/MecenatActivityInterface;

    move-result-object v1

    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$5;->val$view:Landroid/webkit/WebView;

    check-cast v0, Lse/mecenat/app/MecenatWebView;

    iget-object v2, p0, Lse/mecenat/app/MecenatWebView$5;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lse/mecenat/app/MecenatWebView$5;->val$title:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Lse/mecenat/app/MecenatActivityInterface;->bgOnPageLoading(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$5;->this$0:Lse/mecenat/app/MecenatWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lse/mecenat/app/MecenatWebView;->loadTimeout:Z

    .line 291
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$5;->this$0:Lse/mecenat/app/MecenatWebView;

    iget-object v0, v0, Lse/mecenat/app/MecenatWebView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 292
    return-void
.end method
