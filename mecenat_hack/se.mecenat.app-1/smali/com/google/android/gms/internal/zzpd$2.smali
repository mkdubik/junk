.class Lcom/google/android/gms/internal/zzpd$2;
.super Lcom/google/android/gms/internal/zzpd$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpd;->startAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaJA:Lcom/google/android/gms/nearby/connection/AppMetadata;

.field final synthetic zzaJB:J

.field final synthetic zzaJC:Lcom/google/android/gms/common/api/zzl;

.field final synthetic zzaJD:Lcom/google/android/gms/internal/zzpd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpd;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/common/api/zzl;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpd$2;->zzaJD:Lcom/google/android/gms/internal/zzpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpd$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpd$2;->zzaJA:Lcom/google/android/gms/nearby/connection/AppMetadata;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzpd$2;->zzaJB:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzpd$2;->zzaJC:Lcom/google/android/gms/common/api/zzl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzpd$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpd$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpd$2;->zza(Lcom/google/android/gms/internal/zzpc;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpd$2;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpd$2;->zzaJA:Lcom/google/android/gms/nearby/connection/AppMetadata;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpd$2;->zzaJB:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpd$2;->zzaJC:Lcom/google/android/gms/common/api/zzl;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpc;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/common/api/zzl;)V

    return-void
.end method
