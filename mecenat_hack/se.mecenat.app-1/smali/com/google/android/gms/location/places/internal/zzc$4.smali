.class Lcom/google/android/gms/location/places/internal/zzc$4;
.super Lcom/google/android/gms/location/places/zzf$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/internal/zzc;->getPlacePhotos(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzf$zzb",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaEe:Lcom/google/android/gms/location/places/internal/zzc;

.field final synthetic zzaEi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzc;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzc$4;->zzaEe:Lcom/google/android/gms/location/places/internal/zzc;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzc$4;->zzaEi:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzf$zzb;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzc$4;->zza(Lcom/google/android/gms/location/places/internal/zzd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zzd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzf;-><init>(Lcom/google/android/gms/location/places/zzf$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzc$4;->zzaEi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzd;->zza(Lcom/google/android/gms/location/places/zzf;Ljava/lang/String;)V

    return-void
.end method
