.class Lcom/google/android/gms/internal/zzpr$4;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpr;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLO:Lcom/google/android/gms/internal/zzpr;

.field final synthetic zzaLP:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpr$4;->zzaLO:Lcom/google/android/gms/internal/zzpr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpr$4;->zzaLP:Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpr$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpr$4;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpr$4;->zzaLP:Ljava/util/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/util/Collection;)V

    return-void
.end method
