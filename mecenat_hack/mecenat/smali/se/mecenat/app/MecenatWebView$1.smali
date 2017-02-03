.class Lse/mecenat/app/MecenatWebView$1;
.super Landroid/os/Handler;
.source "MecenatWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/MecenatWebView;
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
    .line 104
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView$1;->this$0:Lse/mecenat/app/MecenatWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lse/mecenat/app/MecenatWebView$1;->this$0:Lse/mecenat/app/MecenatWebView;

    const/4 v1, 0x1

    const/4 v2, -0x2

    const-string v3, "Timeout"

    iget-object v4, p0, Lse/mecenat/app/MecenatWebView$1;->this$0:Lse/mecenat/app/MecenatWebView;

    iget-object v4, v4, Lse/mecenat/app/MecenatWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lse/mecenat/app/MecenatWebView;->loadHasFailed(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
