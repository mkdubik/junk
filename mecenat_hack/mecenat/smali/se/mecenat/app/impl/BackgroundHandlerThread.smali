.class public Lse/mecenat/app/impl/BackgroundHandlerThread;
.super Landroid/os/HandlerThread;
.source "BackgroundHandlerThread.java"

# interfaces
.implements Lse/mecenat/app/BackgroundQueueInterface;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lse/mecenat/app/impl/BackgroundHandlerThread;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lse/mecenat/app/impl/BackgroundHandlerThread;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method


# virtual methods
.method public runInBackground(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iget-object v0, p0, Lse/mecenat/app/impl/BackgroundHandlerThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lse/mecenat/app/impl/BackgroundHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lse/mecenat/app/impl/BackgroundHandlerThread;->mHandler:Landroid/os/Handler;

    .line 43
    :cond_0
    iget-object v0, p0, Lse/mecenat/app/impl/BackgroundHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method
