.class Lcom/google/android/gms/nearby/messages/internal/zzh$3;
.super Lcom/google/android/gms/nearby/messages/internal/zzh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzh;->unpublish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJW:Lcom/google/android/gms/nearby/messages/Message;

.field final synthetic zzaJY:Lcom/google/android/gms/nearby/messages/internal/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$3;->zzaJY:Lcom/google/android/gms/nearby/messages/internal/zzh;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$3;->zzaJW:Lcom/google/android/gms/nearby/messages/Message;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzh$3;->zza(Lcom/google/android/gms/nearby/messages/internal/zzg;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$3;->zzaJW:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v0}, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;)V

    return-void
.end method
