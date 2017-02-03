.class Lse/mecenat/app/impl/FileSystemCacheStorage$1;
.super Ljava/lang/Object;
.source "FileSystemCacheStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/impl/FileSystemCacheStorage;->putContent(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/impl/FileSystemCacheStorage;


# direct methods
.method constructor <init>(Lse/mecenat/app/impl/FileSystemCacheStorage;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/impl/FileSystemCacheStorage;

    .prologue
    .line 252
    iput-object p1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$1;->this$0:Lse/mecenat/app/impl/FileSystemCacheStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
