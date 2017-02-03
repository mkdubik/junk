.class public Lse/mecenat/app/location/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Wakelock"
    }
.end annotation


# static fields
.field public static final ONE_TIME:Ljava/lang/String; = "onetime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public CancelAlarm(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lse/mecenat/app/location/AlarmReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 63
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 64
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 65
    return-void
.end method

.method public SetAlarm(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v4, 0x2932e00

    const/4 v1, 0x0

    .line 52
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lse/mecenat/app/location/AlarmReceiver;

    invoke-direct {v7, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "onetime"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    invoke-static {p1, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 56
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 58
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 35
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "LOC"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 37
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 39
    invoke-virtual {p0, p1}, Lse/mecenat/app/location/AlarmReceiver;->CancelAlarm(Landroid/content/Context;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lse/mecenat/app/location/LocationService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v1, "requestLocationIntent":Landroid/content/Intent;
    sget-object v3, Lse/mecenat/app/location/LocationService;->ACTION_REQUEST_LOCATION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    sget-object v3, Lse/mecenat/app/location/LocationService;->EXTRAS_FORCED:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    invoke-virtual {p0, p1}, Lse/mecenat/app/location/AlarmReceiver;->SetAlarm(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 49
    return-void
.end method

.method public setOnetimeTimer(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 68
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lse/mecenat/app/location/AlarmReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "onetime"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 72
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 73
    return-void
.end method
