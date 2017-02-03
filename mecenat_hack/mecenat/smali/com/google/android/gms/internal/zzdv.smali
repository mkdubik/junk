.class public Lcom/google/android/gms/internal/zzdv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdv$zza;,
        Lcom/google/android/gms/internal/zzdv$zzd;,
        Lcom/google/android/gms/internal/zzdv$zze;,
        Lcom/google/android/gms/internal/zzdv$zzc;,
        Lcom/google/android/gms/internal/zzdv$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzpa:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpc:Ljava/lang/Object;

.field private final zzxF:Ljava/lang/String;

.field private zzxG:Lcom/google/android/gms/internal/zzdv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdv$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field private zzxH:Lcom/google/android/gms/internal/zzdv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdv$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field private zzxI:Lcom/google/android/gms/internal/zzdv$zze;

.field private zzxJ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzpc:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdv;->zzxF:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdv;->zzpa:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzdv$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdv$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxG:Lcom/google/android/gms/internal/zzdv$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzdv$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdv$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxH:Lcom/google/android/gms/internal/zzdv$zzb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdv$zzb;Lcom/google/android/gms/internal/zzdv$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdv$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;",
            "Lcom/google/android/gms/internal/zzdv$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzdv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdv;->zzxG:Lcom/google/android/gms/internal/zzdv$zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdv;->zzxH:Lcom/google/android/gms/internal/zzdv$zzb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdv;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdv;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdv;Lcom/google/android/gms/internal/zzdv$zze;)Lcom/google/android/gms/internal/zzdv$zze;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzpa:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdv;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzpc:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/internal/zzdv$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxG:Lcom/google/android/gms/internal/zzdv$zzb;

    return-object v0
.end method

.method private zzdJ()Lcom/google/android/gms/internal/zzdv$zze;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzdv$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdv;->zzxH:Lcom/google/android/gms/internal/zzdv$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdv$zze;-><init>(Lcom/google/android/gms/internal/zzdv$zzb;)V

    new-instance v1, Lcom/google/android/gms/internal/zzdv$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzdv$1;-><init>(Lcom/google/android/gms/internal/zzdv;Lcom/google/android/gms/internal/zzdv$zze;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhu;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzdv;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzdv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/internal/zzdv$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzbb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzbd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V

    return-object v0
.end method

.method protected zzdK()Lcom/google/android/gms/internal/zzdv$zze;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdv;->zzdJ()Lcom/google/android/gms/internal/zzdv$zze;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdv$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzdv$2;-><init>(Lcom/google/android/gms/internal/zzdv;Lcom/google/android/gms/internal/zzdv$zze;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdv$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzdv$3;-><init>(Lcom/google/android/gms/internal/zzdv;Lcom/google/android/gms/internal/zzdv$zze;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv$zze;->zza(Lcom/google/android/gms/internal/zzij$zzc;Lcom/google/android/gms/internal/zzij$zza;)V

    return-object v0
.end method

.method public zzdL()Lcom/google/android/gms/internal/zzdv$zzd;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdv;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdv$zze;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdv;->zzdK()Lcom/google/android/gms/internal/zzdv$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdv$zze;->zzdM()Lcom/google/android/gms/internal/zzdv$zzd;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdv$zze;->zzdM()Lcom/google/android/gms/internal/zzdv$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdv;->zzdK()Lcom/google/android/gms/internal/zzdv$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdv$zze;->zzdM()Lcom/google/android/gms/internal/zzdv$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxJ:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdv$zze;->zzdM()Lcom/google/android/gms/internal/zzdv$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdv;->zzxI:Lcom/google/android/gms/internal/zzdv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdv$zze;->zzdM()Lcom/google/android/gms/internal/zzdv$zzd;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
