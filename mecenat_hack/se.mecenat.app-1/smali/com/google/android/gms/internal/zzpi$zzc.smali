.class abstract Lcom/google/android/gms/internal/zzpi$zzc;
.super Lcom/google/android/gms/common/api/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/zzc$zza",
        "<TR;",
        "Lcom/google/android/gms/internal/zzpj;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzph;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpi$zzc;->zza(Lcom/google/android/gms/internal/zzpj;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzpj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpj;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzph;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzpi$zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzph;)V

    return-void
.end method
