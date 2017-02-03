.class Lcom/google/android/gms/drive/internal/zzt$1;
.super Lcom/google/android/gms/drive/internal/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzt;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/internal/zzad;Lcom/google/android/gms/drive/events/ChangesAvailableOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiA:Lcom/google/android/gms/drive/internal/zzad;

.field final synthetic zzaiB:Lcom/google/android/gms/drive/internal/zzt;

.field final synthetic zzaix:Lcom/google/android/gms/drive/DriveId;

.field final synthetic zzaiy:I

.field final synthetic zzaiz:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzt;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;Lcom/google/android/gms/drive/internal/zzad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaiB:Lcom/google/android/gms/drive/internal/zzt;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaix:Lcom/google/android/gms/drive/DriveId;

    iput p4, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaiy:I

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaiz:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaiA:Lcom/google/android/gms/drive/internal/zzad;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzt$1;->zza(Lcom/google/android/gms/drive/internal/zzt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzt;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzt;->zzqF()Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaix:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaiy:I

    iget-object v4, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaiz:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;)V

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzt$1;->zzaiA:Lcom/google/android/gms/drive/internal/zzad;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/drive/internal/zzbr;

    invoke-direct {v4, p0}, Lcom/google/android/gms/drive/internal/zzbr;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/zzal;->zza(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/zzan;Ljava/lang/String;Lcom/google/android/gms/drive/internal/zzam;)V

    return-void
.end method
