.class Lcom/google/android/gms/internal/zzpw$2;
.super Lcom/google/android/gms/internal/zzpw$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw;->lookupUri(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNE:Lcom/google/android/gms/internal/zzpw;

.field final synthetic zzaNF:Ljava/util/List;

.field final synthetic zzaNG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaNE:Lcom/google/android/gms/internal/zzpw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaNF:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaNG:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpw$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpw$2;->zza(Lcom/google/android/gms/internal/zzpx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaNI:Lcom/google/android/gms/internal/zzpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaNF:Ljava/util/List;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaNG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzpx;->zza(Lcom/google/android/gms/internal/zzpu;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method
