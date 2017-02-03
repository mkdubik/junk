.class Lcom/google/android/gms/nearby/messages/internal/zzh$6;
.super Lcom/google/android/gms/nearby/messages/internal/zzh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzh;->getPermissionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJY:Lcom/google/android/gms/nearby/messages/internal/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$6;->zzaJY:Lcom/google/android/gms/nearby/messages/internal/zzh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzh$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzh$6;->zza(Lcom/google/android/gms/nearby/messages/internal/zzg;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzi(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method
