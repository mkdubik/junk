.class Lse/mecenat/app/WindowActivity$2$1;
.super Ljava/lang/Object;
.source "WindowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/WindowActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lse/mecenat/app/WindowActivity$2;


# direct methods
.method constructor <init>(Lse/mecenat/app/WindowActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lse/mecenat/app/WindowActivity$2;

    .prologue
    .line 138
    iput-object p1, p0, Lse/mecenat/app/WindowActivity$2$1;->this$1:Lse/mecenat/app/WindowActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$2$1;->this$1:Lse/mecenat/app/WindowActivity$2;

    iget-object v0, v0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const/4 v1, 0x0

    # setter for: Lse/mecenat/app/WindowActivity;->errorFromContent:Z
    invoke-static {v0, v1}, Lse/mecenat/app/WindowActivity;->access$802(Lse/mecenat/app/WindowActivity;Z)Z

    .line 141
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$2$1;->this$1:Lse/mecenat/app/WindowActivity$2;

    iget-object v0, v0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;
    invoke-static {v0}, Lse/mecenat/app/WindowActivity;->access$700(Lse/mecenat/app/WindowActivity;)Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    move-result-object v0

    sget-object v1, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->SIGN_IN:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$2$1;->this$1:Lse/mecenat/app/WindowActivity$2;

    iget-object v0, v0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v1, p0, Lse/mecenat/app/WindowActivity$2$1;->this$1:Lse/mecenat/app/WindowActivity$2;

    iget-object v1, v1, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-virtual {v1}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lse/mecenat/app/MecenatApplication;->getSignInUrl(Z)Ljava/lang/String;

    move-result-object v1

    # invokes: Lse/mecenat/app/WindowActivity;->loadUrlContent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lse/mecenat/app/WindowActivity;->access$900(Lse/mecenat/app/WindowActivity;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$2$1;->this$1:Lse/mecenat/app/WindowActivity$2;

    iget-object v0, v0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;
    invoke-static {v0}, Lse/mecenat/app/WindowActivity;->access$200(Lse/mecenat/app/WindowActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v0

    invoke-virtual {v0}, Lse/mecenat/app/MecenatWebView;->retry()V

    goto :goto_0
.end method
