.class public Lcom/google/android/gms/ads/internal/formats/zzg;
.super Lcom/google/android/gms/ads/internal/formats/zzh;


# instance fields
.field private zzpc:Ljava/lang/Object;

.field private zzvZ:Lcom/google/android/gms/internal/zzek;

.field private zzwa:Lcom/google/android/gms/internal/zzel;

.field private final zzwb:Lcom/google/android/gms/ads/internal/zzn;

.field private zzwc:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private zzwd:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzan;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwd:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwb:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzek;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    return-void
.end method


# virtual methods
.method public recordImpression()V
    .locals 3

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwc:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwc:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->recordImpression()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwb:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->recordImpression()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->recordImpression()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Failed to call recordImpression"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzel;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzel;->recordImpression()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzb(Landroid/view/View;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwc:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwc:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzb(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwb:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->onAdClicked()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzek;->zzc(Lcom/google/android/gms/dynamic/zzd;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzel;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzek;->zzc(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Failed to call performClick"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwc:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdx()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwd:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdy()Lcom/google/android/gms/internal/zzip;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzh(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzvZ:Lcom/google/android/gms/internal/zzek;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzek;->zzd(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwd:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwa:Lcom/google/android/gms/internal/zzel;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzel;->zzd(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "Failed to call prepareAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
