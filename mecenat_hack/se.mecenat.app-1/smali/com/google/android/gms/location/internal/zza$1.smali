.class Lcom/google/android/gms/location/internal/zza$1;
.super Lcom/google/android/gms/location/internal/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zza;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaCv:J

.field final synthetic zzaCw:Landroid/app/PendingIntent;

.field final synthetic zzaCx:Lcom/google/android/gms/location/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zza;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaCx:Lcom/google/android/gms/location/internal/zza;

    iput-wide p3, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaCv:J

    iput-object p5, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaCw:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zza$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zza$1;->zza(Lcom/google/android/gms/location/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaCv:J

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaCw:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/internal/zzj;->zza(JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaaD:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zza$1;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method