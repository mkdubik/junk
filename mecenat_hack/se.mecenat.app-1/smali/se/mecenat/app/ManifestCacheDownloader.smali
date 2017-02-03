.class public Lse/mecenat/app/ManifestCacheDownloader;
.super Ljava/lang/Object;
.source "ManifestCacheDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;,
        Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
    }
.end annotation


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field mApp:Lse/mecenat/app/MecenatApplication;

.field mCacheDownloader:Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;

.field mCacheStorage:Lse/mecenat/app/CacheStorageInterface;

.field private mCacheSuccess:Z

.field private mIsRefreshing:Z


# direct methods
.method public constructor <init>(Lse/mecenat/app/MecenatApplication;Lse/mecenat/app/CacheStorageInterface;)V
    .locals 2
    .param p1, "app"    # Lse/mecenat/app/MecenatApplication;
    .param p2, "cacheStorage"    # Lse/mecenat/app/CacheStorageInterface;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/ManifestCacheDownloader;->LOGTAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lse/mecenat/app/ManifestCacheDownloader;->mIsRefreshing:Z

    .line 30
    iput-boolean v1, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z

    .line 41
    iput-object p1, p0, Lse/mecenat/app/ManifestCacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    .line 42
    new-instance v0, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;

    invoke-direct {v0, p0, p1}, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;-><init>(Lse/mecenat/app/ManifestCacheDownloader;Lse/mecenat/app/MecenatApplication;)V

    iput-object v0, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheDownloader:Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;

    .line 43
    iput-object p2, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheStorage:Lse/mecenat/app/CacheStorageInterface;

    .line 44
    return-void
.end method

.method private sendFinished(ZLjava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "newCacheFolderName"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v2, p0, Lse/mecenat/app/ManifestCacheDownloader;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== CACHE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "OK"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " === Broadcasting"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lse/mecenat/app/ManifestCacheDownloader;->mIsRefreshing:Z

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "se.mecenat.app.CACHE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lse/mecenat/app/ManifestCacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    invoke-virtual {v1, p1, p2}, Lse/mecenat/app/MecenatApplication;->onCacheUpdate(ZLjava/lang/String;)V

    .line 91
    iget-object v1, p0, Lse/mecenat/app/ManifestCacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    invoke-virtual {v1, v0}, Lse/mecenat/app/MecenatApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "FAILED"

    goto :goto_0
.end method


# virtual methods
.method public checkForNewContent(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "force"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 50
    iput-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z

    .line 51
    iput-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mIsRefreshing:Z

    .line 52
    iget-object v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mApp:Lse/mecenat/app/MecenatApplication;

    invoke-virtual {v4}, Lse/mecenat/app/MecenatApplication;->getCurrentCacheFolderName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "currentCacheContentName":Ljava/lang/String;
    iget-object v5, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheDownloader:Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "forcedRefresh"

    :goto_0
    invoke-virtual {v5, v4}, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->getManifest(Ljava/lang/String;)Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;

    move-result-object v3

    .line 56
    .local v3, "manifestFile":Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
    :try_start_0
    invoke-virtual {v3}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    iget-object v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=== CACHE MANIFEST IS NEW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->getServerETag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_1
    iget-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->getNext()Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;

    move-result-object v2

    .local v2, "entry":Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    if-eqz v2, :cond_3

    .line 63
    iget-object v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheStorage:Lse/mecenat/app/CacheStorageInterface;

    invoke-interface {v4, v0, v2}, Lse/mecenat/app/CacheStorageInterface;->contentExist(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    iget-object v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=== COPY EXISTING CONTENT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z

    iget-object v5, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheStorage:Lse/mecenat/app/CacheStorageInterface;

    const-string v6, "cacheTemp"

    invoke-interface {v5, v0, v2, v6}, Lse/mecenat/app/CacheStorageInterface;->copyContent(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v4, v5

    iput-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    .end local v2    # "entry":Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .end local v3    # "manifestFile":Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
    :cond_1
    move-object v4, v0

    .line 54
    goto/16 :goto_0

    .line 69
    .restart local v2    # "entry":Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    .restart local v3    # "manifestFile":Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=== DOWNLOAD CHANGED CONTENT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z

    iget-object v5, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheStorage:Lse/mecenat/app/CacheStorageInterface;

    const-string v6, "cacheTemp"

    iget-object v7, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheDownloader:Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;

    .line 71
    invoke-virtual {v7, v2}, Lse/mecenat/app/ManifestCacheDownloader$CacheDownloader;->downloadFile(Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;)Lse/mecenat/app/HttpInterface$Response;

    move-result-object v7

    .line 70
    invoke-interface {v5, v6, v2, v7}, Lse/mecenat/app/CacheStorageInterface;->putContent(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;Lse/mecenat/app/HttpInterface$Response;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v4, v5

    iput-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z

    goto/16 :goto_1

    .line 76
    .end local v2    # "entry":Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    :cond_3
    iget-boolean v4, p0, Lse/mecenat/app/ManifestCacheDownloader;->mCacheSuccess:Z

    invoke-virtual {v3}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->getServerETag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lse/mecenat/app/ManifestCacheDownloader;->sendFinished(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lse/mecenat/app/ManifestCacheDownloader;->mIsRefreshing:Z

    return v0
.end method
