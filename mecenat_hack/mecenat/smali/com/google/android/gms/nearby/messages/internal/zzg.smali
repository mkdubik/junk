.class Lcom/google/android/gms/nearby/messages/internal/zzg;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/internal/zzg$1;,
        Lcom/google/android/gms/nearby/messages/internal/zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/nearby/messages/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field private zzQl:Ljava/lang/String;

.field private zzaJT:Ljava/lang/String;

.field private zzaJU:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V
    .locals 7

    const/16 v3, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p5}, Lcom/google/android/gms/common/internal/zzf;->zzol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzQl:Ljava/lang/String;

    if-eqz p6, :cond_0

    iget-object v0, p6, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzaCr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJT:Ljava/lang/String;

    iget-boolean v0, p6, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzaJJ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJU:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic zzV(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzdk(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoz()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;

    invoke-direct {v1, p2, v3}, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;-><init>(Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/internal/zzg$1;)V

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzj(Lcom/google/android/gms/common/api/zzc$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzj;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJT:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzQl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoA()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            "Lcom/google/android/gms/nearby/messages/MessageFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoz()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;

    invoke-direct {v1, p2, v5}, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;-><init>(Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/internal/zzg$1;)V

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzj(Lcom/google/android/gms/common/api/zzc$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzj;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJT:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzQl:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJU:Z

    move-object v2, p3

    move-object v4, p4

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoA()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoz()V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzj(Lcom/google/android/gms/common/api/zzc$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzQl:Ljava/lang/String;

    invoke-direct {v1, p2, v0, v2, v3}, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;-><init>(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Lcom/google/android/gms/nearby/messages/Strategy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoz()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzj(Lcom/google/android/gms/common/api/zzc$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJT:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzQl:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJU:Z

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;-><init>(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoA()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/PublishRequest;)V

    return-void
.end method

.method protected zzdk(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzd$zza;->zzdj(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzfA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.messages.service.NearbyMessagesService.START"

    return-object v0
.end method

.method protected zzfB()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesService"

    return-object v0
.end method

.method zzi(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoz()V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzj(Lcom/google/android/gms/common/api/zzc$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzaJT:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;)V

    return-void
.end method
