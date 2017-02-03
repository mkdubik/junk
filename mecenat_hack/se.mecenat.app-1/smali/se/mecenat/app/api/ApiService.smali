.class public Lse/mecenat/app/api/ApiService;
.super Landroid/app/IntentService;
.source "ApiService.java"


# static fields
.field public static ACTION_SEND_DEVICE_INFO:Ljava/lang/String;

.field public static ACTION_SEND_USER_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "se.mecenat.app.api.sendUserInfo"

    sput-object v0, Lse/mecenat/app/api/ApiService;->ACTION_SEND_USER_INFO:Ljava/lang/String;

    .line 26
    const-string v0, "se.mecenat.app.api.sendDeviceInfo"

    sput-object v0, Lse/mecenat/app/api/ApiService;->ACTION_SEND_DEVICE_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ApiService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private handleResponse(Lse/mecenat/app/MecenatApplication;Lse/mecenat/app/api/RestApiService$RestResponse;)V
    .locals 3
    .param p1, "app"    # Lse/mecenat/app/MecenatApplication;
    .param p2, "resp"    # Lse/mecenat/app/api/RestApiService$RestResponse;

    .prologue
    .line 79
    iget-object v0, p1, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v1, "app-location-interval-max"

    iget v2, p2, Lse/mecenat/app/api/RestApiService$RestResponse;->GeoIntervalMax:I

    invoke-interface {v0, v1, v2}, Lse/mecenat/app/SettingsInterface;->setInt(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p1, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v1, "app-location-interval-min"

    iget v2, p2, Lse/mecenat/app/api/RestApiService$RestResponse;->GeoIntervalMin:I

    invoke-interface {v0, v1, v2}, Lse/mecenat/app/SettingsInterface;->setInt(Ljava/lang/String;I)V

    .line 81
    iget-object v0, p1, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v1, "app-location-interval-distance"

    iget v2, p2, Lse/mecenat/app/api/RestApiService$RestResponse;->GeoDistanceMeter:I

    invoke-interface {v0, v1, v2}, Lse/mecenat/app/SettingsInterface;->setInt(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public static sendDeviceInfo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/api/ApiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "sendApiIntent":Landroid/content/Intent;
    sget-object v1, Lse/mecenat/app/api/ApiService;->ACTION_SEND_DEVICE_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    return-void
.end method

.method public static sendUserInfo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/api/ApiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "sendApiIntent":Landroid/content/Intent;
    sget-object v1, Lse/mecenat/app/api/ApiService;->ACTION_SEND_USER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p0}, Lse/mecenat/app/api/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatApplication;

    .line 46
    .local v0, "app":Lse/mecenat/app/MecenatApplication;
    const-string v4, "auto"

    invoke-virtual {v0, v4}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "userId":Ljava/lang/String;
    invoke-static {}, Lse/mecenat/app/api/RestApi;->getInstance()Lse/mecenat/app/api/RestApi;

    move-result-object v2

    .line 49
    .local v2, "restServer":Lse/mecenat/app/api/RestApi;
    const/4 v1, 0x0

    .line 51
    .local v1, "resp":Lse/mecenat/app/api/RestApiService$RestResponse;
    invoke-static {v0}, Lse/mecenat/app/common/AndroidHelper;->isNetworkAvailable(Lse/mecenat/app/MecenatApplication;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lse/mecenat/app/api/ApiService;->ACTION_SEND_USER_INFO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    const-string v4, "android"

    invoke-virtual {v0}, Lse/mecenat/app/MecenatApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-static {p0}, Lse/mecenat/app/location/LocationHelper;->getLastKnownLocationAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-virtual {v2, v3, v4, v5, v6}, Lse/mecenat/app/api/RestApi;->sendUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/api/RestApiService$RestResponse;

    move-result-object v1

    .line 68
    :cond_1
    :goto_1
    invoke-direct {p0, v0, v1}, Lse/mecenat/app/api/ApiService;->handleResponse(Lse/mecenat/app/MecenatApplication;Lse/mecenat/app/api/RestApiService$RestResponse;)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v4

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lse/mecenat/app/api/ApiService;->ACTION_SEND_DEVICE_INFO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const-string v4, "android"

    invoke-virtual {v0}, Lse/mecenat/app/MecenatApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v7, "app-device-token"

    const-string v8, "0"

    .line 65
    invoke-interface {v6, v7, v8}, Lse/mecenat/app/SettingsInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-virtual {v2, v3, v4, v5, v6}, Lse/mecenat/app/api/RestApi;->sendDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/api/RestApiService$RestResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1
.end method
