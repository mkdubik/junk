.class Lcom/google/android/gms/wearable/internal/zzw$2;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzw;->getDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzh",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaKy:Landroid/net/Uri;

.field final synthetic zzbaf:Lcom/google/android/gms/wearable/internal/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzw;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzw$2;->zzbaf:Lcom/google/android/gms/wearable/internal/zzw;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzw$2;->zzaKy:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzw$2;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzw$2;->zzaKy:Landroid/net/Uri;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzbn;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Landroid/net/Uri;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzw$2;->zzbp(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzbp(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DataItemResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzw$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzw$zzb;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V

    return-object v0
.end method
