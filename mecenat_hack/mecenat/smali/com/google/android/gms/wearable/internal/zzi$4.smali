.class Lcom/google/android/gms/wearable/internal/zzi$4;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzi;->removeLocalCapability(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzh",
        "<",
        "Lcom/google/android/gms/wearable/CapabilityApi$RemoveLocalCapabilityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaZB:Ljava/lang/String;

.field final synthetic zzaZD:Lcom/google/android/gms/wearable/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzi;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzi$4;->zzaZD:Lcom/google/android/gms/wearable/internal/zzi;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzi$4;->zzaZB:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzi$4;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzi$4;->zzaZB:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzs(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzi$4;->zzbl(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/CapabilityApi$RemoveLocalCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzbl(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/CapabilityApi$RemoveLocalCapabilityResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzi$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/internal/zzi$zzb;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
