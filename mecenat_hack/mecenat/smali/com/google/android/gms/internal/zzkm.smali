.class public Lcom/google/android/gms/internal/zzkm;
.super Lcom/google/android/gms/common/internal/zzj;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzko;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final zzTy:Lcom/google/android/gms/cast/internal/zzl;


# instance fields
.field private zzTj:Lcom/google/android/gms/cast/CastDevice;

.field private zzYd:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "CastRemoteDisplayClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzkm;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x53

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkm;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "instance created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/zzkm;->zzYd:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzkm;->zzTj:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkm;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm;->zzYd:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    return-object v0
.end method

.method static synthetic zzmQ()Lcom/google/android/gms/cast/internal/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzkm;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzkm;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzkm;->zzYd:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzkm;->zzTj:Lcom/google/android/gms/cast/CastDevice;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkm;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzko;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzko;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    throw v0
.end method

.method public synthetic zzV(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkm;->zzaC(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzkn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzkm;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkm;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzko;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzkn;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzkn;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkm;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzko;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzkn;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzkn;Lcom/google/android/gms/internal/zzkp;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzkm;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/zzkm$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzkm$1;-><init>(Lcom/google/android/gms/internal/zzkm;Lcom/google/android/gms/internal/zzkp;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkm;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzko;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkm;->zzTj:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2, p3}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzkn;Lcom/google/android/gms/internal/zzkp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzaC(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzko;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzko$zza;->zzaE(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method protected zzfA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.service.START"

    return-object v0
.end method

.method protected zzfB()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    return-object v0
.end method
