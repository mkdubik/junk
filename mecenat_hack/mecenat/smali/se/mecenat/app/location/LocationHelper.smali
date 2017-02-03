.class public Lse/mecenat/app/location/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastKnownLocationAsDouble(Landroid/content/Context;)[D
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 42
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 43
    .local v3, "lm":Landroid/location/LocationManager;
    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v4

    .line 45
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 47
    .local v2, "l":Landroid/location/Location;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 48
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_2

    .line 54
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [D

    .line 55
    .local v0, "gps":[D
    if-eqz v2, :cond_1

    .line 56
    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 57
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v0, v8

    .line 59
    :cond_1
    return-object v0

    .line 47
    .end local v0    # "gps":[D
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getLastKnownLocationAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    invoke-static {p0}, Lse/mecenat/app/location/LocationHelper;->getLastKnownLocationAsDouble(Landroid/content/Context;)[D

    move-result-object v0

    .line 33
    .local v0, "location":[D
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%9.6f,%9.6f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-wide v4, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    aget-wide v4, v0, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
