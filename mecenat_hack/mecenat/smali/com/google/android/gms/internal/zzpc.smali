.class public final Lcom/google/android/gms/internal/zzpc;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpc$zzc;,
        Lcom/google/android/gms/internal/zzpc$zza;,
        Lcom/google/android/gms/internal/zzpc$zzd;,
        Lcom/google/android/gms/internal/zzpc$zzb;,
        Lcom/google/android/gms/internal/zzpc$zzg;,
        Lcom/google/android/gms/internal/zzpc$zze;,
        Lcom/google/android/gms/internal/zzpc$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzpf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzasQ:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x36

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzE(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Failed to notify client disconnect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected synthetic zzV(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpc;->zzde(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpf;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;JLcom/google/android/gms/common/api/zzl;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpf;

    new-instance v2, Lcom/google/android/gms/internal/zzpc$zzg;

    invoke-direct {v2, p1, p5}, Lcom/google/android/gms/internal/zzpc$zzg;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/common/api/zzl;)V

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/internal/zzpe;Ljava/lang/String;JJ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/common/api/zzl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/AppMetadata;",
            "J",
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    new-instance v1, Lcom/google/android/gms/internal/zzpc$zze;

    invoke-direct {v1, p1, p6}, Lcom/google/android/gms/internal/zzpc$zze;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/common/api/zzl;)V

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/internal/zzpe;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JJ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/common/api/zzl;Lcom/google/android/gms/common/api/zzl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;",
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpf;

    new-instance v2, Lcom/google/android/gms/internal/zzpc$zzd;

    invoke-direct {v2, p1, p5, p6}, Lcom/google/android/gms/internal/zzpc$zzd;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/common/api/zzl;Lcom/google/android/gms/common/api/zzl;)V

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/internal/zzpe;Ljava/lang/String;Ljava/lang/String;[BJ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;[BLcom/google/android/gms/common/api/zzl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    new-instance v1, Lcom/google/android/gms/internal/zzpc$zza;

    invoke-direct {v1, p1, p4}, Lcom/google/android/gms/internal/zzpc$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/common/api/zzl;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/internal/zzpe;Ljava/lang/String;[BJ)V

    return-void
.end method

.method public zza([Ljava/lang/String;[B)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zza([Ljava/lang/String;[BJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t send reliable message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzb([Ljava/lang/String;[B)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzb([Ljava/lang/String;[BJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t send unreliable message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzde(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpf;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpf$zza;->zzdg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpf;

    move-result-object v0

    return-object v0
.end method

.method public zzec(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzf(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t stop discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzed(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzg(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t disconnect from endpoint"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzfA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.connection.service.START"

    return-object v0
.end method

.method protected zzfB()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    return-object v0
.end method

.method public zzp(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    new-instance v1, Lcom/google/android/gms/internal/zzpc$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzpc$zzc;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/internal/zzpe;Ljava/lang/String;J)V

    return-void
.end method

.method public zzyk()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzQ(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzyl()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpf;->zzyl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzym()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzN(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzyn()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpc;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzasQ:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzP(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t stop all endpoints"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
