.class Lcom/google/android/gms/location/places/internal/zzc$3;
.super Lcom/google/android/gms/location/places/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/internal/zzc;->getAutocompletePredictions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzl$zza",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaEe:Lcom/google/android/gms/location/places/internal/zzc;

.field final synthetic zzaEg:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic zzaEh:Lcom/google/android/gms/location/places/AutocompleteFilter;

.field final synthetic zzauM:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzc;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzc$3;->zzaEe:Lcom/google/android/gms/location/places/internal/zzc;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzc$3;->zzauM:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/zzc$3;->zzaEg:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/zzc$3;->zzaEh:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzl$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzc$3;->zza(Lcom/google/android/gms/location/places/internal/zzd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zzd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/zzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzl;-><init>(Lcom/google/android/gms/location/places/zzl$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzc$3;->zzauM:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzc$3;->zzaEg:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzc$3;->zzaEh:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/zzd;->zza(Lcom/google/android/gms/location/places/zzl;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V

    return-void
.end method
