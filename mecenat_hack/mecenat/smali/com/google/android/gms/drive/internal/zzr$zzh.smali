.class Lcom/google/android/gms/drive/internal/zzr$zzh;
.super Lcom/google/android/gms/drive/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/zzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzh"
.end annotation


# instance fields
.field private final zzQz:Lcom/google/android/gms/common/api/zzc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzr$zzh;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzr$zzh;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzr$zza;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaaD:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzqN()Lcom/google/android/gms/drive/Contents;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/zzu;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/zzr$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzr$zzh;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzr$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/zzr$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
