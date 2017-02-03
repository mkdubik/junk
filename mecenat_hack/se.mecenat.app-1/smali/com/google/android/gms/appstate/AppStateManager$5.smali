.class final Lcom/google/android/gms/appstate/AppStateManager$5;
.super Lcom/google/android/gms/appstate/AppStateManager$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzQt:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->zzQt:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzjn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->zza(Lcom/google/android/gms/internal/zzjn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzjn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->zzQt:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzjn;->zza(Lcom/google/android/gms/common/api/zzc$zzb;I)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->zzh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;

    move-result-object v0

    return-object v0
.end method

.method public zzh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5$1;-><init>(Lcom/google/android/gms/appstate/AppStateManager$5;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
