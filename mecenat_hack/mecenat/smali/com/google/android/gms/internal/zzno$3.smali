.class Lcom/google/android/gms/internal/zzno$3;
.super Lcom/google/android/gms/internal/zzmm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzno;->readData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmm$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DataReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaoY:Lcom/google/android/gms/internal/zzno;

.field final synthetic zzapa:Lcom/google/android/gms/fitness/request/DataReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzno;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzno$3;->zzaoY:Lcom/google/android/gms/internal/zzno;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzno$3;->zzapa:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmm$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzJ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzno$3;->zzapa:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DataReadResult;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzno$3;->zza(Lcom/google/android/gms/internal/zzmm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzno$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzno$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zzno$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmm;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmx;

    new-instance v3, Lcom/google/android/gms/fitness/request/DataReadRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzno$3;->zzapa:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/zzms;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzmx;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzno$3;->zzJ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method
