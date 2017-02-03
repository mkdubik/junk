.class Lcom/google/android/gms/internal/zzky$1;
.super Lcom/google/android/gms/internal/zzkz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzky;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaeu:Lcom/google/android/gms/internal/zzky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzky;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzky$1;->zzaeu:Lcom/google/android/gms/internal/zzky;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzkz$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzla;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzky$1;->zza(Lcom/google/android/gms/internal/zzla;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzla;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzla;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlc;

    new-instance v1, Lcom/google/android/gms/internal/zzky$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzky$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlc;->zza(Lcom/google/android/gms/internal/zzlb;)V

    return-void
.end method
