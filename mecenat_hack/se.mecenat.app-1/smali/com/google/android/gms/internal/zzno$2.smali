.class Lcom/google/android/gms/internal/zzno$2;
.super Lcom/google/android/gms/internal/zzmm$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzno;->deleteData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaoY:Lcom/google/android/gms/internal/zzno;

.field final synthetic zzaoZ:Lcom/google/android/gms/fitness/request/DataDeleteRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzno;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzno$2;->zzaoY:Lcom/google/android/gms/internal/zzno;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzno$2;->zzaoZ:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzno$2;->zza(Lcom/google/android/gms/internal/zzmm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmm;)V
    .locals 5
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

    new-instance v3, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzno$2;->zzaoZ:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzmx;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    return-void
.end method
