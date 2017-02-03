.class Lcom/google/android/gms/drive/internal/zzr$3;
.super Lcom/google/android/gms/drive/internal/zzr$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzr;->fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaii:Lcom/google/android/gms/drive/internal/zzr;

.field final synthetic zzaik:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzr$3;->zzaii:Lcom/google/android/gms/drive/internal/zzr;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzr$3;->zzaik:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzr$zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzr$3;->zza(Lcom/google/android/gms/drive/internal/zzt;)V

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

    new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzr$3;->zzaik:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/drive/DriveId;->zzcC(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzr$zzc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzr$zzc;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzal;->zza(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/zzam;)V

    return-void
.end method
