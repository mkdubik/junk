.class Lcom/google/android/gms/wearable/internal/ChannelImpl$6;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/ChannelImpl;->sendFile(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;JJ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzh",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaKy:Landroid/net/Uri;

.field final synthetic zzaZS:Lcom/google/android/gms/wearable/internal/ChannelImpl;

.field final synthetic zzaZU:J

.field final synthetic zzaZV:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ChannelImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaZS:Lcom/google/android/gms/wearable/internal/ChannelImpl;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaKy:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaZU:J

    iput-wide p6, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaZV:J

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaZS:Lcom/google/android/gms/wearable/internal/ChannelImpl;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ChannelImpl;->zza(Lcom/google/android/gms/wearable/internal/ChannelImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaKy:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaZU:J

    iget-wide v6, p0, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzaZV:J

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/wearable/internal/zzbn;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ChannelImpl$6;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
