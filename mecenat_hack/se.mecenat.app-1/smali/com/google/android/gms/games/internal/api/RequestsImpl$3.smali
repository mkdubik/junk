.class Lcom/google/android/gms/games/internal/api/RequestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;->loadRequests(Lcom/google/android/gms/common/api/GoogleApiClient;III)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzauQ:I

.field final synthetic zzavK:Lcom/google/android/gms/games/internal/api/RequestsImpl;

.field final synthetic zzavL:I

.field final synthetic zzavM:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;III)V
    .locals 1
    .param p2, "x0"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzavK:Lcom/google/android/gms/games/internal/api/RequestsImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzavL:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzavM:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzauQ:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzavL:I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzavM:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzauQ:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/zzc$zzb;III)V

    return-void
.end method
