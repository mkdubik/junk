.class Lcom/google/android/gms/internal/zznq$4;
.super Lcom/google/android/gms/internal/zzmo$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznq;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapb:Lcom/google/android/gms/fitness/data/DataType;

.field final synthetic zzapf:Lcom/google/android/gms/internal/zznq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznq$4;->zzapf:Lcom/google/android/gms/internal/zznq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznq$4;->zzapb:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmo$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzmo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznq$4;->zza(Lcom/google/android/gms/internal/zzmo;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zznt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznt;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmo;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmz;

    new-instance v3, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zznq$4;->zzapb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzmz;->zza(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)V

    return-void
.end method
