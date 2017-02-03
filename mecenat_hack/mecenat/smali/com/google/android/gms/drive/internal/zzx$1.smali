.class Lcom/google/android/gms/drive/internal/zzx$1;
.super Lcom/google/android/gms/drive/internal/zzx$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiP:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzaiQ:I

.field final synthetic zzaiR:I

.field final synthetic zzaiS:Lcom/google/android/gms/drive/ExecutionOptions;

.field final synthetic zzaiT:Lcom/google/android/gms/drive/internal/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiT:Lcom/google/android/gms/drive/internal/zzx;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiP:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiQ:I

    iput p5, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiR:I

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiS:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzx$zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzx$1;->zza(Lcom/google/android/gms/drive/internal/zzt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiP:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzqp()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiT:Lcom/google/android/gms/drive/internal/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/internal/zzx;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiP:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzqp()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiQ:I

    iget v4, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiR:I

    iget-object v5, p0, Lcom/google/android/gms/drive/internal/zzx$1;->zzaiS:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/ExecutionOptions;)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzt;->zzqF()Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/drive/internal/zzx$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzx$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/drive/internal/zzal;->zza(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/zzam;)V

    return-void
.end method
