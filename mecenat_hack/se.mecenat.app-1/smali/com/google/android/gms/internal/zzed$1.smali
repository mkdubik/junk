.class Lcom/google/android/gms/internal/zzed$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzed;->zza(JJ)Lcom/google/android/gms/internal/zzee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyN:Lcom/google/android/gms/internal/zzec;

.field final synthetic zzyO:Lcom/google/android/gms/internal/zzed;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzed$1;->zzyN:Lcom/google/android/gms/internal/zzec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzed;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzed;->zzb(Lcom/google/android/gms/internal/zzed;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzed;->zzc(Lcom/google/android/gms/internal/zzed;)Lcom/google/android/gms/internal/zzei;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzei;)Lcom/google/android/gms/internal/zzei;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzed;->zzd(Lcom/google/android/gms/internal/zzed;)Lcom/google/android/gms/internal/zzei;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzed;->zzq(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed$1;->zzyN:Lcom/google/android/gms/internal/zzec;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzec;->zza(Lcom/google/android/gms/internal/zzee$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzed$1;->zzyO:Lcom/google/android/gms/internal/zzed;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzed$1;->zzyN:Lcom/google/android/gms/internal/zzec;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzec;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
