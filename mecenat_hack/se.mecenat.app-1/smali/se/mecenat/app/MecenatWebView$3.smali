.class Lse/mecenat/app/MecenatWebView$3;
.super Ljava/lang/Object;
.source "MecenatWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MecenatWebView;->configureWebView(Lse/mecenat/app/MecenatWebView;)V
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
    .line 223
    iput-object p1, p0, Lse/mecenat/app/MecenatWebView$3;->this$0:Lse/mecenat/app/MecenatWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 228
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
