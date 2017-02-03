.class Lcom/google/android/gms/internal/zznq$1;
.super Lcom/google/android/gms/internal/zzmo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznq;->listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmo$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzapf:Lcom/google/android/gms/internal/zznq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznq$1;->zzapf:Lcom/google/android/gms/internal/zznq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmo$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->zzT(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzmo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznq$1;->zza(Lcom/google/android/gms/internal/zzmo;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zznq$zza;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/internal/zznq$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zznq$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmo;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmz;

    new-instance v3, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zznc;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzmz;->zza(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznq$1;->zzL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method
