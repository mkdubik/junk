.class public Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
.super Ljava/lang/Object;
.source "ManifestCacheDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheManifestEntry"
.end annotation


# instance fields
.field private final mUrl:Ljava/lang/String;

.field private final mVersionId:Ljava/lang/String;

.field final synthetic this$1:Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;


# direct methods
.method public constructor <init>(Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$1"    # Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
    .param p2, "manifestRow"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->this$1:Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->mVersionId:Ljava/lang/String;

    .line 167
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->mUrl:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->mVersionId:Ljava/lang/String;

    return-object v0
.end method
