.class Lcom/google/android/gms/location/places/internal/zzc$1;
.super Lcom/google/android/gms/location/places/zzl$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/internal/zzc;->addPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/AddPlaceRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzl$zzc",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaEd:Lcom/google/android/gms/location/places/AddPlaceRequest;

.field final synthetic zzaEe:Lcom/google/android/gms/location/places/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzc;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/AddPlaceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzc$1;->zzaEe:Lcom/google/android/gms/location/places/internal/zzc;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzc$1;->zzaEd:Lcom/google/android/gms/location/places/AddPlaceRequest;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzl$zzc;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzc$1;->zza(Lcom/google/android/gms/location/places/internal/zzd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zzd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/zzl;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/places/zzl;-><init>(Lcom/google/android/gms/location/places/zzl$zzc;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzc$1;->zzaEd:Lcom/google/android/gms/location/places/AddPlaceRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzd;->zza(Lcom/google/android/gms/location/places/zzl;Lcom/google/android/gms/location/places/AddPlaceRequest;)V

    return-void
.end method
