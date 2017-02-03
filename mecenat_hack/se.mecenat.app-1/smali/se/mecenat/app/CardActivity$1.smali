.class Lse/mecenat/app/CardActivity$1;
.super Landroid/os/Handler;
.source "CardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/CardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/CardActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/CardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/CardActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lse/mecenat/app/CardActivity$1;->this$0:Lse/mecenat/app/CardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    return-void
.end method
