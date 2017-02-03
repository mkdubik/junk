.class Lcom/google/android/gms/location/internal/zze$1;
.super Lcom/google/android/gms/location/internal/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zze;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaCH:Lcom/google/android/gms/location/GeofencingRequest;

.field final synthetic zzaCI:Lcom/google/android/gms/location/internal/zze;

.field final synthetic zzapq:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zze$1;->zzaCI:Lcom/google/android/gms/location/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zze$1;->zzaCH:Lcom/google/android/gms/location/GeofencingRequest;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/zze$1;->zzapq:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zze$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zze$1;->zza(Lcom/google/android/gms/location/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zze$1;->zzaCH:Lcom/google/android/gms/location/GeofencingRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zze$1;->zzapq:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/location/internal/zzj;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method
