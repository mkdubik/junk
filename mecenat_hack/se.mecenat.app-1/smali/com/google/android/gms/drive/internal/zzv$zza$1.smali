.class Lcom/google/android/gms/drive/internal/zzv$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzv$zza;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/zzl$zzb",
        "<",
        "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaiM:J

.field final synthetic zzaiN:J

.field final synthetic zzaiO:Lcom/google/android/gms/drive/internal/zzv$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzv$zza;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzv$zza$1;->zzaiO:Lcom/google/android/gms/drive/internal/zzv$zza;

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/zzv$zza$1;->zzaiM:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/zzv$zza$1;->zzaiN:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/zzv$zza$1;->zzaiM:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzv$zza$1;->zzaiN:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    return-void
.end method

.method public zznh()V
    .locals 0

    return-void
.end method

.method public synthetic zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzv$zza$1;->zza(Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    return-void
.end method
