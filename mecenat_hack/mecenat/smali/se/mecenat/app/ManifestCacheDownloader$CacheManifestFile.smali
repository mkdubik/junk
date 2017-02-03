.class public Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;
.super Ljava/lang/Object;
.source "ManifestCacheDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/ManifestCacheDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheManifestFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    }
.end annotation


# instance fields
.field mApp:Lse/mecenat/app/MecenatApplication;

.field mContent:Ljava/io/BufferedReader;

.field mCurrentCacheVersion:Ljava/lang/String;

.field mResponseCode:I

.field mServerEtag:Ljava/lang/String;

.field final synthetic this$0:Lse/mecenat/app/ManifestCacheDownloader;


# direct methods
.method public constructor <init>(Lse/mecenat/app/ManifestCacheDownloader;Lse/mecenat/app/MecenatApplication;Lse/mecenat/app/HttpInterface$Response;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lse/mecenat/app/ManifestCacheDownloader;
    .param p2, "app"    # Lse/mecenat/app/MecenatApplication;
    .param p3, "response"    # Lse/mecenat/app/HttpInterface$Response;
    .param p4, "currentCacheVersion"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->this$0:Lse/mecenat/app/ManifestCacheDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p4, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mCurrentCacheVersion:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mApp:Lse/mecenat/app/MecenatApplication;

    .line 118
    if-eqz p3, :cond_0

    .line 119
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p3}, Lse/mecenat/app/HttpInterface$Response;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .local v0, "r":Ljava/io/BufferedReader;
    iput-object v0, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mContent:Ljava/io/BufferedReader;

    .line 122
    const-string v1, "ETag"

    invoke-virtual {p3, v1}, Lse/mecenat/app/HttpInterface$Response;->getSingleHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mServerEtag:Ljava/lang/String;

    .line 123
    invoke-virtual {p3}, Lse/mecenat/app/HttpInterface$Response;->getResponseCode()I

    move-result v1

    iput v1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mResponseCode:I

    .line 127
    .end local v0    # "r":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mResponseCode:I

    goto :goto_0
.end method


# virtual methods
.method public getNext()Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    .locals 3

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "manifestRow":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mContent:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v2, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;

    invoke-direct {v2, p0, v1}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;-><init>(Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getServerETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mServerEtag:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdated()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile;->mResponseCode:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
