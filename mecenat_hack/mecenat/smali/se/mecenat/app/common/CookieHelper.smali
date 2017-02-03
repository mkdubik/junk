.class public Lse/mecenat/app/common/CookieHelper;
.super Ljava/lang/Object;
.source "CookieHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v3, ""

    .line 28
    .local v3, "returnString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 30
    .local v0, "appCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :try_start_0
    invoke-static {p0}, Lse/mecenat/app/common/CookieHelper;->getCookies(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 37
    :goto_0
    if-nez v0, :cond_0

    .line 38
    const-string v4, ""

    .line 46
    :goto_1
    return-object v4

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 41
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "n":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v2    # "n":Ljava/lang/String;
    :cond_2
    move-object v4, v3

    .line 46
    goto :goto_1

    .line 31
    :catch_0
    move-exception v4

    goto :goto_0

    .line 33
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v1, ""

    .line 51
    .local v1, "parsedHost":Ljava/lang/String;
    const/16 v2, 0x50

    .line 53
    .local v2, "parsedPort":I
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 57
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 58
    const/16 v2, 0x50

    .line 61
    :cond_0
    invoke-static {p0}, Lse/mecenat/app/common/CookieHelper;->getRawCookieHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "rawCookieHeader":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 63
    const-string v3, ""

    .line 66
    :cond_1
    new-instance v0, Lorg/apache/http/cookie/CookieOrigin;

    const-string v4, "/"

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 68
    .local v0, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-static {v3, v0}, Lse/mecenat/app/common/CookieHelper;->parseCookies(Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public static getRawCookieHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 78
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    const/4 v2, 0x0

    .line 80
    .local v2, "parsedHost":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    :goto_0
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "rawCookieHeader":Ljava/lang/String;
    return-object v3

    .line 81
    .end local v3    # "rawCookieHeader":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseCookies(Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 13
    .param p0, "rawCookieString"    # Ljava/lang/String;
    .param p1, "cookieOrigin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v2, "cookieList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const-string v6, "; "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v1, v8, v6

    .line 94
    .local v1, "cookie":Ljava/lang/String;
    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "keyValue":[Ljava/lang/String;
    aget-object v3, v4, v7

    .line 96
    .local v3, "key":Ljava/lang/String;
    const-string v5, ""

    .line 97
    .local v5, "value":Ljava/lang/String;
    array-length v10, v4

    if-le v10, v12, :cond_0

    .line 98
    aget-object v5, v4, v12

    .line 100
    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, v3, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v0, "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {p1}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 102
    const-string v10, "/"

    invoke-virtual {v0, v10}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 104
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyValue":[Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static removeAllCookies()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 134
    return-void
.end method

.method public static removeCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, ";expires=Mon, 17 Oct 2011 03:13:37 UTC"

    invoke-static {p0, p1, v0}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 130
    return-void
.end method

.method public static setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 120
    const-class v4, Lse/mecenat/app/common/CookieHelper;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 121
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "parsedHost":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; Path=/;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "cookieHeader":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v4

    return-void

    .line 120
    .end local v0    # "cookieHeader":Ljava/lang/String;
    .end local v1    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v2    # "parsedHost":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static syncNetCookiesToWebView(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 5
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "currentDomainUrl"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Set-Cookie"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 161
    .local v0, "cookieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, "cookieTemp":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v1    # "cookieTemp":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static syncWebViewCookiesToNet(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 4
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "rawCookieHeader"    # Ljava/lang/String;

    .prologue
    .line 141
    move-object v0, p1

    .line 142
    .local v0, "cookie":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 146
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    const-string v1, "Cookie"

    const-string v2, ";"

    const-string v3, ";"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    return-void
.end method
