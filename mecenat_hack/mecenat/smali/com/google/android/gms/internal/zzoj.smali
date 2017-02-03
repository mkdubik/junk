.class public Lcom/google/android/gms/internal/zzoj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzoj$zza;
    }
.end annotation


# static fields
.field private static final zzaIm:[Lcom/google/android/gms/internal/zzoj$zza;

.field private static zzaIn:Lcom/google/android/gms/internal/zzoj;


# instance fields
.field private final zzaIo:Landroid/app/Application;

.field private zzaIp:Lcom/google/android/gms/internal/zzoq;

.field private final zzaIq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzoj$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaIr:Lcom/google/android/gms/internal/zzot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzoj$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzoj;->zzaIm:[Lcom/google/android/gms/internal/zzoj$zza;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj;->zzaIo:Landroid/app/Application;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    return-void
.end method

.method public static zzaJ(Landroid/content/Context;)Lcom/google/android/gms/internal/zzoj;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/internal/zzoj;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/zzoj;->zzaIn:Lcom/google/android/gms/internal/zzoj;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzoj;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzoj;-><init>(Landroid/app/Application;)V

    sput-object v2, Lcom/google/android/gms/internal/zzoj;->zzaIn:Lcom/google/android/gms/internal/zzoj;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzoj;->zzaIn:Lcom/google/android/gms/internal/zzoj;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzxz()[Lcom/google/android/gms/internal/zzoj$zza;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzoj;->zzaIm:[Lcom/google/android/gms/internal/zzoj$zza;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzoj$zza;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzoj$zza;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzoj$zza;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzaj(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const-string v0, "com.google.android.gms.measurement.ScreenViewService"

    const-string v1, "AutoScreeViewTracking is not supported on API 14 or earlier devices"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzoj;->zzxy()Z

    move-result v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzot;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzot;-><init>(Lcom/google/android/gms/internal/zzoj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIr:Lcom/google/android/gms/internal/zzot;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIo:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzaIr:Lcom/google/android/gms/internal/zzot;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIo:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzaIr:Lcom/google/android/gms/internal/zzot;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIr:Lcom/google/android/gms/internal/zzot;

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzoq;Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzoq;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v0, p2, Lcom/google/android/gms/internal/zzoi;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzoi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzoi;->zzb(Lcom/google/android/gms/internal/zzoq;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoq;->zzbp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzhT(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoq;->zzxT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzdU(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj;->zzxz()[Lcom/google/android/gms/internal/zzoj$zza;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/zzoj$zza;->zza(Lcom/google/android/gms/internal/zzoq;Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzoq;->zzxX()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzoq;->zzxT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzoq;->zzbp()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzoq;->zzbp()I

    move-result v3

    if-ne v2, v3, :cond_6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzoj;->zzxx()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj;->zzxz()[Lcom/google/android/gms/internal/zzoj$zza;

    move-result-object v0

    :cond_7
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzoj$zza;->zza(Lcom/google/android/gms/internal/zzoq;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public zzxw()Lcom/google/android/gms/internal/zzoq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    return-object v0
.end method

.method public zzxx()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIp:Lcom/google/android/gms/internal/zzoq;

    return-void
.end method

.method public zzxy()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaIr:Lcom/google/android/gms/internal/zzot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
