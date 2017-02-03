.class Lcom/google/android/gms/internal/zznm$4;
.super Lcom/google/android/gms/internal/zzmk$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznm;->claimBleDevice(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaoP:Lcom/google/android/gms/internal/zznm;

.field final synthetic zzaoS:Lcom/google/android/gms/fitness/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznm$4;->zzaoP:Lcom/google/android/gms/internal/zznm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznm$4;->zzaoS:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmk$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzmk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznm$4;->zza(Lcom/google/android/gms/internal/zzmk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmk;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zznt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznt;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmk;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmv;

    new-instance v3, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zznm$4;->zzaoS:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/BleDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zznm$4;->zzaoS:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzmv;->zza(Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;)V

    return-void
.end method
