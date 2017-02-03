.class abstract Lcom/google/android/gms/common/api/zzi$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation


# instance fields
.field private final zzaaw:Lcom/google/android/gms/common/api/zzj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzi$zzb;->zzaaw:Lcom/google/android/gms/common/api/zzj;

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/common/api/zzi;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/zzi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/zzi;->zzb(Lcom/google/android/gms/common/api/zzi;)Lcom/google/android/gms/common/api/zzj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi$zzb;->zzaaw:Lcom/google/android/gms/common/api/zzj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/zzi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi$zzb;->zznn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/zzi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/zzi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract zznn()V
.end method
