.class Lcom/google/android/gms/internal/zzpd$5;
.super Lcom/google/android/gms/internal/zzpd$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpd;->acceptConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJD:Lcom/google/android/gms/internal/zzpd;

.field final synthetic zzaJG:Lcom/google/android/gms/common/api/zzl;

.field final synthetic zzaJl:Ljava/lang/String;

.field final synthetic zzavP:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpd;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/common/api/zzl;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpd$5;->zzaJD:Lcom/google/android/gms/internal/zzpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpd$5;->zzaJl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpd$5;->zzavP:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpd$5;->zzaJG:Lcom/google/android/gms/common/api/zzl;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpd$5;->zza(Lcom/google/android/gms/internal/zzpc;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd$5;->zzaJl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpd$5;->zzavP:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpd$5;->zzaJG:Lcom/google/android/gms/common/api/zzl;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzpc;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;[BLcom/google/android/gms/common/api/zzl;)V

    return-void
.end method
