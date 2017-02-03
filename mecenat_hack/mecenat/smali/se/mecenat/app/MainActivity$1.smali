.class Lse/mecenat/app/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MainActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lse/mecenat/app/MainActivity$1;->this$0:Lse/mecenat/app/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget-object v1, p0, Lse/mecenat/app/MainActivity$1;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->LOGTAG:Ljava/lang/String;
    invoke-static {v1}, Lse/mecenat/app/MainActivity;->access$000(Lse/mecenat/app/MainActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lse/mecenat/app/MainActivity$1;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->switcher:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lse/mecenat/app/MainActivity;->access$100(Lse/mecenat/app/MainActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v1, p0, Lse/mecenat/app/MainActivity$1;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->switcher:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lse/mecenat/app/MainActivity;->access$100(Lse/mecenat/app/MainActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v1, p0, Lse/mecenat/app/MainActivity$1;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lse/mecenat/app/MainActivity;->access$200(Lse/mecenat/app/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lse/mecenat/app/MainActivity$1;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->switcher:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lse/mecenat/app/MainActivity;->access$100(Lse/mecenat/app/MainActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lse/mecenat/app/MainActivity$1;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lse/mecenat/app/MainActivity;->access$200(Lse/mecenat/app/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
