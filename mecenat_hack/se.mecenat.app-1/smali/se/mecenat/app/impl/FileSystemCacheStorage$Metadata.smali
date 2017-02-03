.class Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;
.super Ljava/lang/Object;
.source "FileSystemCacheStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/impl/FileSystemCacheStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field mContentEncoding:Ljava/lang/String;

.field mContentType:Ljava/lang/String;

.field mETag:Ljava/lang/String;

.field mVersionId:Ljava/lang/String;

.field final synthetic this$0:Lse/mecenat/app/impl/FileSystemCacheStorage;


# direct methods
.method public constructor <init>(Lse/mecenat/app/impl/FileSystemCacheStorage;Ljava/io/File;)V
    .locals 12
    .param p1, "this$0"    # Lse/mecenat/app/impl/FileSystemCacheStorage;
    .param p2, "contentMeta"    # Ljava/io/File;

    .prologue
    .line 59
    iput-object p1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->this$0:Lse/mecenat/app/impl/FileSystemCacheStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v10, ""

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mContentType:Ljava/lang/String;

    .line 52
    const-string v10, ""

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mContentEncoding:Ljava/lang/String;

    .line 53
    const-string v10, ""

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mVersionId:Ljava/lang/String;

    .line 54
    const-string v10, ""

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mETag:Ljava/lang/String;

    .line 60
    const/4 v4, 0x0

    .line 62
    .local v4, "fisMeta":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .end local v4    # "fisMeta":Ljava/io/FileInputStream;
    .local v5, "fisMeta":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v6, "isMeta":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v10, ""

    invoke-direct {v3, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "fileContent":Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    new-array v0, v10, [B

    .line 73
    .local v0, "buffer":[B
    :goto_0
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 74
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "meta":Ljava/lang/String;
    const-string v10, "\n"

    invoke-static {v10}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "metaWithVersionAndEtag":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v7, v9, v10

    .line 84
    const-string v10, ";"

    invoke-static {v10}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "metaData":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mContentType:Ljava/lang/String;

    .line 86
    const/4 v10, 0x1

    aget-object v10, v8, v10

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mContentEncoding:Ljava/lang/String;

    .line 87
    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 88
    const/4 v10, 0x1

    aget-object v10, v9, v10

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mVersionId:Ljava/lang/String;

    .line 92
    :goto_1
    array-length v10, v9

    const/4 v11, 0x2

    if-le v10, v11, :cond_2

    .line 93
    const/4 v10, 0x2

    aget-object v10, v9, v10

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mETag:Ljava/lang/String;

    .line 98
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v4, v5

    .line 102
    .end local v0    # "buffer":[B
    .end local v3    # "fileContent":Ljava/lang/StringBuffer;
    .end local v5    # "fisMeta":Ljava/io/FileInputStream;
    .end local v6    # "isMeta":Ljava/io/BufferedInputStream;
    .end local v7    # "meta":Ljava/lang/String;
    .end local v8    # "metaData":[Ljava/lang/String;
    .end local v9    # "metaWithVersionAndEtag":[Ljava/lang/String;
    .restart local v4    # "fisMeta":Ljava/io/FileInputStream;
    :goto_4
    return-void

    .line 63
    :catch_1
    move-exception v2

    .line 64
    .local v2, "e1":Ljava/io/FileNotFoundException;
    goto :goto_4

    .line 90
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    .end local v4    # "fisMeta":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileContent":Ljava/lang/StringBuffer;
    .restart local v5    # "fisMeta":Ljava/io/FileInputStream;
    .restart local v6    # "isMeta":Ljava/io/BufferedInputStream;
    .restart local v7    # "meta":Ljava/lang/String;
    .restart local v8    # "metaData":[Ljava/lang/String;
    .restart local v9    # "metaWithVersionAndEtag":[Ljava/lang/String;
    :cond_1
    const-string v10, ""

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mVersionId:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_2
    const-string v10, ""

    iput-object v10, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mETag:Ljava/lang/String;

    goto :goto_2

    .line 99
    :catch_2
    move-exception v10

    goto :goto_3
.end method


# virtual methods
.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->mVersionId:Ljava/lang/String;

    return-object v0
.end method
