.class Lcom/google/android/gms/internal/zzpd$3;
.super Lcom/google/android/gms/internal/zzpd$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpd;->startDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJB:J

.field final synthetic zzaJD:Lcom/google/android/gms/internal/zzpd;

.field final synthetic zzaJE:Lcom/google/android/gms/common/api/zzl;

.field final synthetic zzaJy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpd;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/common/api/zzl;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpd$3;->zzaJD:Lcom/google/android/gms/internal/zzpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpd$3;->zzaJy:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzpd$3;->zzaJB:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpd$3;->zzaJE:Lcom/google/android/gms/common/api/zzl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzpd$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpd$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzpc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpd$3;->zza(Lcom/google/android/gms/internal/zzpc;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpd$3;->zzaJy:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpd$3;->zzaJB:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpd$3;->zzaJE:Lcom/google/android/gms/common/api/zzl;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzpc;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;JLcom/google/android/gms/common/api/zzl;)V

    return-void
.end method
