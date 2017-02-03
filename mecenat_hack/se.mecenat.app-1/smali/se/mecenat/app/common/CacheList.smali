.class public Lse/mecenat/app/common/CacheList;
.super Ljava/lang/Object;
.source "CacheList.java"


# static fields
.field private static cachedUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final app:Lse/mecenat/app/MecenatApplication;

.field cacheUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field currentItem:I

.field private final loadCards:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lse/mecenat/app/MecenatApplication;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "app"    # Lse/mecenat/app/MecenatApplication;
    .param p2, "loadCards"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/mecenat/app/common/CacheList;->cacheUrls:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lse/mecenat/app/common/CacheList;->currentItem:I

    .line 31
    iput-object p1, p0, Lse/mecenat/app/common/CacheList;->app:Lse/mecenat/app/MecenatApplication;

    .line 32
    iput-object p2, p0, Lse/mecenat/app/common/CacheList;->loadCards:Ljava/lang/Boolean;

    .line 33
    return-void
.end method

.method private static getCacheUrls(Lse/mecenat/app/MecenatApplication;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 5
    .param p0, "app"    # Lse/mecenat/app/MecenatApplication;
    .param p1, "loadCards"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/mecenat/app/MecenatApplication;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "tempCachedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "app-menu-url"

    invoke-virtual {p0, v3}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v3, "app-menu-url"

    invoke-virtual {p0, v3}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x1

    .line 70
    .local v0, "cardNr":I
    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app-card-url-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "cardUrl":Ljava/lang/String;
    const-string v3, ""

    if-ne v1, v3, :cond_0

    .line 73
    const/4 v0, -0x1

    .line 77
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v1    # "cardUrl":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static isACacheUrl(Lse/mecenat/app/MecenatApplication;Ljava/lang/String;)Z
    .locals 1
    .param p0, "app"    # Lse/mecenat/app/MecenatApplication;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Lse/mecenat/app/common/CacheList;->cachedUrls:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lse/mecenat/app/common/CacheList;->getCacheUrls(Lse/mecenat/app/MecenatApplication;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lse/mecenat/app/common/CacheList;->cachedUrls:Ljava/util/List;

    .line 86
    :cond_0
    sget-object v0, Lse/mecenat/app/common/CacheList;->cachedUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateCacheList()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lse/mecenat/app/common/CacheList;->app:Lse/mecenat/app/MecenatApplication;

    iget-object v1, p0, Lse/mecenat/app/common/CacheList;->loadCards:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lse/mecenat/app/common/CacheList;->getCacheUrls(Lse/mecenat/app/MecenatApplication;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lse/mecenat/app/common/CacheList;->cachedUrls:Ljava/util/List;

    iput-object v0, p0, Lse/mecenat/app/common/CacheList;->cacheUrls:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lse/mecenat/app/common/CacheList;->cacheUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lse/mecenat/app/common/CacheList;->currentItem:I

    return v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lse/mecenat/app/common/CacheList;->updateCacheList()V

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "returnUrl":Ljava/lang/String;
    iget v1, p0, Lse/mecenat/app/common/CacheList;->currentItem:I

    iget-object v2, p0, Lse/mecenat/app/common/CacheList;->cacheUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Lse/mecenat/app/common/CacheList;->cacheUrls:Ljava/util/List;

    iget v2, p0, Lse/mecenat/app/common/CacheList;->currentItem:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 44
    .restart local v0    # "returnUrl":Ljava/lang/String;
    iget v1, p0, Lse/mecenat/app/common/CacheList;->currentItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lse/mecenat/app/common/CacheList;->currentItem:I

    .line 46
    :cond_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lse/mecenat/app/common/CacheList;->currentItem:I

    .line 37
    return-void
.end method
