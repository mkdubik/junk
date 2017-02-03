.class Lse/mecenat/app/MecenatWebView$2;
.super Ljava/util/TimerTask;
.source "MecenatWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MecenatWebView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MecenatWebView;


# direct methods
.method constructor <init>(Lse/mecenat/app/MecenatWebView;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 126
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView$2;->this$0:Lse/mecenat/app/MecenatWebView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$2;->this$0:Lse/mecenat/app/MecenatWebView;

    iget-boolean v0, v0, Lse/mecenat/app/MecenatWebView;->loadTimeout:Z

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lse/mecenat/app/MecenatWebView$2;->this$0:Lse/mecenat/app/MecenatWebView;

    # getter for: Lse/mecenat/app/MecenatWebView;->LOGTAG:Ljava/lang/String;
    invoke-static {v1}, Lse/mecenat/app/MecenatWebView;->access$000(Lse/mecenat/app/MecenatWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-onReceivedError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lse/mecenat/app/MecenatWebView$2;->this$0:Lse/mecenat/app/MecenatWebView;

    iget-object v2, v2, Lse/mecenat/app/MecenatWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$2;->this$0:Lse/mecenat/app/MecenatWebView;

    # getter for: Lse/mecenat/app/MecenatWebView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lse/mecenat/app/MecenatWebView;->access$100(Lse/mecenat/app/MecenatWebView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lse/mecenat/app/MecenatWebView$2;->this$0:Lse/mecenat/app/MecenatWebView;

    # getter for: Lse/mecenat/app/MecenatWebView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lse/mecenat/app/MecenatWebView;->access$100(Lse/mecenat/app/MecenatWebView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    :cond_0
    return-void
.end method
