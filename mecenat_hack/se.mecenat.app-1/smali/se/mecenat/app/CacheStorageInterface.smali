.class public interface abstract Lse/mecenat/app/CacheStorageInterface;
.super Ljava/lang/Object;
.source "CacheStorageInterface.java"


# virtual methods
.method public abstract contentExist(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract contentExist(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;)Z
.end method

.method public abstract copyContent(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract deleteAllBut(Ljava/lang/String;)Z
.end method

.method public abstract deleteContainer(Ljava/lang/String;)Z
.end method

.method public abstract getContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract printCurrent(Ljava/lang/String;)V
.end method

.method public abstract putContent(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract putContent(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;Lse/mecenat/app/HttpInterface$Response;)Ljava/lang/Boolean;
.end method

.method public abstract renameContainer(Ljava/lang/String;Ljava/lang/String;)Z
.end method
