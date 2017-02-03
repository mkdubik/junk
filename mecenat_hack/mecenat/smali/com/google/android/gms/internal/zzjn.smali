.class public final Lcom/google/android/gms/internal/zzjn;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzjn$zzb;,
        Lcom/google/android/gms/internal/zzjn$zzd;,
        Lcom/google/android/gms/internal/zzjn$zzf;,
        Lcom/google/android/gms/internal/zzjn$zzg;,
        Lcom/google/android/gms/internal/zzjn$zza;,
        Lcom/google/android/gms/internal/zzjn$zzc;,
        Lcom/google/android/gms/internal/zzjn$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzjp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzV(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjn;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    return-object v0
.end method

.method protected zza(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/appstate"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "App State APIs requires %s to function."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://www.googleapis.com/auth/appstate"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    new-instance v1, Lcom/google/android/gms/internal/zzjn$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjn$zzc;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/internal/zzjo;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    new-instance v1, Lcom/google/android/gms/internal/zzjn$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjn$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzjp;->zzb(Lcom/google/android/gms/internal/zzjo;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;ILjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    new-instance v1, Lcom/google/android/gms/internal/zzjn$zze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjn$zze;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/internal/zzjo;ILjava/lang/String;[B)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/internal/zzjo;I[B)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzjn$zze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzjn$zze;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    move-object v1, v0

    goto :goto_0
.end method

.method protected zzal(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzjp;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjp$zza;->zzan(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    new-instance v1, Lcom/google/android/gms/internal/zzjn$zzg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjn$zzg;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjp;->zzb(Lcom/google/android/gms/internal/zzjo;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc$zzb;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    new-instance v1, Lcom/google/android/gms/internal/zzjn$zze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjn$zze;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/internal/zzjo;I)V

    return-void
.end method

.method protected zzfA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.service.START"

    return-object v0
.end method

.method protected zzfB()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    return-object v0
.end method

.method public zzlm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzln()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzln()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public zzlo()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzlo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method
