.class Lse/mecenat/app/WindowActivity$1;
.super Landroid/os/Handler;
.source "WindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/WindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/WindowActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/WindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lse/mecenat/app/WindowActivity$1;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget-object v1, p0, Lse/mecenat/app/WindowActivity$1;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->LOGTAG:Ljava/lang/String;
    invoke-static {v1}, Lse/mecenat/app/WindowActivity;->access$000(Lse/mecenat/app/WindowActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v1, p0, Lse/mecenat/app/WindowActivity$1;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->switcher:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lse/mecenat/app/WindowActivity;->access$100(Lse/mecenat/app/WindowActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v1, p0, Lse/mecenat/app/WindowActivity$1;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->switcher:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lse/mecenat/app/WindowActivity;->access$100(Lse/mecenat/app/WindowActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v1, p0, Lse/mecenat/app/WindowActivity$1;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v1, v1, Lse/mecenat/app/WindowActivity;->webTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lse/mecenat/app/WindowActivity$1;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->switcher:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lse/mecenat/app/WindowActivity;->access$100(Lse/mecenat/app/WindowActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lse/mecenat/app/WindowActivity$1;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v1, v1, Lse/mecenat/app/WindowActivity;->webTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
