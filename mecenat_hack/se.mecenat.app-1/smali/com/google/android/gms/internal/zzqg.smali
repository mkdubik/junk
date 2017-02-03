.class public Lcom/google/android/gms/internal/zzqg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqg$zza;
    }
.end annotation


# static fields
.field private static zzaTp:Lcom/google/android/gms/internal/zzqg;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStarted:Z

.field private final zzaTq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzqg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaTr:Lcom/google/android/gms/tagmanager/TagManager;

.field private zzpo:Lcom/google/android/gms/internal/zzqf;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaTq:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaTr:Lcom/google/android/gms/tagmanager/TagManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqg;->zzaTr:Lcom/google/android/gms/tagmanager/TagManager;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqg;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqg;Lcom/google/android/gms/internal/zzqf;)Lcom/google/android/gms/internal/zzqf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqg;->zzpo:Lcom/google/android/gms/internal/zzqf;

    return-object p1
.end method

.method public static zzaR(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqg;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzqg;->zzaTp:Lcom/google/android/gms/internal/zzqg;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzqg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzqg;->zzaTp:Lcom/google/android/gms/internal/zzqg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzqg;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/zzqg;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;)V

    sput-object v0, Lcom/google/android/gms/internal/zzqg;->zzaTp:Lcom/google/android/gms/internal/zzqg;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzqg;->zzaTp:Lcom/google/android/gms/internal/zzqg;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqg;->zzgK()V

    return-void
.end method

.method private zzgK()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaTq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqg$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqg$zza;->zzbo()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqg;->mStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method start() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzpo:Lcom/google/android/gms/internal/zzqf;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No settings configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqg;->mStarted:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaTr:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqg;->zzpo:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqf;->zzBj()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "admob"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/TagManager;->zzc(Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzqg$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzqg$1;-><init>(Lcom/google/android/gms/internal/zzqg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public zzBn()Lcom/google/android/gms/internal/zzqf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzpo:Lcom/google/android/gms/internal/zzqf;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqf;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqg;->mStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Settings can\'t be changed after TagManager has been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqg;->zzpo:Lcom/google/android/gms/internal/zzqf;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqg$zza;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaTq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
