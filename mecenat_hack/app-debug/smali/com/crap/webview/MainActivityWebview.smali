.class public Lcom/crap/webview/MainActivityWebview;
.super Landroid/webkit/WebViewClient;
.source "MainActivityWebview.java"


# instance fields
.field private basePath:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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

    .line 133
    const-string v1, "<div class=\"%s\">"

    .line 134
    .local v1, "template":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    aget-object v2, p1, v5

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 135
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

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
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

    .line 141
    const-string v1, "cphMain_trUniversity"

    const-string v2, "L\u00c4ROS\u00c4TE"

    invoke-static {p0, v1, v2}, Lcom/crap/webview/MainActivityWebview;->fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    const-string v1, "cphMain_trUnion"

    const-string v2, "STUDENTK\u00c5R"

    invoke-static {p0, v1, v2}, Lcom/crap/webview/MainActivityWebview;->fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    const-string v0, "<span class=\"%s\">"

    .line 145
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

    .line 146
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

    .line 147
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

    .line 149
    aget-object v1, p2, v4

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lcom/crap/webview/MainActivityWebview;->fixStudentID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {p0, p1, p3}, Lcom/crap/webview/MainActivityWebview;->fixNation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
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
    .line 119
    const-string v3, "<div class =\"university\">"

    .line 120
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int v1, v7, v8

    .line 121
    .local v1, "ix1":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "substr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    .line 124
    const-string v7, "<br/>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v2, v7, 0x5

    .line 125
    .local v2, "ix2":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "ix2":I
    :cond_0
    const/4 v7, 0x0

    const-string v8, "<br/>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "orig":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "r":Ljava/lang/String;
    return-object v5
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

    const-string v18, "sh"

    aput-object v18, v11, v17

    const/16 v17, 0x1

    const-string v18, "up"

    aput-object v18, v11, v17

    const/16 v17, 0x2

    const-string v18, "gh"

    aput-object v18, v11, v17

    const/16 v17, 0x3

    const-string v18, "og"

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

    invoke-static {v14, v0, v6, v1}, Lcom/crap/webview/MainActivityWebview;->changeData2(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v14, v0}, Lcom/crap/webview/MainActivityWebview;->changeNation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 113
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
    .line 158
    const-string v6, "<td style=\"vertical-align:top;\">"

    .line 159
    .local v6, "uni":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 160
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "substr":Ljava/lang/String;
    const-string v7, "<div"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "ix2":I
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 163
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

    .line 164
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "r":Ljava/lang/String;
    const-string v4, "/se/mobile/card/1/174/logo/2074_174_gastrike_v1.png"

    .line 167
    .local v4, "src":Ljava/lang/String;
    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 168
    return-object v3
.end method

.method static fixStudentID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v5, "<th>STUDENT ID</th>"

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
    const-string v6, "</td>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, "ix2":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "orig":Ljava/lang/String;
    const-string v6, "<td>%s</td>"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "r":Ljava/lang/String;
    return-object v3
.end method

.method static fixTH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v6, "<tr id=\"%s\">"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "uni":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 174
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "substr":Ljava/lang/String;
    const-string v6, "</th>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "ix2":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "orig":Ljava/lang/String;
    const-string v6, "<th>%s</th>"

    const-string v7, "%s"

    invoke-virtual {v6, v7, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 178
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
    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v0, v5, v6

    .line 193
    .local v0, "ix1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "substr":Ljava/lang/String;
    const-string v5, "</%s>"

    const-string v6, "%s"

    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "ix2":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "orig":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "r":Ljava/lang/String;
    return-object v3
.end method
