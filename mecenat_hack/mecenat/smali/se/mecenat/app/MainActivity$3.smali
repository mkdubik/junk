.class Lse/mecenat/app/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MainActivity;->bgOnPageFailed(Lse/mecenat/app/MecenatWebView;ILjava/lang/String;Ljava/lang/String;)V
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
    .line 398
    iput-object p1, p0, Lse/mecenat/app/MainActivity$3;->this$0:Lse/mecenat/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lse/mecenat/app/MainActivity$3;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v0}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lse/mecenat/app/MecenatApplication;->refreshCache(Z)V

    .line 401
    return-void
.end method
