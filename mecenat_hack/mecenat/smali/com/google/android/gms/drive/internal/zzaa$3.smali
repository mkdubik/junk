.class Lcom/google/android/gms/drive/internal/zzaa$3;
.super Lcom/google/android/gms/drive/internal/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzaa;->setParents(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Set;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzajb:Lcom/google/android/gms/drive/internal/zzaa;

.field final synthetic zzajc:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzaa$3;->zzajb:Lcom/google/android/gms/drive/internal/zzaa;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzaa$3;->zzajc:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzs$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/drive/internal/zzt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzaa$3;->zza(Lcom/google/android/gms/drive/internal/zzt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzt;->zzqF()Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzaa$3;->zzajb:Lcom/google/android/gms/drive/internal/zzaa;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/zzaa;->zzags:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/zzaa$3;->zzajc:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzbr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzbr;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzal;->zza(Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;Lcom/google/android/gms/drive/internal/zzam;)V

    return-void
.end method
