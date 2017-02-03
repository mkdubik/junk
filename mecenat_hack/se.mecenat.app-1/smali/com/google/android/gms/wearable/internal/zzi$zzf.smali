.class final Lcom/google/android/gms/wearable/internal/zzi$zzf;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzf"
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
.field private zzaZE:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

.field private zzaZF:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZE:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZF:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/zzi$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzi$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZE:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZF:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzbn;->zzb(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZE:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZF:Ljava/lang/String;

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZE:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzi$zzf;->zzaZF:Ljava/lang/String;

    return-object p1
.end method
