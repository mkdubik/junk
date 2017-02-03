.class final Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NearbyPlayerDetectedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/zzl$zzb",
        "<",
        "Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzatC:Lcom/google/android/gms/games/Player;


# virtual methods
.method public zza(Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;->zzatC:Lcom/google/android/gms/games/Player;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;->zza(Lcom/google/android/gms/games/Player;)V

    return-void
.end method

.method public zznh()V
    .locals 0

    return-void
.end method

.method public synthetic zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;->zza(Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;)V

    return-void
.end method
