.class public Lse/mecenat/app/location/LocationChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationChangedReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lse/mecenat/app/location/LocationChangedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lse/mecenat/app/location/LocationChangedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    return-void
.end method

.method private processLocation(Landroid/content/Context;Landroid/location/Location;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lse/mecenat/app/location/LocationChangedReceiver;->processLocation(Landroid/content/Context;Landroid/location/Location;ZZ)V

    .line 84
    return-void
.end method

.method private processLocation(Landroid/content/Context;Landroid/location/Location;ZZ)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "batchResponses"    # Z
    .param p4, "forceSend"    # Z

    .prologue
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lse/mecenat/app/MecenatApplication;

    .line 96
    .local v2, "app":Lse/mecenat/app/MecenatApplication;
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-lat"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lse/mecenat/app/SettingsInterface;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 97
    .local v5, "lastLat":F
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-lng"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lse/mecenat/app/SettingsInterface;->getFloat(Ljava/lang/String;F)F

    move-result v6

    .line 98
    .local v6, "lastLong":F
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-acc"

    const v17, 0x7fffffff

    invoke-interface/range {v15 .. v17}, Lse/mecenat/app/SettingsInterface;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 102
    .local v4, "lastAccuracy":I
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "thisProvider":Ljava/lang/String;
    const/4 v14, 0x0

    .line 106
    .local v14, "usePreviousReading":Z
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    int-to-float v15, v15

    const v16, 0x49742400    # 1000000.0f

    div-float v8, v15, v16

    .line 107
    .local v8, "thisLat":F
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    int-to-float v15, v15

    const v16, 0x49742400    # 1000000.0f

    div-float v9, v15, v16

    .line 108
    .local v9, "thisLong":F
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    float-to-int v7, v15

    .line 109
    .local v7, "thisAccuracy":I
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    .line 110
    .local v12, "thisTimeLong":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-nez v15, :cond_0

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 113
    :cond_0
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 115
    .local v11, "thisTime":Ljava/util/Date;
    const/high16 v15, -0x21000000

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_1

    .line 118
    float-to-double v0, v8

    move-wide/from16 v16, v0

    .line 119
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    float-to-double v0, v5

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    float-to-double v0, v8

    move-wide/from16 v18, v0

    .line 120
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    float-to-double v0, v9

    move-wide/from16 v20, v0

    .line 121
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    .line 119
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->acos(D)D

    move-result-wide v16

    const-wide v18, 0x40b8e30000000000L    # 6371.0

    mul-double v16, v16, v18

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 122
    .local v3, "distanceBetweenInMetres":I
    sget-object v15, Lse/mecenat/app/location/LocationChangedReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ": Distance from last reading: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "m"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v15

    if-eqz v15, :cond_1

    if-le v7, v4, :cond_1

    .line 127
    if-ge v3, v7, :cond_1

    .line 128
    const/4 v14, 0x1

    .line 133
    .end local v3    # "distanceBetweenInMetres":I
    :cond_1
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-dt"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v11}, Lse/mecenat/app/SettingsInterface;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 135
    if-nez v14, :cond_2

    .line 136
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-lat"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v8}, Lse/mecenat/app/SettingsInterface;->setFloat(Ljava/lang/String;F)V

    .line 137
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-lng"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v9}, Lse/mecenat/app/SettingsInterface;->setFloat(Ljava/lang/String;F)V

    .line 138
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-acc"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v7}, Lse/mecenat/app/SettingsInterface;->setInt(Ljava/lang/String;I)V

    .line 139
    iget-object v15, v2, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v16, "app-last-location-provider"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v10}, Lse/mecenat/app/SettingsInterface;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v15, Lse/mecenat/app/location/LocationChangedReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ": Storing location update, lat="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " long="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " accuracy="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 143
    :cond_2
    sget-object v15, Lse/mecenat/app/location/LocationChangedReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ": Storing location update, less accurate so reusing prior location - time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v0, "location"

    .line 69
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-direct {p0, p1, v1}, Lse/mecenat/app/location/LocationChangedReceiver;->processLocation(Landroid/content/Context;Landroid/location/Location;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v1, Lse/mecenat/app/location/LocationChangedReceiver;->TAG:Ljava/lang/String;

    const-string v2, ":onReceive: Unknown update received"

    invoke-static {v1, v2}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
