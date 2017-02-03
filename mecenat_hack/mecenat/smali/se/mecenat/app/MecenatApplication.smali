.class public Lse/mecenat/app/MecenatApplication;
.super Landroid/app/Application;
.source "MecenatApplication.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field public final appSettings:Lse/mecenat/app/SettingsInterface;

.field private final backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

.field private cacheDownloader:Lse/mecenat/app/ManifestCacheDownloader;

.field private currentCacheFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/MecenatApplication;->LOGTAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lse/mecenat/app/impl/BackgroundHandlerThread;

    const-string v1, "ApplicationBackGroundThread"

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/BackgroundHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lse/mecenat/app/MecenatApplication;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    .line 38
    new-instance v0, Lse/mecenat/app/impl/SharedPreferensSettings;

    invoke-direct {v0, p0}, Lse/mecenat/app/impl/SharedPreferensSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    return-void
.end method

.method static synthetic access$000(Lse/mecenat/app/MecenatApplication;)Lse/mecenat/app/ManifestCacheDownloader;
    .locals 1
    .param p0, "x0"    # Lse/mecenat/app/MecenatApplication;

    .prologue
    .line 27
    iget-object v0, p0, Lse/mecenat/app/MecenatApplication;->cacheDownloader:Lse/mecenat/app/ManifestCacheDownloader;

    return-object v0
.end method


# virtual methods
.method public assertCacheIsOk()Z
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-cache-is-synced"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, "isSynced":Z
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lse/mecenat/app/MecenatApplication;->refreshCache(Z)V

    .line 92
    :cond_0
    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-static {p0}, Lse/mecenat/app/common/AndroidHelper;->getAppVersion(Lse/mecenat/app/MecenatApplication;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "cookieValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getCurrentCacheFolderName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->currentCacheFolderName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-cache-current-folder"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lse/mecenat/app/SettingsInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lse/mecenat/app/MecenatApplication;->currentCacheFolderName:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->currentCacheFolderName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    .line 228
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 229
    .local v0, "cacheDate":Ljava/util/Date;
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-cache-last-refreshed"

    invoke-interface {v1, v2, v0}, Lse/mecenat/app/SettingsInterface;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lse/mecenat/app/MecenatApplication;->currentCacheFolderName:Ljava/lang/String;

    .line 233
    .end local v0    # "cacheDate":Ljava/util/Date;
    :cond_0
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->currentCacheFolderName:Ljava/lang/String;

    return-object v1
.end method

.method public getCurrentDomainUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v1, "app-domain"

    const-string v2, "https://mecenat.com"

    invoke-interface {v0, v1, v2}, Lse/mecenat/app/SettingsInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDomainUrlAndCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v1, "app-domain"

    const-string v2, "https://mecenat.com"

    invoke-interface {v0, v1, v2}, Lse/mecenat/app/SettingsInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "country"

    const-string v2, "se"

    invoke-virtual {p0, v1, v2}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "app-start-url"

    invoke-virtual {p0, v0}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpInterface(Ljava/lang/String;)Lse/mecenat/app/HttpInterface;
    .locals 2
    .param p1, "rawCookieHeader"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lse/mecenat/app/impl/URLConnectionHttp;

    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lse/mecenat/app/impl/URLConnectionHttp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMenuUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "app-menu-url"

    invoke-virtual {p0, v0}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignInUrl(Z)Ljava/lang/String;
    .locals 2
    .param p1, "error"    # Z

    .prologue
    .line 241
    const-string v0, ""

    .line 242
    .local v0, "signInUrl":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 243
    const-string v1, "app-sign-in-error-url"

    invoke-virtual {p0, v1}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string v0, "https://mecenat.com/se/mobile/app-sign-in"

    .line 250
    :cond_0
    return-object v0

    .line 245
    :cond_1
    const-string v0, "https://mecenat.com/se/mobile/app-sign-in"

    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {p0}, Lse/mecenat/app/common/AndroidHelper;->isNetworkAvailable(Lse/mecenat/app/MecenatApplication;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isUserSignedIn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 100
    :cond_1
    :try_start_1
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "app-menu-url"

    invoke-virtual {p0, v1}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "app-card-url-"

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCacheUpdate(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 200
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 201
    .local v0, "cacheDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "newContainerName":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lse/mecenat/app/MecenatApplication;->onCacheUpdate(ZLjava/lang/String;)V

    .line 203
    return-void
.end method

.method public onCacheUpdate(ZLjava/lang/String;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "newCacheFolderName"    # Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 208
    .local v0, "cacheDate":Ljava/util/Date;
    move-object v2, p2

    .line 209
    .local v2, "newContainerName":Ljava/lang/String;
    new-instance v1, Lse/mecenat/app/impl/FileSystemCacheStorage;

    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Lse/mecenat/app/impl/FileSystemCacheStorage;-><init>(Ljava/io/File;)V

    .line 210
    .local v1, "cacheStorage":Lse/mecenat/app/CacheStorageInterface;
    const-string v3, "cacheTemp"

    invoke-interface {v1, v3, v2}, Lse/mecenat/app/CacheStorageInterface;->renameContainer(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    iput-object v2, p0, Lse/mecenat/app/MecenatApplication;->currentCacheFolderName:Ljava/lang/String;

    .line 212
    invoke-interface {v1, v2}, Lse/mecenat/app/CacheStorageInterface;->deleteAllBut(Ljava/lang/String;)Z

    .line 213
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-cache-last-refreshed"

    invoke-interface {v3, v4, v0}, Lse/mecenat/app/SettingsInterface;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 214
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-cache-current-folder"

    invoke-interface {v3, v4, p2}, Lse/mecenat/app/SettingsInterface;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-cache-is-synced"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lse/mecenat/app/SettingsInterface;->setBoolean(Ljava/lang/String;Z)V

    .line 219
    .end local v0    # "cacheDate":Ljava/util/Date;
    .end local v1    # "cacheStorage":Lse/mecenat/app/CacheStorageInterface;
    .end local v2    # "newContainerName":Ljava/lang/String;
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-cache-is-synced"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lse/mecenat/app/SettingsInterface;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 46
    .local v0, "cSyncMgr":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 47
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 48
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 49
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->setAppCookies()V

    .line 50
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    invoke-interface {v1}, Lse/mecenat/app/BackgroundQueueInterface;->start()V

    .line 51
    return-void
.end method

.method public declared-synchronized refreshCache(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lse/mecenat/app/MecenatApplication;->refreshCache(ZLjava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refreshCache(ZLjava/lang/Boolean;)V
    .locals 8
    .param p1, "force"    # Z
    .param p2, "onlyMenu"    # Ljava/lang/Boolean;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->cacheDownloader:Lse/mecenat/app/ManifestCacheDownloader;

    if-nez v3, :cond_0

    .line 61
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->LOGTAG:Ljava/lang/String;

    const-string v4, "Init cache manifest downloader"

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v3, Lse/mecenat/app/ManifestCacheDownloader;

    new-instance v4, Lse/mecenat/app/impl/FileSystemCacheStorage;

    .line 63
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Lse/mecenat/app/impl/FileSystemCacheStorage;-><init>(Ljava/io/File;)V

    invoke-direct {v3, p0, v4}, Lse/mecenat/app/ManifestCacheDownloader;-><init>(Lse/mecenat/app/MecenatApplication;Lse/mecenat/app/CacheStorageInterface;)V

    iput-object v3, p0, Lse/mecenat/app/MecenatApplication;->cacheDownloader:Lse/mecenat/app/ManifestCacheDownloader;

    .line 65
    :cond_0
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-cache-last-refreshed"

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v3, v4, v5}, Lse/mecenat/app/SettingsInterface;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 66
    .local v2, "lastRefreshed":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    add-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 68
    .local v0, "cacheExpire":Ljava/util/Date;
    if-nez p1, :cond_1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 70
    .local v1, "cacheNeedRefreshing":Z
    :goto_0
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->cacheDownloader:Lse/mecenat/app/ManifestCacheDownloader;

    invoke-virtual {v3}, Lse/mecenat/app/ManifestCacheDownloader;->isRefreshing()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 72
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    new-instance v4, Lse/mecenat/app/MecenatApplication$1;

    invoke-direct {v4, p0, p1}, Lse/mecenat/app/MecenatApplication$1;-><init>(Lse/mecenat/app/MecenatApplication;Z)V

    invoke-interface {v3, v4}, Lse/mecenat/app/BackgroundQueueInterface;->runInBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_2
    monitor-exit p0

    return-void

    .line 68
    .end local v1    # "cacheNeedRefreshing":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    .end local v0    # "cacheExpire":Ljava/util/Date;
    .end local v2    # "lastRefreshed":Ljava/util/Date;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeCookie(Ljava/lang/String;)V
    .locals 1
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lse/mecenat/app/common/CookieHelper;->removeCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public declared-synchronized setAppCookies()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    const-string v0, "x-app"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lse/mecenat/app/MecenatApplication;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "x-app-version"

    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lse/mecenat/app/MecenatApplication;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "x-app-coords"

    invoke-static {p0}, Lse/mecenat/app/location/LocationHelper;->getLastKnownLocationAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lse/mecenat/app/MecenatApplication;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "cookieValue"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public declared-synchronized setCurrentDomainUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "domainUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, "url":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "cleanDomainUrl":Ljava/lang/String;
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-domain"

    invoke-interface {v3, v4, v0}, Lse/mecenat/app/SettingsInterface;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->setAppCookies()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v0    # "cleanDomainUrl":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public signOut()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lse/mecenat/app/common/CookieHelper;->removeAllCookies()V

    .line 194
    new-instance v0, Lse/mecenat/app/impl/FileSystemCacheStorage;

    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;-><init>(Ljava/io/File;)V

    .line 195
    .local v0, "cacheStorage":Lse/mecenat/app/CacheStorageInterface;
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-cache-current-folder"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lse/mecenat/app/SettingsInterface;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "cacheTemp"

    invoke-interface {v0, v1}, Lse/mecenat/app/CacheStorageInterface;->deleteAllBut(Ljava/lang/String;)Z

    .line 197
    return-void
.end method

.method public updateGCMRegistrationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "x-app-device-token"

    invoke-virtual {p0, v0, p1}, Lse/mecenat/app/MecenatApplication;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method
