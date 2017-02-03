.class Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;
.super Ljava/lang/Object;
.source "ManifestCacheDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/ManifestCacheDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheDownloader"
.end annotation


# instance fields
.field mApp:Lse/mecenat/app/MecenatApplication;

.field final synthetic this$0:Lse/mecenat/app/ManifestCacheDownloader;


# direct methods
.method public constructor <init>(Lse/mecenat/app/ManifestCacheDownloader;Lse/mecenat/app/MecenatApplication;)V
    .locals 0
    .param p2, "app"    # Lse/mecenat/app/MecenatApplication;

    .prologue
    .line 188
    iput-object p1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->this$0:Lse/mecenat/app/ManifestCacheDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    .line 190
    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/HttpInterface$Response;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "eTag"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p1}, Lse/mecenat/app/common/CookieHelper;->getRawCookieHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "rawCookieHeader":Ljava/lang/String;
    iget-object v3, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    invoke-virtual {v3, v1}, Lse/mecenat/app/MecenatApplication;->getHttpInterface(Ljava/lang/String;)Lse/mecenat/app/HttpInterface;

    move-result-object v0

    .line 214
    .local v0, "httpInterface":Lse/mecenat/app/HttpInterface;
    invoke-interface {v0, p1, p2}, Lse/mecenat/app/HttpInterface;->getResponse(Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/HttpInterface$Response;

    move-result-object v2

    .line 215
    .local v2, "response":Lse/mecenat/app/HttpInterface$Response;
    return-object v2
.end method


# virtual methods
.method public downloadFile(Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;)Lse/mecenat/app/HttpInterface$Response;
    .locals 2
    .param p1, "entry"    # Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;

    .prologue
    .line 197
    invoke-virtual {p1}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/HttpInterface$Response;

    move-result-object v0

    return-object v0
.end method

.method public getManifest(Ljava/lang/String;)Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
    .locals 4
    .param p1, "currentCacheVersion"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrlAndCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mobile/app-manifest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/HttpInterface$Response;

    move-result-object v0

    .line 208
    .local v0, "response":Lse/mecenat/app/HttpInterface$Response;
    new-instance v1, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;

    iget-object v2, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->this$0:Lse/mecenat/app/ManifestCacheDownloader;

    iget-object v3, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    invoke-direct {v1, v2, v3, v0, p1}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;-><init>(Lse/mecenat/app/ManifestCacheDownloader;Lse/mecenat/app/MecenatApplication;Lse/mecenat/app/HttpInterface$Response;Ljava/lang/String;)V

    return-object v1
.end method
