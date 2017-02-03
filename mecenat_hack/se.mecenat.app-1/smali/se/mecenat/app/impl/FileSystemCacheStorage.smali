.class public Lse/mecenat/app/impl/FileSystemCacheStorage;
.super Ljava/lang/Object;
.source "FileSystemCacheStorage.java"

# interfaces
.implements Lse/mecenat/app/CacheStorageInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;
    }
.end annotation


# static fields
.field static final dataFolder:Ljava/lang/String; = "appData"


# instance fields
.field private final backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

.field private final basePath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Lse/mecenat/app/impl/BackgroundHandlerThread;

    const-string v2, "FileSystemCacheStorageGroundThread"

    invoke-direct {v1, v2}, Lse/mecenat/app/impl/BackgroundHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    .line 117
    iput-object p1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    .line 119
    iget-object v1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 121
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 125
    .end local v0    # "success":Z
    :cond_0
    iget-object v1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    invoke-interface {v1}, Lse/mecenat/app/BackgroundQueueInterface;->start()V

    .line 126
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "destinationFolder"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x0

    .line 435
    const/4 v4, 0x0

    .line 436
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 440
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 441
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 444
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    .local v1, "destinationFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 448
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 450
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 451
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 462
    .end local v0    # "buffer":[B
    .end local v8    # "read":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 463
    .end local v1    # "destinationFile":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .local v3, "fnfe1":Ljava/io/FileNotFoundException;
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_1
    const-string v9, "tag"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 467
    .end local v3    # "fnfe1":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v9

    .line 453
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "destinationFile":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 454
    const/4 v4, 0x0

    .line 457
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 459
    const/4 v6, 0x0

    .line 460
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    const/4 v9, 0x1

    :try_start_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v9

    goto :goto_2

    .line 465
    .end local v0    # "buffer":[B
    .end local v1    # "destinationFile":Ljava/io/File;
    .end local v8    # "read":I
    :catch_1
    move-exception v2

    .line 466
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v9, "tag"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_2

    .line 465
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v1    # "destinationFile":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 462
    .end local v0    # "buffer":[B
    .end local v1    # "destinationFile":Ljava/io/File;
    .end local v8    # "read":I
    :catch_5
    move-exception v3

    goto :goto_1

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v1    # "destinationFile":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private deleteRecursive(Ljava/io/File;)Z
    .locals 6
    .param p1, "item"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 389
    :cond_0
    :goto_0
    return v2

    .line 379
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    const/4 v2, 0x1

    .line 381
    .local v2, "status":Z
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 382
    .local v1, "f":Ljava/io/File;
    invoke-direct {p0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;->deleteRecursive(Ljava/io/File;)Z

    move-result v0

    .line 383
    .local v0, "childDeleted":Z
    if-nez v0, :cond_2

    .line 384
    const/4 v2, 0x0

    .line 381
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "childDeleted":Z
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "status":Z
    :cond_3
    move v2, v3

    .line 389
    goto :goto_0
.end method

.method private pRecursive(Ljava/io/File;)Z
    .locals 5
    .param p1, "item"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    const-string v3, "CACHE"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    const/4 v1, 0x1

    .line 408
    .local v1, "status":Z
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 409
    .local v0, "f":Ljava/io/File;
    invoke-direct {p0, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->pRecursive(Ljava/io/File;)Z

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "status":Z
    :cond_1
    move v1, v2

    .line 413
    :cond_2
    return v1
.end method

.method private putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 8
    .param p1, "containerName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "data"    # Ljava/io/InputStream;

    .prologue
    .line 263
    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lse/mecenat/app/impl/FileSystemCacheStorage;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method private putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 14
    .param p1, "containerName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "versionId"    # Ljava/lang/String;
    .param p6, "etag"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/io/InputStream;

    .prologue
    .line 268
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v3, v11, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v3, "container":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 270
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v4, "content":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".info"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v5, "contentMeta":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 280
    .local v8, "outputStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 281
    .local v1, "bOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 282
    .local v10, "read":I
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 284
    .local v2, "bytes":[B
    :goto_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 285
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v1    # "bOutputStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "bytes":[B
    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .end local v10    # "read":I
    :catch_0
    move-exception v6

    .line 299
    .local v6, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FS.putContent("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " FAILED "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v11, 0x0

    .line 302
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return v11

    .line 287
    .restart local v1    # "bOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bytes":[B
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "read":I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 288
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 290
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 291
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 292
    .local v9, "outputStreamWr":Ljava/io/OutputStreamWriter;
    const-string v11, "%s;%s\n%s\n%s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p3, v12, v13

    const/4 v13, 0x1

    aput-object p4, v12, v13

    const/4 v13, 0x2

    aput-object p5, v12, v13

    const/4 v13, 0x3

    aput-object p6, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "metaData":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 295
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 296
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    const/4 v11, 0x1

    goto :goto_1
.end method

.method private urlAsHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 355
    :try_start_0
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 357
    .local v4, "md":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 358
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 359
    .local v1, "bytes":[B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 361
    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "tmp":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 366
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_1
    return-object v6

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0x1b

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method public contentExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "containerName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v0, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v0, "container":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p2}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v1, "content":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p2}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v2, "contentMeta":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 138
    .local v3, "exist":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 137
    .end local v3    # "exist":Ljava/lang/Boolean;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public contentExist(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;)Z
    .locals 10
    .param p1, "containerName"    # Ljava/lang/String;
    .param p2, "entry"    # Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;

    .prologue
    .line 147
    invoke-virtual {p2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "url":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v0, v8, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v0, "container":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, v7}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v1, "content":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, v7}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".info"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v2, "contentMeta":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 153
    .local v5, "fileExist":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 154
    .local v6, "metafileExist":Ljava/lang/Boolean;
    new-instance v3, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;

    invoke-direct {v3, p0, v2}, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;-><init>(Lse/mecenat/app/impl/FileSystemCacheStorage;Ljava/io/File;)V

    .line 156
    .local v3, "d":Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lse/mecenat/app/impl/FileSystemCacheStorage$Metadata;->getVersionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getVersionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 157
    .local v4, "exist":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    .line 156
    .end local v4    # "exist":Ljava/lang/Boolean;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public copyContent(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "sourceContainerName"    # Ljava/lang/String;
    .param p2, "entry"    # Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    .param p3, "destinationContainerName"    # Ljava/lang/String;

    .prologue
    .line 424
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 425
    .local v1, "sourceContainer":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v0, v4, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    .local v0, "destinationContainer":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v2, "sourceFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 429
    .local v3, "sourceFileMetadata":Ljava/io/File;
    invoke-direct {p0, v2, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public deleteAllBut(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v2, 0x1

    .line 342
    .local v2, "status":Z
    iget-object v3, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 343
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 344
    invoke-direct {p0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;->deleteRecursive(Ljava/io/File;)Z

    move-result v0

    .line 345
    .local v0, "childDeleted":Z
    if-nez v0, :cond_0

    .line 346
    const/4 v2, 0x0

    .line 342
    .end local v0    # "childDeleted":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    return v2
.end method

.method public deleteContainer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    .local v0, "container":Ljava/io/File;
    invoke-direct {p0, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->deleteRecursive(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public getContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 19
    .param p1, "containerName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 166
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v3, "container":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .local v4, "content":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;->urlAsHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ".info"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v5, "contentMeta":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    :goto_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 171
    .local v7, "exist":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_1

    .line 172
    const/4 v15, 0x0

    .line 209
    :goto_1
    return-object v15

    .line 170
    .end local v7    # "exist":Ljava/lang/Boolean;
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 178
    .restart local v7    # "exist":Ljava/lang/Boolean;
    :cond_1
    :try_start_0
    .local v10, "is":Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/FileInputStream;
    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    # Start injection
    move-object/from16 v0, p2 # Android only allows 15 registers. Use v11 because it will be used later and overwritten
    const-string v9, "se/mobile/kort"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v10, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->f3(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    :cond_3
    # End injection

    .line 179
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V


    .line 180
    .local v9, "fisMeta":Ljava/io/FileInputStream;
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v11, "isMeta":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 184
    .local v8, "fileContent":Ljava/lang/StringBuffer;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 186
    .local v2, "buffer":[B
    :goto_2
    invoke-virtual {v11, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 187
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 206
    .end local v2    # "buffer":[B
    .end local v8    # "fileContent":Ljava/lang/StringBuffer;
    .end local v9    # "fisMeta":Ljava/io/FileInputStream;
    .end local v10    # "is":Ljava/io/FileInputStream;
    .end local v11    # "isMeta":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v6

    .line 207
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FS.getContent("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ERROR "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const/4 v15, 0x0

    goto :goto_1

    .line 190
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":[B
    .restart local v8    # "fileContent":Ljava/lang/StringBuffer;
    .restart local v9    # "fisMeta":Ljava/io/FileInputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isMeta":Ljava/io/BufferedInputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, "meta":Ljava/lang/String;
    const-string v16, "\n"

    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 192
    .local v14, "metaWithVersionAndEtag":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v12, v14, v16

    .line 193
    const-string v16, ";"

    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, "metaData":[Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 203
    new-instance v15, Landroid/webkit/WebResourceResponse;

    const/16 v16, 0x0

    aget-object v16, v13, v16

    const/16 v17, 0x1

    aget-object v17, v13, v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1, v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .local v15, "rsp":Landroid/webkit/WebResourceResponse;
    goto/16 :goto_1
.end method

.method public printCurrent(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 397
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    .local v0, "container":Ljava/io/File;
    invoke-direct {p0, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->pRecursive(Ljava/io/File;)Z

    .line 400
    return-void
.end method

.method public putContent(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
    .locals 12
    .param p1, "containerName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/webkit/WebResourceResponse;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 225
    if-nez p3, :cond_0

    .line 226
    const-string v0, "FS.putContent(null)"

    const-string v1, "Unable to save NULL content"

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "encoding":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v9

    .line 236
    .local v9, "input":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x400

    :try_start_0
    new-array v7, v0, [B

    .line 240
    .local v7, "buffer":[B
    :goto_1
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    const/4 v0, -0x1

    if-le v10, v0, :cond_1

    .line 241
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 244
    .end local v7    # "buffer":[B
    .end local v10    # "len":I
    :catch_0
    move-exception v8

    .line 245
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    .end local v8    # "e1":Ljava/io/IOException;
    :goto_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 249
    .local v5, "fileInput":Ljava/io/InputStream;
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v11, "webInput":Ljava/io/InputStream;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 251
    invoke-direct/range {v0 .. v5}, Lse/mecenat/app/impl/FileSystemCacheStorage;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    .line 252
    iget-object v0, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->backGroundQueue:Lse/mecenat/app/BackgroundQueueInterface;

    new-instance v1, Lse/mecenat/app/impl/FileSystemCacheStorage$1;

    invoke-direct {v1, p0}, Lse/mecenat/app/impl/FileSystemCacheStorage$1;-><init>(Lse/mecenat/app/impl/FileSystemCacheStorage;)V

    invoke-interface {v0, v1}, Lse/mecenat/app/BackgroundQueueInterface;->runInBackground(Ljava/lang/Runnable;)V

    .line 259
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 243
    .end local v5    # "fileInput":Ljava/io/InputStream;
    .end local v11    # "webInput":Ljava/io/InputStream;
    .restart local v7    # "buffer":[B
    .restart local v10    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public putContent(Ljava/lang/String;Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;Lse/mecenat/app/HttpInterface$Response;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "containerName"    # Ljava/lang/String;
    .param p2, "cacheEntry"    # Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;
    .param p3, "response"    # Lse/mecenat/app/HttpInterface$Response;

    .prologue
    .line 312
    invoke-virtual {p2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lse/mecenat/app/HttpInterface$Response;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lse/mecenat/app/HttpInterface$Response;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-virtual {p2}, Lse/mecenat/app/ManifestCacheDownloader$CacheManifestFile$CacheManifestEntry;->getVersionId()Ljava/lang/String;

    move-result-object v5

    const-string v0, "ETag"

    invoke-virtual {p3, v0}, Lse/mecenat/app/HttpInterface$Response;->getSingleHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lse/mecenat/app/HttpInterface$Response;->getContent()Ljava/io/InputStream;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    .line 312
    invoke-direct/range {v0 .. v7}, Lse/mecenat/app/impl/FileSystemCacheStorage;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public renameContainer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v1, "oldContainer":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lse/mecenat/app/impl/FileSystemCacheStorage;->basePath:Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v0, "newContainer":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method static f3(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 22
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    .local v3, "bis":Ljava/io/BufferedInputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v15, "sb":Ljava/lang/StringBuilder;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 46
    .local v5, "buffer":[B
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    :cond_0
    const/4 v10, 0x1

    .line 51
    .local v10, "nation":I
    const/16 v17, 0xd

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "Stockholms"

    aput-object v18, v12, v17

    const/16 v17, 0x1

    const-string v18, "Uplands"

    aput-object v18, v12, v17

    const/16 v17, 0x2

    const-string v18, "G\u00e4strike-H\u00e4lsinge"

    aput-object v18, v12, v17

    const/16 v17, 0x3

    const-string v18, "\u00d6stg\u00f6ta"

    aput-object v18, v12, v17

    const/16 v17, 0x4

    const-string v18, "V\u00e4stg\u00f6ta"

    aput-object v18, v12, v17

    const/16 v17, 0x5

    const-string v18, "S\u00f6dermanlands-Nerikes"

    aput-object v18, v12, v17

    const/16 v17, 0x6

    const-string v18, "V\u00e4stmanlands-Dala"

    aput-object v18, v12, v17

    const/16 v17, 0x7

    const-string v18, "Sm\u00e5lands"

    aput-object v18, v12, v17

    const/16 v17, 0x8

    const-string v18, "G\u00f6teborgs"

    aput-object v18, v12, v17

    const/16 v17, 0x9

    const-string v18, "Kalmar"

    aput-object v18, v12, v17

    const/16 v17, 0xa

    const-string v18, "V\u00e4rmlands"

    aput-object v18, v12, v17

    const/16 v17, 0xb

    const-string v18, "Norrlands"

    aput-object v18, v12, v17

    const/16 v17, 0xc

    const-string v18, "Gotlands"

    aput-object v18, v12, v17

    .line 67
    .local v12, "nation_name":[Ljava/lang/String;
    const/16 v17, 0xd

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "sh.txt"

    aput-object v18, v11, v17

    const/16 v17, 0x1

    const-string v18, "up.txt"

    aput-object v18, v11, v17

    const/16 v17, 0x2

    const-string v18, "gh.txt"

    aput-object v18, v11, v17

    const/16 v17, 0x3

    const-string v18, "og.txt"

    aput-object v18, v11, v17

    const/16 v17, 0x4

    const-string v18, "vg"

    aput-object v18, v11, v17

    const/16 v17, 0x5

    const-string v18, "sn"

    aput-object v18, v11, v17

    const/16 v17, 0x6

    const-string v18, "vd"

    aput-object v18, v11, v17

    const/16 v17, 0x7

    const-string v18, "sl"

    aput-object v18, v11, v17

    const/16 v17, 0x8

    const-string v18, "gb"

    aput-object v18, v11, v17

    const/16 v17, 0x9

    const-string v18, "kl"

    aput-object v18, v11, v17

    const/16 v17, 0xa

    const-string v18, "vl"

    aput-object v18, v11, v17

    const/16 v17, 0xb

    const-string v18, "nl"

    aput-object v18, v11, v17

    const/16 v17, 0xc

    const-string v18, "gl"

    aput-object v18, v11, v17

    .line 83
    .local v11, "nation_img":[Ljava/lang/String;
    const-string v13, "-0478"

    .line 84
    .local v13, "personnumer_ending":Ljava/lang/String;
    new-instance v17, Ljava/util/GregorianCalendar;

    const/16 v18, 0x7c9

    const/16 v19, 0xb

    const/16 v20, 0x1

    invoke-direct/range {v17 .. v20}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 87
    .local v7, "date":Ljava/util/Date;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "cardnumber"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "lastname"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "firstname"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "birthdate"

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, "student-id"

    aput-object v20, v18, v19

    aput-object v18, v6, v17

    const/16 v17, 0x1

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "9754 2445 2105 2753"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "Okonski"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "Aleksander"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, ""

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, "0555 2323"

    aput-object v20, v18, v19

    aput-object v18, v6, v17

    .line 93
    .local v6, "data":[[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "s":Ljava/lang/String;
    const-string v17, "win"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v4, "buf":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    aget-object v18, v11, v10

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 97
    .local v9, "json":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v8, "in":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "str":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 101
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 105
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v17, "y-MM-dd"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "birthdate":Ljava/text/Format;
    const/16 v17, 0x1

    aget-object v17, v6, v17

    const/16 v18, 0x3

    invoke-virtual {v2, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 107
    aget-object v17, v12, v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v14, v0, v6, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;->changeData2(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 115
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v9    # "json":Ljava/io/InputStream;
    .end local v16    # "str":Ljava/lang/String;
    :goto_2
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v17

    .line 109
    .end local v2    # "birthdate":Ljava/text/Format;
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v17, "yyMMdd"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v2    # "birthdate":Ljava/text/Format;
    const/16 v17, 0x1

    aget-object v17, v6, v17

    const/16 v18, 0x4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "STUDENT ID:&nbsp;&nbsp;"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v6, v20

    const/16 v21, 0x4

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 111
    const/16 v17, 0x1

    aget-object v17, v6, v17

    const/16 v18, 0x3

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 112
    aget-object v17, v12, v10

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lse/mecenat/app/impl/FileSystemCacheStorage;->changeNation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 113
    invoke-static {v14, v6}, Lse/mecenat/app/impl/FileSystemCacheStorage;->changeData(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2
.end method


.method static changeData(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "data"    # [[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 143
    const-string v1, "<div class=\"%s\">"

    .line 144
    .local v1, "template":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    aget-object v2, p1, v5

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 145
    const-string v2, "%s"

    aget-object v3, p1, v5

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    const-string v4, "div"

    invoke-static {p0, v2, v3, v4}, Lse/mecenat/app/impl/FileSystemCacheStorage;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object p0
.end method

.method static changeData2(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "nation"    # Ljava/lang/String;
    .param p2, "data"    # [[Ljava/lang/String;
    .param p3, "picture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    const-string v1, "cphMain_trUniversity"

    const-string v2, "L\u00c4ROS\u00c4TE"

    invoke-static {p0, v1, v2}, Lse/mecenat/app/impl/FileSystemCacheStorage;->fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    const-string v1, "cphMain_trUnion"

    const-string v2, "STUDENTK\u00c5R"

    invoke-static {p0, v1, v2}, Lse/mecenat/app/impl/FileSystemCacheStorage;->fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    const-string v0, "<span class=\"%s\">"

    .line 155
    .local v0, "template":Ljava/lang/String;
    const-string v1, "%s"

    aget-object v2, p2, v5

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v4

    aget-object v2, v2, v4

    const-string v3, "span"

    invoke-static {p0, v1, v2, v3}, Lse/mecenat/app/impl/FileSystemCacheStorage;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    const-string v1, "%s"

    aget-object v2, p2, v5

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v4

    aget-object v2, v2, v6

    const-string v3, "span"

    invoke-static {p0, v1, v2, v3}, Lse/mecenat/app/impl/FileSystemCacheStorage;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    const-string v1, "%s"

    aget-object v2, p2, v5

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v4

    aget-object v2, v2, v7

    const-string v3, "span"

    invoke-static {p0, v1, v2, v3}, Lse/mecenat/app/impl/FileSystemCacheStorage;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 159
    aget-object v1, p2, v4

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lse/mecenat/app/impl/FileSystemCacheStorage;->fixStudentID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-static {p0, p1, p3}, Lse/mecenat/app/impl/FileSystemCacheStorage;->fixNation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    return-object p0
.end method

.method static fixNation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "nation"    # Ljava/lang/String;
    .param p2, "picture"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v6, "<td style=\"vertical-align:top;\">"

    .line 169
    .local v6, "uni":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 170
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "substr":Ljava/lang/String;
    const-string v7, "<div"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "ix2":I
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "orig":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "r":Ljava/lang/String;
    const-string v4, "/se/mobile/card/1/174/logo/2074_174_gastrike_v1.png"

    .line 177
    .local v4, "src":Ljava/lang/String;
    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 178
    return-object v3
.end method

.method static fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v6, "<tr id=\"%s\">"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "uni":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 184
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "substr":Ljava/lang/String;
    const-string v6, "</th>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, "ix2":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "orig":Ljava/lang/String;
    const-string v6, "<th>%s</th>"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "r":Ljava/lang/String;
    return-object v3
.end method

.method static fixStudentID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v5, "<th>STUDENT ID</th>"

    .line 193
    .local v5, "uni":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 194
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "substr":Ljava/lang/String;
    const-string v6, "</td>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, "ix2":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "orig":Ljava/lang/String;
    const-string v6, "<td>%s</td>"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "r":Ljava/lang/String;
    return-object v3
.end method

.method static replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v0, v5, v6

    .line 203
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "substr":Ljava/lang/String;
    const-string v5, "</%s>"

    const-string v6, "%s"

    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "ix2":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "orig":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "r":Ljava/lang/String;
    return-object v3
.end method

.method static changeNation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "nation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    const-string v3, "<div class =\"university\">"

    .line 130
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int v1, v7, v8

    .line 131
    .local v1, "ix1":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "substr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    .line 134
    const-string v7, "<br/>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v2, v7, 0x5

    .line 135
    .local v2, "ix2":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "ix2":I
    :cond_0
    const/4 v7, 0x0

    const-string v8, "<br/>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "orig":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "r":Ljava/lang/String;
    return-object v5
.end method