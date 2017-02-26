.class public Lcom/crap/webview/MainActivityWebview;
.super Landroid/webkit/WebViewClient;
.source "MainActivityWebview.java"


# instance fields
.field private basePath:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
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

    .line 137
    const-string v1, "<div class=\"%s\">"

    .line 138
    .local v1, "template":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    aget-object v2, p1, v5

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 139
    const-string v2, "%s"

    aget-object v3, p1, v5

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    const-string v4, "div"

    invoke-static {p0, v2, v3, v4}, Lcom/crap/webview/MainActivityWebview;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
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

    .line 145
    const-string v1, "cphMain_trUniversity"

    const-string v2, "L\u00c4ROS\u00c4TE"

    invoke-static {p0, v1, v2}, Lcom/crap/webview/MainActivityWebview;->fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    const-string v1, "cphMain_trUnion"

    const-string v2, "STUDENTK\u00c5R"

    invoke-static {p0, v1, v2}, Lcom/crap/webview/MainActivityWebview;->fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    const-string v0, "<span class=\"%s\">"

    .line 149
    .local v0, "template":Ljava/lang/String;
    const-string v1, "%s"

    aget-object v2, p2, v5

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v4

    aget-object v2, v2, v4

    const-string v3, "span"

    invoke-static {p0, v1, v2, v3}, Lcom/crap/webview/MainActivityWebview;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    const-string v1, "%s"

    aget-object v2, p2, v5

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v4

    aget-object v2, v2, v6

    const-string v3, "span"

    invoke-static {p0, v1, v2, v3}, Lcom/crap/webview/MainActivityWebview;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 151
    const-string v1, "%s"

    aget-object v2, p2, v5

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v4

    aget-object v2, v2, v7

    const-string v3, "span"

    invoke-static {p0, v1, v2, v3}, Lcom/crap/webview/MainActivityWebview;->replaceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    aget-object v1, p2, v4

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lcom/crap/webview/MainActivityWebview;->fixStudentID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {p0, p1, p3}, Lcom/crap/webview/MainActivityWebview;->fixNation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    return-object p0
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
    .line 123
    const-string v3, "<div class =\"university\">"

    .line 124
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int v1, v7, v8

    .line 125
    .local v1, "ix1":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "substr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    .line 128
    const-string v7, "<br/>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v2, v7, 0x5

    .line 129
    .local v2, "ix2":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "ix2":I
    :cond_0
    const/4 v7, 0x0

    const-string v8, "<br/>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "orig":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "r":Ljava/lang/String;
    return-object v5
.end method

.method static f3(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 23
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    .local v3, "bis":Ljava/io/BufferedInputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v15, "sb":Ljava/lang/StringBuilder;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 48
    .local v5, "buffer":[B
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    :cond_0
    const/4 v10, 0x1

    .line 53
    .local v10, "nation":I
    const/16 v18, 0xd

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Stockholms"

    aput-object v19, v12, v18

    const/16 v18, 0x1

    const-string v19, "Uplands"

    aput-object v19, v12, v18

    const/16 v18, 0x2

    const-string v19, "G\u00e4strike-H\u00e4lsinge"

    aput-object v19, v12, v18

    const/16 v18, 0x3

    const-string v19, "\u00d6stg\u00f6ta"

    aput-object v19, v12, v18

    const/16 v18, 0x4

    const-string v19, "V\u00e4stg\u00f6ta"

    aput-object v19, v12, v18

    const/16 v18, 0x5

    const-string v19, "S\u00f6dermanlands-Nerikes"

    aput-object v19, v12, v18

    const/16 v18, 0x6

    const-string v19, "V\u00e4stmanlands-Dala"

    aput-object v19, v12, v18

    const/16 v18, 0x7

    const-string v19, "Sm\u00e5lands"

    aput-object v19, v12, v18

    const/16 v18, 0x8

    const-string v19, "G\u00f6teborgs"

    aput-object v19, v12, v18

    const/16 v18, 0x9

    const-string v19, "Kalmar"

    aput-object v19, v12, v18

    const/16 v18, 0xa

    const-string v19, "V\u00e4rmlands"

    aput-object v19, v12, v18

    const/16 v18, 0xb

    const-string v19, "Norrlands"

    aput-object v19, v12, v18

    const/16 v18, 0xc

    const-string v19, "Gotlands"

    aput-object v19, v12, v18

    .line 69
    .local v12, "nation_name":[Ljava/lang/String;
    const/16 v18, 0xd

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "sh"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    const-string v19, "up"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    const-string v19, "gh"

    aput-object v19, v11, v18

    const/16 v18, 0x3

    const-string v19, "og"

    aput-object v19, v11, v18

    const/16 v18, 0x4

    const-string v19, "vg"

    aput-object v19, v11, v18

    const/16 v18, 0x5

    const-string v19, "sn"

    aput-object v19, v11, v18

    const/16 v18, 0x6

    const-string v19, "vd"

    aput-object v19, v11, v18

    const/16 v18, 0x7

    const-string v19, "sl"

    aput-object v19, v11, v18

    const/16 v18, 0x8

    const-string v19, "gb"

    aput-object v19, v11, v18

    const/16 v18, 0x9

    const-string v19, "kl"

    aput-object v19, v11, v18

    const/16 v18, 0xa

    const-string v19, "vl"

    aput-object v19, v11, v18

    const/16 v18, 0xb

    const-string v19, "nl"

    aput-object v19, v11, v18

    const/16 v18, 0xc

    const-string v19, "gl"

    aput-object v19, v11, v18

    .line 86
    .local v11, "nation_img":[Ljava/lang/String;
    const-string v13, "-0478"

    .line 87
    .local v13, "personnumer_ending":Ljava/lang/String;
    new-instance v18, Ljava/util/GregorianCalendar;

    const/16 v19, 0x7c9

    const/16 v20, 0xb

    const/16 v21, 0x1

    invoke-direct/range {v18 .. v21}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 90
    .local v7, "date":Ljava/util/Date;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v6, v0, [[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "cardnumber"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "lastname"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "firstname"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const-string v21, "birthdate"

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string v21, "student-id"

    aput-object v21, v19, v20

    aput-object v19, v6, v18

    const/16 v18, 0x1

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "9754 2445 2105 2753"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "Okonski"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "Aleksander"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const-string v21, ""

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string v21, "0555 2323"

    aput-object v21, v19, v20

    aput-object v19, v6, v18

    .line 96
    .local v6, "data":[[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 97
    .local v14, "s":Ljava/lang/String;
    const-string v18, "win"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    .line 99
    .local v16, "sdcard":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "nation/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v11, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v8, "file":Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v17, "text":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    .local v4, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 105
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 109
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v18, "y-MM-dd"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "birthdate":Ljava/text/Format;
    const/16 v18, 0x1

    aget-object v18, v6, v18

    const/16 v19, 0x3

    invoke-virtual {v2, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 111
    aget-object v18, v12, v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v14, v0, v6, v1}, Lcom/crap/webview/MainActivityWebview;->changeData2(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 119
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "line":Ljava/lang/String;
    .end local v16    # "sdcard":Ljava/io/File;
    .end local v17    # "text":Ljava/lang/StringBuilder;
    :goto_2
    new-instance v18, Ljava/io/ByteArrayInputStream;

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v18

    .line 113
    .end local v2    # "birthdate":Ljava/text/Format;
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v18, "yyMMdd"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v2    # "birthdate":Ljava/text/Format;
    const/16 v18, 0x1

    aget-object v18, v6, v18

    const/16 v19, 0x4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "STUDENT ID:&nbsp;&nbsp;"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v6, v21

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 115
    const/16 v18, 0x1

    aget-object v18, v6, v18

    const/16 v19, 0x3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 116
    aget-object v18, v12, v10

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/crap/webview/MainActivityWebview;->changeNation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 117
    invoke-static {v14, v6}, Lcom/crap/webview/MainActivityWebview;->changeData(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2
.end method

.method static fixNation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "nation"    # Ljava/lang/String;
    .param p2, "picture"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v6, "<td style=\"vertical-align:top;\">"

    .line 163
    .local v6, "uni":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 164
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "substr":Ljava/lang/String;
    const-string v7, "<div"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 166
    .local v1, "ix2":I
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 167
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

    .line 168
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "r":Ljava/lang/String;
    const-string v4, "/se/mobile/card/1/174/logo/2074_174_gastrike_v1.png"

    .line 171
    .local v4, "src":Ljava/lang/String;
    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 172
    return-object v3
.end method

.method static fixStudentID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v5, "<th>STUDENT ID</th>"

    .line 187
    .local v5, "uni":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 188
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "substr":Ljava/lang/String;
    const-string v6, "</td>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "ix2":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "orig":Ljava/lang/String;
    const-string v6, "<td>%s</td>"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "r":Ljava/lang/String;
    return-object v3
.end method

.method static fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v6, "<tr id=\"%s\">"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "uni":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 178
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "substr":Ljava/lang/String;
    const-string v6, "</th>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, "ix2":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "orig":Ljava/lang/String;
    const-string v6, "<th>%s</th>"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 182
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
    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v0, v5, v6

    .line 197
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "substr":Ljava/lang/String;
    const-string v5, "</%s>"

    const-string v6, "%s"

    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "ix2":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "orig":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "r":Ljava/lang/String;
    return-object v3
.end method
