.class final Lcom/google/android/gms/wearable/internal/zzba$zza;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
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
.field private zzbaL:Lcom/google/android/gms/wearable/NodeApi$NodeListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzba$zza;->zzbaL:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/NodeApi$NodeListener;Lcom/google/android/gms/wearable/internal/zzba$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzba$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzba$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzba$zza;->zzbaL:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzbn;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzba$zza;->zzbaL:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzba$zza;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzba$zza;->zzbaL:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    return-object p1
.end method
