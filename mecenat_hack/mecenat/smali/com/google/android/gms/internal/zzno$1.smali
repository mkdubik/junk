.class Lcom/google/android/gms/internal/zzno$1;
.super Lcom/google/android/gms/internal/zzmm$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzno;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaoW:Lcom/google/android/gms/fitness/data/DataSet;

.field final synthetic zzaoX:Z

.field final synthetic zzaoY:Lcom/google/android/gms/internal/zzno;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzno;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzno$1;->zzaoY:Lcom/google/android/gms/internal/zzno;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzno$1;->zzaoW:Lcom/google/android/gms/fitness/data/DataSet;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzno$1;->zzaoX:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmm$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzmm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzno$1;->zza(Lcom/google/android/gms/internal/zzmm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zznt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznt;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmm;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmx;

    new-instance v3, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzno$1;->zzaoW:Lcom/google/android/gms/fitness/data/DataSet;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzno$1;->zzaoX:Z

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/google/android/gms/fitness/request/DataInsertRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzmx;->zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    return-void
.end method
