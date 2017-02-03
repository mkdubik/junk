.class public Lse/mecenat/app/impl/URLConnectionHttp;
.super Ljava/lang/Object;
.source "URLConnectionHttp.java"

# interfaces
.implements Lse/mecenat/app/HttpInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;
    }
.end annotation


# instance fields
.field public currentDomainUrl:Ljava/lang/String;

.field public rawCookieHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rawCookieHeader"    # Ljava/lang/String;
    .param p2, "currentDomainUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lse/mecenat/app/impl/URLConnectionHttp;->rawCookieHeader:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lse/mecenat/app/impl/URLConnectionHttp;->currentDomainUrl:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lse/mecenat/app/impl/URLConnectionHttp;->rawCookieHeader:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lse/mecenat/app/impl/URLConnectionHttp;->currentDomainUrl:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public declared-synchronized getResponse(Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/HttpInterface$Response;
    .locals 13
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "eTag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 123
    monitor-enter p0

    :try_start_0
    new-instance v5, Lse/mecenat/app/HttpInterface$Response;

    invoke-direct {v5}, Lse/mecenat/app/HttpInterface$Response;-><init>()V

    .line 124
    .local v5, "r":Lse/mecenat/app/HttpInterface$Response;
    invoke-virtual {v5, p1}, Lse/mecenat/app/HttpInterface$Response;->setRequestUrl(Ljava/lang/String;)V

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .end local v7    # "urlConnection":Ljava/net/HttpURLConnection;
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 132
    .restart local v7    # "urlConnection":Ljava/net/HttpURLConnection;
    iget-object v9, p0, Lse/mecenat/app/impl/URLConnectionHttp;->rawCookieHeader:Ljava/lang/String;

    invoke-static {v7, v9}, Lse/mecenat/app/common/CookieHelper;->syncWebViewCookiesToNet(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 134
    const/16 v9, 0x3a98

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    const/16 v9, 0x3a98

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 136
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 137
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 138
    const-string v9, "http.useragent"

    const-string v10, "http.agent"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v9, "GET"

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 141
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 143
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 144
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 149
    if-eqz p2, :cond_0

    const-string v9, ""

    if-eq p2, v9, :cond_0

    .line 150
    const-string v9, "If-None-Match"

    invoke-virtual {v7, v9, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 154
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "encoding":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "mimeParts":[Ljava/lang/String;
    array-length v9, v3

    if-le v9, v11, :cond_1

    .line 159
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 160
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "charset="

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_1
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v5, v9}, Lse/mecenat/app/HttpInterface$Response;->setHeaders(Ljava/util/Map;)V

    .line 165
    invoke-virtual {v5, v4}, Lse/mecenat/app/HttpInterface$Response;->setContentType(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, v1}, Lse/mecenat/app/HttpInterface$Response;->setContentEncoding(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v5, v9}, Lse/mecenat/app/HttpInterface$Response;->setResponseCode(I)V

    .line 169
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 170
    .local v2, "inpStream":Ljava/io/InputStream;
    invoke-virtual {v5, v2}, Lse/mecenat/app/HttpInterface$Response;->setContent(Ljava/io/InputStream;)V

    .line 173
    new-instance v9, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;-><init>(Lse/mecenat/app/impl/URLConnectionHttp;Lse/mecenat/app/impl/URLConnectionHttp$1;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lse/mecenat/app/impl/URLConnectionHttp;->currentDomainUrl:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "inpStream":Ljava/io/InputStream;
    .end local v3    # "mimeParts":[Ljava/lang/String;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "r":Lse/mecenat/app/HttpInterface$Response;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    monitor-exit p0

    return-object v5

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v5, v8

    .line 178
    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v8

    .line 181
    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v8

    .line 185
    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized requestUrl(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 13
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 65
    monitor-enter p0

    const/4 v7, 0x0

    .line 66
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 71
    iget-object v8, p0, Lse/mecenat/app/impl/URLConnectionHttp;->rawCookieHeader:Ljava/lang/String;

    invoke-static {v7, v8}, Lse/mecenat/app/common/CookieHelper;->syncWebViewCookiesToNet(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 73
    const/16 v8, 0x3a98

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 74
    const/16 v8, 0x3a98

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 75
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 76
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 77
    const-string v8, "http.useragent"

    const-string v10, "http.agent"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 82
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 83
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 87
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 89
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "encoding":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "mimeParts":[Ljava/lang/String;
    array-length v8, v4

    if-le v8, v11, :cond_0

    .line 94
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 95
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v10, "charset="

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 98
    :cond_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 101
    .local v3, "inpStream":Ljava/io/InputStream;
    new-instance v8, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v10}, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;-><init>(Lse/mecenat/app/impl/URLConnectionHttp;Lse/mecenat/app/impl/URLConnectionHttp$1;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lse/mecenat/app/impl/URLConnectionHttp;->currentDomainUrl:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v10}, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    new-instance v8, Landroid/webkit/WebResourceResponse;

    invoke-direct {v8, v5, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "inpStream":Ljava/io/InputStream;
    .end local v4    # "mimeParts":[Ljava/lang/String;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    monitor-exit p0

    return-object v8

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v8, v9

    .line 106
    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 109
    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v9

    .line 113
    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
