.class Lcom/google/android/gms/games/internal/api/RequestsImpl$7;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzauQ:I

.field final synthetic zzauv:Ljava/lang/String;

.field final synthetic zzavF:Ljava/lang/String;

.field final synthetic zzavL:I

.field final synthetic zzavM:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzauv:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzavF:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzavL:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzavM:I

    iget v6, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzauQ:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
