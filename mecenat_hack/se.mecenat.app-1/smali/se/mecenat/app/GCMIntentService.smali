.class public Lse/mecenat/app/GCMIntentService;
.super Landroid/app/IntentService;
.source "GCMIntentService.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "GCMIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    const-class v0, Lse/mecenat/app/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/mecenat/app/GCMIntentService;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getAppState()Lse/mecenat/app/MecenatApplication;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lse/mecenat/app/GCMIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatApplication;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 125
    .local v1, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "messageType":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const-string v3, "send_error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lse/mecenat/app/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    invoke-static {p1}, Lse/mecenat/app/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 144
    return-void

    .line 135
    :cond_1
    const-string v3, "deleted_messages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lse/mecenat/app/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted messages on server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    const-string v3, "gcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lse/mecenat/app/GCMIntentService;->TAG:Ljava/lang/String;

    const-string v4, "Gcm received: "

    invoke-static {v3, v4}, Lse/mecenat/app/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p0, p1}, Lse/mecenat/app/GCMIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-string v18, "GCM"

    const-string v19, "onMessage"

    invoke-static/range {v18 .. v19}, Lse/mecenat/app/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "openurl"

    .line 41
    .local v2, "action":Ljava/lang/String;
    const-string v16, "Mecenat"

    .line 42
    .local v16, "title":Ljava/lang/String;
    const-string v14, ""

    .line 43
    .local v14, "text":Ljava/lang/String;
    const-string v15, ""

    .line 44
    .local v15, "ticker":Ljava/lang/String;
    const-string v4, ""

    .line 45
    .local v4, "info":Ljava/lang/String;
    const/16 v17, 0x0

    .line 46
    .local v17, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 47
    .local v7, "noteId":I
    const-string v18, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 48
    const-string v18, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    :cond_0
    const-string v18, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 51
    const-string v18, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 53
    :cond_1
    const-string v18, "text"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 54
    const-string v18, "text"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 56
    :cond_2
    const-string v18, "ticker"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 57
    const-string v18, "ticker"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 59
    :cond_3
    const-string v18, "info"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 60
    const-string v18, "info"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    :cond_4
    const-string v18, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 63
    const-string v18, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 65
    :cond_5
    const-string v18, "noteid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 66
    const-string v18, "noteid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "noteIdStr":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 68
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 71
    .end local v8    # "noteIdStr":Ljava/lang/String;
    :cond_6
    const-string v18, "openurl"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    if-eqz v17, :cond_8

    .line 72
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    const-string v19, "appcmd"

    const-string v20, "viapush"

    invoke-virtual/range {v18 .. v20}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 74
    new-instance v18, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f02007d

    .line 75
    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v18

    .line 76
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v18

    new-instance v19, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 80
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 82
    .local v5, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v11, Landroid/content/Intent;

    const-class v18, Lse/mecenat/app/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v11, "resultIntent":Landroid/content/Intent;
    const-string v18, "ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v18, "TITLE"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v18, "TEXT"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v18, "URL"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v18, "NOTEID"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v13

    .line 90
    .local v13, "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    const-class v18, Lse/mecenat/app/MainActivity;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 91
    invoke-virtual {v13, v11}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 93
    const/16 v18, 0x0

    const/high16 v19, 0x8000000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v12

    .line 95
    .local v12, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v5, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 97
    const-string v18, "notification"

    .line 98
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 100
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 102
    .local v6, "note":Landroid/app/Notification;
    iget v0, v6, Landroid/app/Notification;->defaults:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Landroid/app/Notification;->defaults:I

    .line 104
    iget v0, v6, Landroid/app/Notification;->defaults:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v6, Landroid/app/Notification;->defaults:I

    .line 105
    iget v0, v6, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v6, Landroid/app/Notification;->flags:I

    .line 107
    invoke-virtual {v9, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    .end local v5    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "note":Landroid/app/Notification;
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    .end local v11    # "resultIntent":Landroid/content/Intent;
    .end local v12    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    :cond_7
    :goto_0
    return-void

    .line 108
    :cond_8
    const-string v18, "refreshCache"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 109
    invoke-virtual/range {p0 .. p0}, Lse/mecenat/app/GCMIntentService;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lse/mecenat/app/MecenatApplication;

    .line 110
    .local v3, "app":Lse/mecenat/app/MecenatApplication;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lse/mecenat/app/MecenatApplication;->refreshCache(Z)V

    goto :goto_0

    .line 111
    .end local v3    # "app":Lse/mecenat/app/MecenatApplication;
    :cond_9
    const-string v18, "sendUserInfo"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 112
    new-instance v10, Landroid/content/Intent;

    const-class v18, Lse/mecenat/app/location/LocationService;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v10, "requestLocationIntent":Landroid/content/Intent;
    sget-object v18, Lse/mecenat/app/location/LocationService;->ACTION_REQUEST_LOCATION:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    sget-object v18, Lse/mecenat/app/location/LocationService;->EXTRAS_FORCED:Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
