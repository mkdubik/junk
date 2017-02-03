.class Lcom/google/android/gms/wearable/internal/zzk$1;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzk;->openChannel(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzh",
        "<",
        "Lcom/google/android/gms/wearable/ChannelApi$OpenChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaZK:Ljava/lang/String;

.field final synthetic zzaZL:Lcom/google/android/gms/wearable/internal/zzk;

.field final synthetic zzrr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzk$1;->zzaZL:Lcom/google/android/gms/wearable/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzk$1;->zzaZK:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzk$1;->zzrr:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzk$1;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk$1;->zzaZK:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzk$1;->zzrr:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzbn;->zze(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzk$1;->zzbm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/ChannelApi$OpenChannelResult;

    move-result-object v0

    return-object v0
.end method

.method public zzbm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/ChannelApi$OpenChannelResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzk$zzb;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Channel;)V

    return-object v0
.end method
