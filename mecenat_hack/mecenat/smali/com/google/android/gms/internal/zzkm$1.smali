.class Lcom/google/android/gms/internal/zzkm$1;
.super Lcom/google/android/gms/internal/zzkp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkm;->zza(Lcom/google/android/gms/internal/zzkn;Lcom/google/android/gms/internal/zzkp;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzYe:Lcom/google/android/gms/internal/zzkp;

.field final synthetic zzYf:Lcom/google/android/gms/internal/zzkm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkm;Lcom/google/android/gms/internal/zzkp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkm$1;->zzYf:Lcom/google/android/gms/internal/zzkm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkm$1;->zzYe:Lcom/google/android/gms/internal/zzkp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkp$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzaZ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzkm;->zzmQ()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$1;->zzYe:Lcom/google/android/gms/internal/zzkp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$1;->zzYe:Lcom/google/android/gms/internal/zzkp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzkp;->zzaZ(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$1;->zzYf:Lcom/google/android/gms/internal/zzkm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkm;->zzb(Lcom/google/android/gms/internal/zzkm;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$1;->zzYf:Lcom/google/android/gms/internal/zzkm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkm;->zzb(Lcom/google/android/gms/internal/zzkm;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
