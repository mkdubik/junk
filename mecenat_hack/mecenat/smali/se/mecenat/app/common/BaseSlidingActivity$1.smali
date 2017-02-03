.class Lse/mecenat/app/common/BaseSlidingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseSlidingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/common/BaseSlidingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/common/BaseSlidingActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/common/BaseSlidingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/common/BaseSlidingActivity;

    .prologue
    .line 22
    iput-object p1, p0, Lse/mecenat/app/common/BaseSlidingActivity$1;->this$0:Lse/mecenat/app/common/BaseSlidingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    .local v0, "success":Z
    iget-object v1, p0, Lse/mecenat/app/common/BaseSlidingActivity$1;->this$0:Lse/mecenat/app/common/BaseSlidingActivity;

    invoke-virtual {v1, v0}, Lse/mecenat/app/common/BaseSlidingActivity;->onCacheUpdate(Z)V

    .line 27
    return-void
.end method
