.class Lse/mecenat/app/common/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/common/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/common/BaseActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/common/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/common/BaseActivity;

    .prologue
    .line 25
    iput-object p1, p0, Lse/mecenat/app/common/BaseActivity$1;->this$0:Lse/mecenat/app/common/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    .local v0, "success":Z
    iget-object v1, p0, Lse/mecenat/app/common/BaseActivity$1;->this$0:Lse/mecenat/app/common/BaseActivity;

    invoke-virtual {v1, v0}, Lse/mecenat/app/common/BaseActivity;->onCacheUpdate(Z)V

    .line 30
    return-void
.end method
