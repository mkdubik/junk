.class public Lse/mecenat/app/common/AndroidHelper;
.super Ljava/lang/Object;
.source "AndroidHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion(Lse/mecenat/app/MecenatApplication;)Ljava/lang/String;
    .locals 6
    .param p0, "mecenatApplication"    # Lse/mecenat/app/MecenatApplication;

    .prologue
    .line 29
    const-string v0, ""

    .line 31
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 32
    invoke-virtual {p0}, Lse/mecenat/app/MecenatApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 31
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 33
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNetworkAvailable(Lse/mecenat/app/MecenatApplication;)Z
    .locals 3
    .param p0, "mecenatApplication"    # Lse/mecenat/app/MecenatApplication;

    .prologue
    .line 45
    const-string v2, "connectivity"

    .line 46
    invoke-virtual {p0, v2}, Lse/mecenat/app/MecenatApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 48
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v2, 0x1

    .line 51
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
