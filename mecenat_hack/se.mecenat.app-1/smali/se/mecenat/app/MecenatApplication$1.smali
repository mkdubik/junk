.class Lse/mecenat/app/MecenatApplication$1;
.super Ljava/lang/Object;
.source "MecenatApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MecenatApplication;->refreshCache(ZLjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MecenatApplication;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lse/mecenat/app/MecenatApplication;Z)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MecenatApplication;

    .prologue
    .line 72
    iput-object p1, p0, Lse/mecenat/app/MecenatApplication$1;->this$0:Lse/mecenat/app/MecenatApplication;

    iput-boolean p2, p0, Lse/mecenat/app/MecenatApplication$1;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lse/mecenat/app/MecenatApplication$1;->this$0:Lse/mecenat/app/MecenatApplication;

    # getter for: Lse/mecenat/app/MecenatApplication;->cacheDownloader:Lse/mecenat/app/ManifestCacheDownloader;
    invoke-static {v0}, Lse/mecenat/app/MecenatApplication;->access$000(Lse/mecenat/app/MecenatApplication;)Lse/mecenat/app/ManifestCacheDownloader;

    move-result-object v0

    iget-boolean v1, p0, Lse/mecenat/app/MecenatApplication$1;->val$force:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lse/mecenat/app/ManifestCacheDownloader;->checkForNewContent(Ljava/lang/Boolean;)V

    .line 77
    return-void
.end method
