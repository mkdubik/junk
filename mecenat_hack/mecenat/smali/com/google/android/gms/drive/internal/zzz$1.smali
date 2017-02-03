.class Lcom/google/android/gms/drive/internal/zzz$1;
.super Lcom/google/android/gms/drive/internal/zzz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzz;->getFileUploadPreferences(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiX:Lcom/google/android/gms/drive/internal/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzz$1;->zzaiX:Lcom/google/android/gms/drive/internal/zzz;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzz$zzc;-><init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzz$1;->zza(Lcom/google/android/gms/drive/internal/zzt;)V

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

    new-instance v1, Lcom/google/android/gms/drive/internal/zzz$zza;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzz$1;->zzaiX:Lcom/google/android/gms/drive/internal/zzz;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/drive/internal/zzz$zza;-><init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/drive/internal/zzz$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/zzal;->zzd(Lcom/google/android/gms/drive/internal/zzam;)V

    return-void
.end method
