.class public Lse/mecenat/app/location/LocationService;
.super Landroid/app/IntentService;
.source "LocationService.java"


# static fields
.field public static ACTION_LOCATION_CHANGE:Ljava/lang/String;

.field public static ACTION_REQUEST_LOCATION:Ljava/lang/String;

.field public static ACTION_START_UPDATE:Ljava/lang/String;

.field public static ACTION_STOP_UPDATE:Ljava/lang/String;

.field public static DEFAULT_MINDISTANCE:F

.field public static DEFAULT_MINTIME:J

.field public static EXTRAS_FORCED:Ljava/lang/String;

.field public static LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "se.mecenat.app.location.requestlocation"

    sput-object v0, Lse/mecenat/app/location/LocationService;->ACTION_REQUEST_LOCATION:Ljava/lang/String;

    .line 31
    const-string v0, "se.mecenat.app.location.startupdate"

    sput-object v0, Lse/mecenat/app/location/LocationService;->ACTION_START_UPDATE:Ljava/lang/String;

    .line 32
    const-string v0, "se.mecenat.app.location.stopupdate"

    sput-object v0, Lse/mecenat/app/location/LocationService;->ACTION_STOP_UPDATE:Ljava/lang/String;

    .line 33
    const-string v0, "se.mecenat.app.location.locationchange"

    sput-object v0, Lse/mecenat/app/location/LocationService;->ACTION_LOCATION_CHANGE:Ljava/lang/String;

    .line 35
    const-string v0, "se.mecenat.app.location.forced"

    sput-object v0, Lse/mecenat/app/location/LocationService;->EXTRAS_FORCED:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lse/mecenat/app/location/LocationService;->DEFAULT_MINTIME:J

    .line 39
    const v0, 0x459c4000    # 5000.0f

    sput v0, Lse/mecenat/app/location/LocationService;->DEFAULT_MINDISTANCE:F

    .line 41
    const-class v0, Lse/mecenat/app/location/LocationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "LocationService"

    invoke-direct {p0, v0}, Lse/mecenat/app/location/LocationService;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p0}, Lse/mecenat/app/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lse/mecenat/app/MecenatApplication;

    .line 63
    .local v6, "app":Lse/mecenat/app/MecenatApplication;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lse/mecenat/app/location/LocationService;->ACTION_REQUEST_LOCATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lse/mecenat/app/location/LocationService;->EXTRAS_FORCED:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 66
    .local v8, "forced":Ljava/lang/Boolean;
    sget-object v1, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Triggered sending of user info"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 68
    .local v7, "c":Ljava/util/Calendar;
    iget-object v1, v6, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-last-location-sent-time"

    new-instance v3, Ljava/util/Date;

    const-wide/16 v12, 0x0

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v2, v3}, Lse/mecenat/app/SettingsInterface;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    .line 69
    .local v9, "lastSent":Ljava/util/Date;
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    const/16 v1, 0xa

    const/16 v2, 0xc

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 71
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 72
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 73
    .local v10, "now":Ljava/util/Date;
    invoke-virtual {v9, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    :cond_0
    sget-object v1, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Sending userinfo since its been a long time since last time"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lse/mecenat/app/api/ApiService;->sendUserInfo(Landroid/content/Context;)V

    .line 76
    iget-object v1, v6, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-last-location-sent-time"

    invoke-interface {v1, v2, v10}, Lse/mecenat/app/SettingsInterface;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 102
    .end local v7    # "c":Ljava/util/Calendar;
    .end local v8    # "forced":Ljava/lang/Boolean;
    .end local v9    # "lastSent":Ljava/util/Date;
    .end local v10    # "now":Ljava/util/Date;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lse/mecenat/app/location/LocationService;->ACTION_LOCATION_CHANGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 104
    .restart local v7    # "c":Ljava/util/Calendar;
    iget-object v1, v6, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-last-location-sent-time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-interface {v1, v2, v3}, Lse/mecenat/app/SettingsInterface;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    .line 105
    .restart local v9    # "lastSent":Ljava/util/Date;
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 106
    const/16 v1, 0xc

    iget-object v2, v6, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v3, "app-location-interval-max"

    const/16 v4, 0x2d0

    invoke-interface {v2, v3, v4}, Lse/mecenat/app/SettingsInterface;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 107
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 108
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 109
    .restart local v10    # "now":Ljava/util/Date;
    invoke-virtual {v9, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    sget-object v1, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Sending userinfo since its been a long time since last time"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Lse/mecenat/app/api/ApiService;->sendUserInfo(Landroid/content/Context;)V

    .line 112
    iget-object v1, v6, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v2, "app-last-location-sent-time"

    invoke-interface {v1, v2, v10}, Lse/mecenat/app/SettingsInterface;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 121
    .end local v7    # "c":Ljava/util/Calendar;
    .end local v9    # "lastSent":Ljava/util/Date;
    .end local v10    # "now":Ljava/util/Date;
    :cond_2
    :goto_1
    return-void

    .line 78
    .restart local v7    # "c":Ljava/util/Calendar;
    .restart local v8    # "forced":Ljava/lang/Boolean;
    .restart local v9    # "lastSent":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :cond_3
    sget-object v1, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Not Sending userinfo since its to frequent"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v7    # "c":Ljava/util/Calendar;
    .end local v8    # "forced":Ljava/lang/Boolean;
    .end local v9    # "lastSent":Ljava/util/Date;
    .end local v10    # "now":Ljava/util/Date;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lse/mecenat/app/location/LocationService;->ACTION_START_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    sget-object v1, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Start listening to passive location updates"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lse/mecenat/app/location/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 87
    .local v0, "locationManager":Landroid/location/LocationManager;
    new-instance v11, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/location/LocationChangedReceiver;

    invoke-direct {v11, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v11, "passiveIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 90
    .local v5, "passiveLocationChangedPendingIntent":Landroid/app/PendingIntent;
    const-string v1, "passive"

    sget-wide v2, Lse/mecenat/app/location/LocationService;->DEFAULT_MINTIME:J

    sget v4, Lse/mecenat/app/location/LocationService;->DEFAULT_MINDISTANCE:F

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 96
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v5    # "passiveLocationChangedPendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "passiveIntent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lse/mecenat/app/location/LocationService;->ACTION_STOP_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Stop listening to passive location updates"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .restart local v7    # "c":Ljava/util/Calendar;
    .restart local v9    # "lastSent":Ljava/util/Date;
    .restart local v10    # "now":Ljava/util/Date;
    :cond_6
    sget-object v1, Lse/mecenat/app/location/LocationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Not Sending userinfo since its to frequent"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
