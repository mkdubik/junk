.class Lcom/google/android/gms/internal/zznr$1;
.super Lcom/google/android/gms/internal/zzmp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznr;->findDataSources(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmp$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzapi:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

.field final synthetic zzapj:Lcom/google/android/gms/internal/zznr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznr;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznr$1;->zzapj:Lcom/google/android/gms/internal/zznr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznr$1;->zzapi:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmp$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;->zzR(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzmp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznr$1;->zza(Lcom/google/android/gms/internal/zzmp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmp;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zznr$zzb;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zznr$zzb;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zznr$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmp;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzna;

    new-instance v3, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zznr$1;->zzapi:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/zzmt;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzna;->zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznr$1;->zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    return-object v0
.end method
