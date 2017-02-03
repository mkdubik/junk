.class Lse/mecenat/app/CardActivity$2;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/CardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/CardActivity;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lse/mecenat/app/CardActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/CardActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    iput-object p2, p0, Lse/mecenat/app/CardActivity$2;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lse/mecenat/app/CardActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    iget-object v0, v0, Lse/mecenat/app/CardActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    iget-object v1, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    invoke-virtual {v1}, Lse/mecenat/app/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatWebView;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    iget-object v0, v0, Lse/mecenat/app/CardActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;

    iget-object v1, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    sget-object v2, Lse/mecenat/app/MecenatWebView$WebContentType;->CARD:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v0, v1, v2}, Lse/mecenat/app/MecenatWebView;->init(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView$WebContentType;)V

    .line 79
    iget-object v0, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    iget-object v1, p0, Lse/mecenat/app/CardActivity$2;->val$method:Ljava/lang/String;

    invoke-static {v1}, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->valueOf(Ljava/lang/String;)Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    move-result-object v1

    iput-object v1, v0, Lse/mecenat/app/CardActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    .line 82
    iget-object v0, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    iget-object v0, v0, Lse/mecenat/app/CardActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    sget-object v1, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->CARD:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    iget-object v1, p0, Lse/mecenat/app/CardActivity$2;->val$url:Ljava/lang/String;

    # invokes: Lse/mecenat/app/CardActivity;->loadUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lse/mecenat/app/CardActivity;->access$000(Lse/mecenat/app/CardActivity;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    invoke-virtual {v0}, Lse/mecenat/app/CardActivity;->finish()V

    .line 88
    iget-object v0, p0, Lse/mecenat/app/CardActivity$2;->this$0:Lse/mecenat/app/CardActivity;

    const/4 v1, 0x0

    const v2, 0x7f04000b

    invoke-virtual {v0, v1, v2}, Lse/mecenat/app/CardActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
