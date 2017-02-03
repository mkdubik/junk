.class public final Lcom/google/android/gms/internal/zzec;
.super Lcom/google/android/gms/internal/zzej$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field private final zzpc:Ljava/lang/Object;

.field private zzyF:Lcom/google/android/gms/internal/zzee$zza;

.field private zzyG:Lcom/google/android/gms/internal/zzeb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzej$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeb;->zzaX()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeb;->zzaY()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyF:Lcom/google/android/gms/internal/zzee$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzyF:Lcom/google/android/gms/internal/zzee$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzee$zza;->zzq(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyF:Lcom/google/android/gms/internal/zzee$zza;

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeb;->zzaZ()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLoaded()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyF:Lcom/google/android/gms/internal/zzee$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyF:Lcom/google/android/gms/internal/zzee$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzee$zza;->zzq(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyF:Lcom/google/android/gms/internal/zzee$zza;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeb;->zzbb()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeb;->zzba()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzeb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzec;->zzyG:Lcom/google/android/gms/internal/zzeb;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzee$zza;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzec;->zzyF:Lcom/google/android/gms/internal/zzee$zza;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
