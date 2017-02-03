.class Lcom/google/android/gms/wearable/internal/zzi$1;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzi;->getCapability(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzh",
        "<",
        "Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaZB:Ljava/lang/String;

.field final synthetic zzaZC:I

.field final synthetic zzaZD:Lcom/google/android/gms/wearable/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzi;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzi$1;->zzaZD:Lcom/google/android/gms/wearable/internal/zzi;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzi$1;->zzaZB:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/wearable/internal/zzi$1;->zzaZC:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzi$1;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzi$1;->zzaZB:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzi$1;->zzaZC:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzbn;->zzg(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;I)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzi$1;->zzbi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzbi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzi$zze;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzi$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/CapabilityInfo;)V

    return-object v0
.end method
