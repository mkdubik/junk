.class public interface abstract Lse/mecenat/app/api/RestApiService;
.super Ljava/lang/Object;
.source "RestApiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/api/RestApiService$RestResponse;,
        Lse/mecenat/app/api/RestApiService$DeviceInfo;,
        Lse/mecenat/app/api/RestApiService$UserInfo;
    }
.end annotation


# static fields
.field public static final URL_API_REST_DEVICEINFO:Ljava/lang/String; = "/app/deviceinfo"

.field public static final URL_API_REST_USERINFO:Ljava/lang/String; = "/app/userinfo"


# virtual methods
.method public abstract sendDeviceInfo(Lse/mecenat/app/api/RestApiService$DeviceInfo;)Lse/mecenat/app/api/RestApiService$RestResponse;
    .param p1    # Lse/mecenat/app/api/RestApiService$DeviceInfo;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/app/deviceinfo"
    .end annotation
.end method

.method public abstract sendUserInfo(Lse/mecenat/app/api/RestApiService$UserInfo;)Lse/mecenat/app/api/RestApiService$RestResponse;
    .param p1    # Lse/mecenat/app/api/RestApiService$UserInfo;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/app/userinfo"
    .end annotation
.end method
