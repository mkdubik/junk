.class Lcom/google/android/gms/wearable/internal/zzay$2;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzay;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzh",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbaG:Lcom/google/android/gms/wearable/internal/zzay;

.field final synthetic zzbaH:Lcom/google/android/gms/wearable/MessageApi$MessageListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzay$2;->zzbaG:Lcom/google/android/gms/wearable/internal/zzay;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzay$2;->zzbaH:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzay$2;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay$2;->zzbaH:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzbn;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzay$2;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
