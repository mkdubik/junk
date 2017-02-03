.class Lcom/google/android/gms/internal/zzpi$1;
.super Lcom/google/android/gms/internal/zzpi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpi;->loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaKy:Landroid/net/Uri;

.field final synthetic zzaKz:Lcom/google/android/gms/internal/zzpi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpi;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpi$1;->zzaKz:Lcom/google/android/gms/internal/zzpi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpi$1;->zzaKy:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzph;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpi$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpi$zzb;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpi$1;->zzaKy:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzph;->zza(Lcom/google/android/gms/internal/zzpg;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
