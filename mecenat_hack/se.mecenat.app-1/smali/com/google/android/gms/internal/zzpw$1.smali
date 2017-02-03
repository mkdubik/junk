.class Lcom/google/android/gms/internal/zzpw$1;
.super Lcom/google/android/gms/internal/zzpw$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw;->attest(Lcom/google/android/gms/common/api/GoogleApiClient;[B)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaND:[B

.field final synthetic zzaNE:Lcom/google/android/gms/internal/zzpw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/common/api/GoogleApiClient;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaNE:Lcom/google/android/gms/internal/zzpw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaND:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpw$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzpx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpw$1;->zza(Lcom/google/android/gms/internal/zzpx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaNI:Lcom/google/android/gms/internal/zzpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaND:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzpx;->zza(Lcom/google/android/gms/internal/zzpu;[B)V

    return-void
.end method
