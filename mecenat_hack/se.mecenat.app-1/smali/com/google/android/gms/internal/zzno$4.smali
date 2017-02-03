.class Lcom/google/android/gms/internal/zzno$4;
.super Lcom/google/android/gms/internal/zzmm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzno;->readDailyTotal(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmm$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DailyTotalResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaoY:Lcom/google/android/gms/internal/zzno;

.field final synthetic zzapb:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzno;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzno$4;->zzaoY:Lcom/google/android/gms/internal/zzno;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzno$4;->zzapb:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmm$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzQ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

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

    check-cast p1, Lcom/google/android/gms/internal/zzmm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzno$4;->zza(Lcom/google/android/gms/internal/zzmm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzno$4$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzno$4$1;-><init>(Lcom/google/android/gms/internal/zzno$4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/fitness/request/DailyTotalRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzno$4;->zzapb:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/fitness/request/DailyTotalRequest;-><init>(Lcom/google/android/gms/internal/zzmr;Lcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmm;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmx;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzmx;->zza(Lcom/google/android/gms/fitness/request/DailyTotalRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzno$4;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object v0

    return-object v0
.end method
