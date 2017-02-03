.class public Lse/mecenat/app/api/RestApi;
.super Ljava/lang/Object;
.source "RestApi.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lse/mecenat/app/api/RestApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lse/mecenat/app/api/RestApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lse/mecenat/app/api/RestApi;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "endPoint"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    new-instance v2, Lse/mecenat/app/api/RestApi$1;

    invoke-direct {v2, p0}, Lse/mecenat/app/api/RestApi$1;-><init>(Lse/mecenat/app/api/RestApi;)V

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setErrorHandler(Lretrofit/ErrorHandler;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 44
    .local v0, "restAdapter":Lretrofit/RestAdapter;
    const-class v1, Lse/mecenat/app/api/RestApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lse/mecenat/app/api/RestApiService;

    iput-object v1, p0, Lse/mecenat/app/api/RestApi;->mService:Lse/mecenat/app/api/RestApiService;

    .line 45
    return-void
.end method

.method public static getInstance()Lse/mecenat/app/api/RestApi;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lse/mecenat/app/api/RestApi;

    const-string v1, "https://api.mecenat.com/v1"

    invoke-direct {v0, v1}, Lse/mecenat/app/api/RestApi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public sendDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/api/RestApiService$RestResponse;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lse/mecenat/app/api/RestApiService$DeviceInfo;

    invoke-direct {v0}, Lse/mecenat/app/api/RestApiService$DeviceInfo;-><init>()V

    .line 59
    .local v0, "deviceInfo":Lse/mecenat/app/api/RestApiService$DeviceInfo;
    iput-object p1, v0, Lse/mecenat/app/api/RestApiService$DeviceInfo;->UId:Ljava/lang/String;

    .line 60
    iput-object p2, v0, Lse/mecenat/app/api/RestApiService$DeviceInfo;->Platform:Ljava/lang/String;

    .line 61
    iput-object p4, v0, Lse/mecenat/app/api/RestApiService$DeviceInfo;->DeviceToken:Ljava/lang/String;

    .line 62
    iput-object p3, v0, Lse/mecenat/app/api/RestApiService$DeviceInfo;->Version:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lse/mecenat/app/api/RestApi;->mService:Lse/mecenat/app/api/RestApiService;

    invoke-interface {v1, v0}, Lse/mecenat/app/api/RestApiService;->sendDeviceInfo(Lse/mecenat/app/api/RestApiService$DeviceInfo;)Lse/mecenat/app/api/RestApiService$RestResponse;

    move-result-object v1

    return-object v1
.end method

.method public sendUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/api/RestApiService$RestResponse;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "coords"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lse/mecenat/app/api/RestApiService$UserInfo;

    invoke-direct {v0}, Lse/mecenat/app/api/RestApiService$UserInfo;-><init>()V

    .line 50
    .local v0, "userInfo":Lse/mecenat/app/api/RestApiService$UserInfo;
    iput-object p1, v0, Lse/mecenat/app/api/RestApiService$UserInfo;->UId:Ljava/lang/String;

    .line 51
    iput-object p2, v0, Lse/mecenat/app/api/RestApiService$UserInfo;->Platform:Ljava/lang/String;

    .line 52
    iput-object p4, v0, Lse/mecenat/app/api/RestApiService$UserInfo;->Coords:Ljava/lang/String;

    .line 53
    iput-object p3, v0, Lse/mecenat/app/api/RestApiService$UserInfo;->Version:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lse/mecenat/app/api/RestApi;->mService:Lse/mecenat/app/api/RestApiService;

    invoke-interface {v1, v0}, Lse/mecenat/app/api/RestApiService;->sendUserInfo(Lse/mecenat/app/api/RestApiService$UserInfo;)Lse/mecenat/app/api/RestApiService$RestResponse;

    move-result-object v1

    return-object v1
.end method
