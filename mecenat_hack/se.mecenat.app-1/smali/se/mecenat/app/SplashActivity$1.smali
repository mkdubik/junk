.class Lse/mecenat/app/SplashActivity$1;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/SplashActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/SplashActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 73
    const/4 v9, 0x0

    .line 75
    .local v9, "wait":I
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 76
    :goto_0
    const/16 v10, 0x12c

    if-ge v9, v10, :cond_0

    .line 77
    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Lse/mecenat/app/SplashActivity$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    add-int/lit8 v9, v9, 0x64

    goto :goto_0

    .line 83
    :cond_0
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    # getter for: Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;
    invoke-static {v10}, Lse/mecenat/app/SplashActivity;->access$000(Lse/mecenat/app/SplashActivity;)Lse/mecenat/app/SplashActivity;

    move-result-object v10

    invoke-static {v10}, Lse/mecenat/app/CloudMessaging;->checkIsRegistered(Lse/mecenat/app/SplashActivity;)V

    .line 84
    new-instance v0, Lse/mecenat/app/location/AlarmReceiver;

    invoke-direct {v0}, Lse/mecenat/app/location/AlarmReceiver;-><init>()V

    .line 85
    .local v0, "alarm":Lse/mecenat/app/location/AlarmReceiver;
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    # getter for: Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;
    invoke-static {v10}, Lse/mecenat/app/SplashActivity;->access$000(Lse/mecenat/app/SplashActivity;)Lse/mecenat/app/SplashActivity;

    move-result-object v10

    invoke-virtual {v0, v10}, Lse/mecenat/app/location/AlarmReceiver;->SetAlarm(Landroid/content/Context;)V

    .line 88
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    invoke-virtual {v10}, Lse/mecenat/app/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lse/mecenat/app/MecenatApplication;

    .line 89
    .local v1, "app":Lse/mecenat/app/MecenatApplication;
    const-string v10, "app-selected-menu-item"

    invoke-virtual {v1, v10}, Lse/mecenat/app/MecenatApplication;->removeCookie(Ljava/lang/String;)V

    .line 90
    const-string v10, "app-menu-scroll-pos"

    invoke-virtual {v1, v10}, Lse/mecenat/app/MecenatApplication;->removeCookie(Ljava/lang/String;)V

    .line 94
    :try_start_1
    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "currDomain":Ljava/lang/String;
    const-string v10, "auto"

    invoke-static {v3, v10}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "autoCookieCom":Ljava/lang/String;
    const-string v10, "mecenat.com"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 100
    :cond_1
    const-string v10, "https://www.mecenat.se"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "oldAutoCookieSe":Ljava/lang/String;
    const-string v10, "https://www.mecenat.dk"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "oldAutoCookieDk":Ljava/lang/String;
    const-string v10, "https://www.mecenat.fi"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "oldAutoCookieFi":Ljava/lang/String;
    const-string v10, "https://www.mecenat.no"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "oldAutoCookieNo":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 107
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v8}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "se"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    :goto_1
    const-string v10, "https://mecenat.com"

    const-string v11, "x-app"

    const-string v12, "1"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    new-instance v11, Landroid/content/Intent;

    iget-object v12, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    const-class v13, Lse/mecenat/app/MainActivity;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v11}, Lse/mecenat/app/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    invoke-virtual {v10}, Lse/mecenat/app/SplashActivity;->finish()V

    .line 135
    :goto_3
    return-void

    .line 109
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    .restart local v3    # "currDomain":Ljava/lang/String;
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 110
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v5}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "dk"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 122
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    .restart local v3    # "currDomain":Ljava/lang/String;
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 113
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v6}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "fi"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 116
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v7}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "no"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 80
    .end local v0    # "alarm":Lse/mecenat/app/location/AlarmReceiver;
    .end local v1    # "app":Lse/mecenat/app/MecenatApplication;
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 83
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    # getter for: Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;
    invoke-static {v10}, Lse/mecenat/app/SplashActivity;->access$000(Lse/mecenat/app/SplashActivity;)Lse/mecenat/app/SplashActivity;

    move-result-object v10

    invoke-static {v10}, Lse/mecenat/app/CloudMessaging;->checkIsRegistered(Lse/mecenat/app/SplashActivity;)V

    .line 84
    new-instance v0, Lse/mecenat/app/location/AlarmReceiver;

    invoke-direct {v0}, Lse/mecenat/app/location/AlarmReceiver;-><init>()V

    .line 85
    .restart local v0    # "alarm":Lse/mecenat/app/location/AlarmReceiver;
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    # getter for: Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;
    invoke-static {v10}, Lse/mecenat/app/SplashActivity;->access$000(Lse/mecenat/app/SplashActivity;)Lse/mecenat/app/SplashActivity;

    move-result-object v10

    invoke-virtual {v0, v10}, Lse/mecenat/app/location/AlarmReceiver;->SetAlarm(Landroid/content/Context;)V

    .line 88
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    invoke-virtual {v10}, Lse/mecenat/app/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lse/mecenat/app/MecenatApplication;

    .line 89
    .restart local v1    # "app":Lse/mecenat/app/MecenatApplication;
    const-string v10, "app-selected-menu-item"

    invoke-virtual {v1, v10}, Lse/mecenat/app/MecenatApplication;->removeCookie(Ljava/lang/String;)V

    .line 90
    const-string v10, "app-menu-scroll-pos"

    invoke-virtual {v1, v10}, Lse/mecenat/app/MecenatApplication;->removeCookie(Ljava/lang/String;)V

    .line 94
    :try_start_4
    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "currDomain":Ljava/lang/String;
    const-string v10, "auto"

    invoke-static {v3, v10}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    const-string v10, "mecenat.com"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    .line 100
    :cond_7
    const-string v10, "https://www.mecenat.se"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    const-string v10, "https://www.mecenat.dk"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    const-string v10, "https://www.mecenat.fi"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    const-string v10, "https://www.mecenat.no"

    const-string v11, "auto"

    invoke-static {v10, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 107
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v8}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "se"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_8
    :goto_4
    const-string v10, "https://mecenat.com"

    const-string v11, "x-app"

    const-string v12, "1"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 128
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_9
    :goto_5
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    new-instance v11, Landroid/content/Intent;

    iget-object v12, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    const-class v13, Lse/mecenat/app/MainActivity;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v11}, Lse/mecenat/app/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    iget-object v10, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    invoke-virtual {v10}, Lse/mecenat/app/SplashActivity;->finish()V

    goto/16 :goto_3

    .line 109
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    .restart local v3    # "currDomain":Ljava/lang/String;
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_a
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b

    .line 110
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v5}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "dk"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 122
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 124
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    .restart local v3    # "currDomain":Ljava/lang/String;
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_b
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c

    .line 113
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v6}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "fi"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 115
    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 116
    const-string v10, "https://mecenat.com"

    const-string v11, "old-auto"

    invoke-static {v10, v11, v7}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v10, "https://mecenat.com"

    const-string v11, "country"

    const-string v12, "no"

    invoke-static {v10, v11, v12}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 83
    .end local v0    # "alarm":Lse/mecenat/app/location/AlarmReceiver;
    .end local v1    # "app":Lse/mecenat/app/MecenatApplication;
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    # getter for: Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;
    invoke-static {v11}, Lse/mecenat/app/SplashActivity;->access$000(Lse/mecenat/app/SplashActivity;)Lse/mecenat/app/SplashActivity;

    move-result-object v11

    invoke-static {v11}, Lse/mecenat/app/CloudMessaging;->checkIsRegistered(Lse/mecenat/app/SplashActivity;)V

    .line 84
    new-instance v0, Lse/mecenat/app/location/AlarmReceiver;

    invoke-direct {v0}, Lse/mecenat/app/location/AlarmReceiver;-><init>()V

    .line 85
    .restart local v0    # "alarm":Lse/mecenat/app/location/AlarmReceiver;
    iget-object v11, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    # getter for: Lse/mecenat/app/SplashActivity;->splashActivity:Lse/mecenat/app/SplashActivity;
    invoke-static {v11}, Lse/mecenat/app/SplashActivity;->access$000(Lse/mecenat/app/SplashActivity;)Lse/mecenat/app/SplashActivity;

    move-result-object v11

    invoke-virtual {v0, v11}, Lse/mecenat/app/location/AlarmReceiver;->SetAlarm(Landroid/content/Context;)V

    .line 88
    iget-object v11, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    invoke-virtual {v11}, Lse/mecenat/app/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lse/mecenat/app/MecenatApplication;

    .line 89
    .restart local v1    # "app":Lse/mecenat/app/MecenatApplication;
    const-string v11, "app-selected-menu-item"

    invoke-virtual {v1, v11}, Lse/mecenat/app/MecenatApplication;->removeCookie(Ljava/lang/String;)V

    .line 90
    const-string v11, "app-menu-scroll-pos"

    invoke-virtual {v1, v11}, Lse/mecenat/app/MecenatApplication;->removeCookie(Ljava/lang/String;)V

    .line 94
    :try_start_7
    invoke-virtual {v1}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "currDomain":Ljava/lang/String;
    const-string v11, "auto"

    invoke-static {v3, v11}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    const-string v11, "mecenat.com"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_f

    .line 100
    :cond_d
    const-string v11, "https://www.mecenat.se"

    const-string v12, "auto"

    invoke-static {v11, v12}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    const-string v11, "https://www.mecenat.dk"

    const-string v12, "auto"

    invoke-static {v11, v12}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    const-string v11, "https://www.mecenat.fi"

    const-string v12, "auto"

    invoke-static {v11, v12}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    const-string v11, "https://www.mecenat.no"

    const-string v12, "auto"

    invoke-static {v11, v12}, Lse/mecenat/app/common/CookieHelper;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_10

    .line 107
    const-string v11, "https://mecenat.com"

    const-string v12, "old-auto"

    invoke-static {v11, v12, v8}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v11, "https://mecenat.com"

    const-string v12, "country"

    const-string v13, "se"

    invoke-static {v11, v12, v13}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_e
    :goto_6
    const-string v11, "https://mecenat.com"

    const-string v12, "x-app"

    const-string v13, "1"

    invoke-static {v11, v12, v13}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 128
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_f
    :goto_7
    iget-object v11, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    new-instance v12, Landroid/content/Intent;

    iget-object v13, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    const-class v14, Lse/mecenat/app/MainActivity;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v11, v12}, Lse/mecenat/app/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    iget-object v11, p0, Lse/mecenat/app/SplashActivity$1;->this$0:Lse/mecenat/app/SplashActivity;

    invoke-virtual {v11}, Lse/mecenat/app/SplashActivity;->finish()V

    .line 132
    throw v10

    .line 109
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    .restart local v3    # "currDomain":Ljava/lang/String;
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_10
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_11

    .line 110
    const-string v11, "https://mecenat.com"

    const-string v12, "old-auto"

    invoke-static {v11, v12, v5}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v11, "https://mecenat.com"

    const-string v12, "country"

    const-string v13, "dk"

    invoke-static {v11, v12, v13}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 122
    .end local v2    # "autoCookieCom":Ljava/lang/String;
    .end local v3    # "currDomain":Ljava/lang/String;
    .end local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .end local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .end local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .end local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 124
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "autoCookieCom":Ljava/lang/String;
    .restart local v3    # "currDomain":Ljava/lang/String;
    .restart local v5    # "oldAutoCookieDk":Ljava/lang/String;
    .restart local v6    # "oldAutoCookieFi":Ljava/lang/String;
    .restart local v7    # "oldAutoCookieNo":Ljava/lang/String;
    .restart local v8    # "oldAutoCookieSe":Ljava/lang/String;
    :cond_11
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_12

    .line 113
    const-string v11, "https://mecenat.com"

    const-string v12, "old-auto"

    invoke-static {v11, v12, v6}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v11, "https://mecenat.com"

    const-string v12, "country"

    const-string v13, "fi"

    invoke-static {v11, v12, v13}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 115
    :cond_12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_e

    .line 116
    const-string v11, "https://mecenat.com"

    const-string v12, "old-auto"

    invoke-static {v11, v12, v7}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v11, "https://mecenat.com"

    const-string v12, "country"

    const-string v13, "no"

    invoke-static {v11, v12, v13}, Lse/mecenat/app/common/CookieHelper;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6
.end method
