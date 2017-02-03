.class Lcom/google/android/gms/internal/zzns$5;
.super Lcom/google/android/gms/internal/zzmq$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapm:Landroid/app/PendingIntent;

.field final synthetic zzapt:Lcom/google/android/gms/internal/zzns;

.field final synthetic zzapx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzns;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzns$5;->zzapt:Lcom/google/android/gms/internal/zzns;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzns$5;->zzapm:Landroid/app/PendingIntent;

    iput p4, p0, Lcom/google/android/gms/internal/zzns$5;->zzapx:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmq$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzmq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzns$5;->zza(Lcom/google/android/gms/internal/zzmq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zznt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznt;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmq;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznb;

    new-instance v3, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzns$5;->zzapm:Landroid/app/PendingIntent;

    iget v5, p0, Lcom/google/android/gms/internal/zzns$5;->zzapx:I

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;-><init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;)V

    return-void
.end method
