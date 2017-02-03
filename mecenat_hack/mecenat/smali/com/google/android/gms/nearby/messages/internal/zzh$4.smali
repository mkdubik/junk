.class Lcom/google/android/gms/nearby/messages/internal/zzh$4;
.super Lcom/google/android/gms/nearby/messages/internal/zzh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzh;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJX:Lcom/google/android/gms/nearby/messages/Strategy;

.field final synthetic zzaJY:Lcom/google/android/gms/nearby/messages/internal/zzh;

.field final synthetic zzaJZ:Lcom/google/android/gms/nearby/messages/MessageListener;

.field final synthetic zzaKa:Lcom/google/android/gms/nearby/messages/MessageFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zzaJY:Lcom/google/android/gms/nearby/messages/internal/zzh;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zzaJZ:Lcom/google/android/gms/nearby/messages/MessageListener;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zzaJX:Lcom/google/android/gms/nearby/messages/Strategy;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zzaKa:Lcom/google/android/gms/nearby/messages/MessageFilter;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zza(Lcom/google/android/gms/nearby/messages/internal/zzg;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zzaJZ:Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zzaJX:Lcom/google/android/gms/nearby/messages/Strategy;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;->zzaKa:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)V

    return-void
.end method
