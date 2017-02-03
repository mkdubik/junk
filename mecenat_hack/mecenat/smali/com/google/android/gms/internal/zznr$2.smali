.class Lcom/google/android/gms/internal/zznr$2;
.super Lcom/google/android/gms/internal/zzmp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznr;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapj:Lcom/google/android/gms/internal/zznr;

.field final synthetic zzapk:Lcom/google/android/gms/fitness/request/SensorRequest;

.field final synthetic zzapl:Lcom/google/android/gms/fitness/data/zzj;

.field final synthetic zzapm:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznr;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznr$2;->zzapj:Lcom/google/android/gms/internal/zznr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznr$2;->zzapk:Lcom/google/android/gms/fitness/request/SensorRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zznr$2;->zzapl:Lcom/google/android/gms/fitness/data/zzj;

    iput-object p5, p0, Lcom/google/android/gms/internal/zznr$2;->zzapm:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmp$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzmp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznr$2;->zza(Lcom/google/android/gms/internal/zzmp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/zznt;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zznt;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmp;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzna;

    new-instance v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr$2;->zzapk:Lcom/google/android/gms/fitness/request/SensorRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zznr$2;->zzapl:Lcom/google/android/gms/fitness/data/zzj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zznr$2;->zzapm:Landroid/app/PendingIntent;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzna;->zza(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznr$2;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
