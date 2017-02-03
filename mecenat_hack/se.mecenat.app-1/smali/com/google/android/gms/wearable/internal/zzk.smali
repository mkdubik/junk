.class public final Lcom/google/android/gms/wearable/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/ChannelApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzk$zzc;,
        Lcom/google/android/gms/wearable/internal/zzk$zza;,
        Lcom/google/android/gms/wearable/internal/zzk$zzb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "client is null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener is null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzk$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public openChannel(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$OpenChannelResult;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "client is null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeId is null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "path is null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzk$1;-><init>(Lcom/google/android/gms/wearable/internal/zzk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "client is null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener is null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzk$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method
