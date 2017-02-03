.class public Lse/mecenat/app/service/SendRegistrationIdService;
.super Landroid/app/IntentService;
.source "SendRegistrationIdService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "SendRegistrationIdService"

    invoke-direct {p0, v0}, Lse/mecenat/app/service/SendRegistrationIdService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static SendNewRegistrationId(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v1, "SendNewRegistrationId"

    const-string v2, "Ping:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "via Rest"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/service/SendRegistrationIdService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "updateRequest":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    return-void
.end method

.method private sendRegistrationIdToUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 62
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.useragent"

    const-string v6, "http.agent"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 66
    invoke-static {p1, v2}, Lse/mecenat/app/service/SendRegistrationIdService;->syncCookiesFromAppCookieManager(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 68
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "hp":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 71
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 72
    const-class v4, Lse/mecenat/app/service/SendRegistrationIdService;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Successfully registered on server"

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 74
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    const-class v4, Lse/mecenat/app/service/SendRegistrationIdService;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Successfully registered on server"

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 76
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static syncCookiesFromAppCookieManager(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 86
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 87
    .local v2, "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 89
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 90
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    if-nez v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_0
    invoke-static {p0}, Lse/mecenat/app/common/CookieHelper;->getCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "appCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/http/cookie/Cookie;

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookies([Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    .end local v0    # "appCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/net/MalformedURLException;
    const-string v4, "syncCookiesFromAppCookieManager"

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 101
    .local v3, "e":Lorg/apache/http/cookie/MalformedCookieException;
    const-string v4, "syncCookiesFromAppCookieManager"

    invoke-virtual {v3}, Lorg/apache/http/cookie/MalformedCookieException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v1, "URL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, v0}, Lse/mecenat/app/service/SendRegistrationIdService;->sendRegistrationIdToUrl(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
