.class public Lcom/google/android/gms/internal/zzkl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplayApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkl$zzb;,
        Lcom/google/android/gms/internal/zzkl$zza;,
        Lcom/google/android/gms/internal/zzkl$zzc;
    }
.end annotation


# static fields
.field private static final zzTy:Lcom/google/android/gms/cast/internal/zzl;


# instance fields
.field private zzXW:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzkm;",
            ">;"
        }
    .end annotation
.end field

.field private zzXX:Landroid/hardware/display/VirtualDisplay;

.field private final zzXY:Lcom/google/android/gms/internal/zzkp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "CastRemoteDisplayApiImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzkl;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api$zzc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzkm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzkl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkl$1;-><init>(Lcom/google/android/gms/internal/zzkl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXY:Lcom/google/android/gms/internal/zzkp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkl;->zzXW:Lcom/google/android/gms/common/api/Api$zzc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkl;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkl;->zzXX:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkl;->zzmP()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkl;)Lcom/google/android/gms/internal/zzkp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXY:Lcom/google/android/gms/internal/zzkp;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzkl;)Lcom/google/android/gms/common/api/Api$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXW:Lcom/google/android/gms/common/api/Api$zzc;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzkl;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXX:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method private zzmP()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXX:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXX:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasing virtual display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkl;->zzXX:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXX:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzXX:Landroid/hardware/display/VirtualDisplay;

    :cond_1
    return-void
.end method

.method static synthetic zzmQ()Lcom/google/android/gms/cast/internal/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    return-object v0
.end method


# virtual methods
.method public startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzkl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzkl$2;-><init>(Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzTy:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzkl$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzkl$3;-><init>(Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method
