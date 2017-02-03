.class public Lse/mecenat/app/CloudMessaging;
.super Ljava/lang/Object;
.source "CloudMessaging.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIsRegistered(Lse/mecenat/app/SplashActivity;)V
    .locals 6
    .param p0, "splashActivity"    # Lse/mecenat/app/SplashActivity;

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0}, Lse/mecenat/app/CloudMessaging;->checkPlayServices(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 40
    .local v1, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-virtual {p0}, Lse/mecenat/app/SplashActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-static {v3}, Lse/mecenat/app/CloudMessaging;->getRegistrationId(Lse/mecenat/app/MecenatApplication;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "regId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "493769397717"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lse/mecenat/app/SplashActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lse/mecenat/app/CloudMessaging;->setRegistrationId(Lse/mecenat/app/MecenatApplication;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lse/mecenat/app/api/ApiService;->sendDeviceInfo(Landroid/content/Context;)V

    .line 47
    const-class v3, Lse/mecenat/app/CloudMessaging;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "New GCM t regId:"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lse/mecenat/app/SplashActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lse/mecenat/app/MecenatApplication;->updateGCMRegistrationId(Ljava/lang/String;)V

    .line 62
    .end local v1    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v2    # "regId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 48
    .restart local v1    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v2    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/io/IOException;
    const-class v3, Lse/mecenat/app/CloudMessaging;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error:"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v2    # "regId":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 52
    .restart local v1    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v2    # "regId":Ljava/lang/String;
    :cond_1
    const-class v3, Lse/mecenat/app/CloudMessaging;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GCM already set regId:"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private static checkPlayServices(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    .local v1, "uiHandler":Landroid/os/Handler;
    new-instance v2, Lse/mecenat/app/CloudMessaging$1;

    invoke-direct {v2, v0, p0}, Lse/mecenat/app/CloudMessaging$1;-><init>(ILandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .end local v1    # "uiHandler":Landroid/os/Handler;
    :goto_0
    const/4 v2, 0x0

    .line 80
    :goto_1
    return v2

    .line 76
    :cond_0
    const-class v2, Lse/mecenat/app/CloudMessaging;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This device is not supported."

    invoke-static {v2, v3}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 108
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 109
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getRegistrationId(Lse/mecenat/app/MecenatApplication;)Ljava/lang/String;
    .locals 6
    .param p0, "app"    # Lse/mecenat/app/MecenatApplication;

    .prologue
    .line 85
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-device-token"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lse/mecenat/app/SettingsInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "regId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    .end local v1    # "regId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 90
    .restart local v1    # "regId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v4, "app-device-token-registration-version"

    const/high16 v5, -0x80000000

    invoke-interface {v3, v4, v5}, Lse/mecenat/app/SettingsInterface;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, "registeredAppVersion":I
    invoke-static {p0}, Lse/mecenat/app/CloudMessaging;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 93
    .local v0, "currentVersion":I
    if-eq v2, v0, :cond_0

    .line 94
    const-string v1, ""

    goto :goto_0
.end method

.method private static setRegistrationId(Lse/mecenat/app/MecenatApplication;Ljava/lang/String;)V
    .locals 3
    .param p0, "app"    # Lse/mecenat/app/MecenatApplication;
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-device-token"

    invoke-interface {v1, v2, p1}, Lse/mecenat/app/SettingsInterface;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Lse/mecenat/app/CloudMessaging;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 102
    .local v0, "currentAppVersion":I
    iget-object v1, p0, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-device-token-registration-version"

    invoke-interface {v1, v2, v0}, Lse/mecenat/app/SettingsInterface;->setInt(Ljava/lang/String;I)V

    .line 103
    return-void
.end method
