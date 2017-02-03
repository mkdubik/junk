.class Lse/mecenat/app/WindowActivity$4;
.super Ljava/lang/Object;
.source "WindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/WindowActivity;->bgOnReceivedTitle(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/WindowActivity;

.field final synthetic val$callingWebView:Lse/mecenat/app/MecenatWebView;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lse/mecenat/app/WindowActivity;Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lse/mecenat/app/WindowActivity$4;->this$0:Lse/mecenat/app/WindowActivity;

    iput-object p2, p0, Lse/mecenat/app/WindowActivity$4;->val$callingWebView:Lse/mecenat/app/MecenatWebView;

    iput-object p3, p0, Lse/mecenat/app/WindowActivity$4;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 277
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$4;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-virtual {v0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    iget-object v1, p0, Lse/mecenat/app/WindowActivity$4;->val$callingWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v1}, Lse/mecenat/app/MecenatWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatApplication;->setCurrentDomainUrl(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$4;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-virtual {v0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lse/mecenat/app/MecenatApplication;->isUserSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$4;->this$0:Lse/mecenat/app/WindowActivity;

    const-string v1, ""

    # invokes: Lse/mecenat/app/WindowActivity;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v0, v2, v1}, Lse/mecenat/app/WindowActivity;->access$1000(Lse/mecenat/app/WindowActivity;ILjava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$4;->this$0:Lse/mecenat/app/WindowActivity;

    const/4 v1, 0x0

    # setter for: Lse/mecenat/app/WindowActivity;->loadedOkContent:Z
    invoke-static {v0, v1}, Lse/mecenat/app/WindowActivity;->access$1102(Lse/mecenat/app/WindowActivity;Z)Z

    .line 281
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$4;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lse/mecenat/app/WindowActivity;->access$1200(Lse/mecenat/app/WindowActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lse/mecenat/app/WindowActivity$4$1;

    invoke-direct {v1, p0}, Lse/mecenat/app/WindowActivity$4$1;-><init>(Lse/mecenat/app/WindowActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$4;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v1, p0, Lse/mecenat/app/WindowActivity$4;->val$title:Ljava/lang/String;

    # invokes: Lse/mecenat/app/WindowActivity;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v0, v2, v1}, Lse/mecenat/app/WindowActivity;->access$1000(Lse/mecenat/app/WindowActivity;ILjava/lang/Object;)V

    goto :goto_0
.end method
