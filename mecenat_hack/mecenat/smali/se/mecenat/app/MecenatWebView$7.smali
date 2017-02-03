.class Lse/mecenat/app/MecenatWebView$7;
.super Ljava/lang/Object;
.source "MecenatWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MecenatWebView;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MecenatWebView;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$failingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 330
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView$7;->this$0:Lse/mecenat/app/MecenatWebView;

    iput p2, p0, Lse/mecenat/app/MecenatWebView$7;->val$errorCode:I

    iput-object p3, p0, Lse/mecenat/app/MecenatWebView$7;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lse/mecenat/app/MecenatWebView$7;->val$failingUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lse/mecenat/app/MecenatWebView$7;->this$0:Lse/mecenat/app/MecenatWebView;

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

    const-string v2, "Ec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lse/mecenat/app/MecenatWebView$7;->val$errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lse/mecenat/app/MecenatWebView$7;->val$description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lse/mecenat/app/MecenatWebView$7;->val$failingUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$7;->this$0:Lse/mecenat/app/MecenatWebView;

    const/4 v1, 0x0

    iget v2, p0, Lse/mecenat/app/MecenatWebView$7;->val$errorCode:I

    iget-object v3, p0, Lse/mecenat/app/MecenatWebView$7;->val$description:Ljava/lang/String;

    iget-object v4, p0, Lse/mecenat/app/MecenatWebView$7;->val$failingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lse/mecenat/app/MecenatWebView;->loadHasFailed(ZILjava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method
