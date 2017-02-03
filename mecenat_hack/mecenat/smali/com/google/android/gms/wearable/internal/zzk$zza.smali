.class final Lcom/google/android/gms/wearable/internal/zzk$zza;
.super Lcom/google/android/gms/wearable/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
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
.field private final zzaZM:Ljava/lang/String;

.field private zzaZN:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk$zza;->zzaZN:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzk$zza;->zzaZM:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzk$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk$zza;->zzaZN:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzk$zza;->zzaZM:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzbn;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk$zza;->zzaZN:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzk$zza;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk$zza;->zzaZN:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    return-object p1
.end method
