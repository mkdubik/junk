.class final Lcom/google/android/gms/common/api/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/zzi$zzb;,
        Lcom/google/android/gms/common/api/zzi$zza;,
        Lcom/google/android/gms/common/api/zzi$zzc;,
        Lcom/google/android/gms/common/api/zzi$zze;,
        Lcom/google/android/gms/common/api/zzi$zzd;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzYV:Landroid/os/Looper;

.field final zzZH:Lcom/google/android/gms/common/internal/zzf;

.field final zzZI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzZX:Ljava/util/concurrent/locks/Condition;

.field final zzZY:Lcom/google/android/gms/common/internal/zzk;

.field final zzZZ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/zzi$zze",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzZf:I

.field private final zzZg:I

.field private final zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

.field final zzZj:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/signin/zzd;",
            "Lcom/google/android/gms/signin/zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzZs:Ljava/util/concurrent/locks/Lock;

.field private volatile zzaaa:Z

.field private zzaab:J

.field private zzaac:J

.field private final zzaad:Lcom/google/android/gms/common/api/zzi$zza;

.field zzaae:Landroid/content/BroadcastReceiver;

.field final zzaaf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field

.field final zzaag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field zzaah:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzaai:Lcom/google/android/gms/common/api/zzj;

.field private zzaaj:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzaak:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/zzl",
            "<*>;>;"
        }
    .end annotation
.end field

.field final zzaal:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/zzi$zze",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzaam:Lcom/google/android/gms/common/api/zzi$zzd;

.field private final zzaan:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final zzaao:Lcom/google/android/gms/common/internal/zzk$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/signin/zzd;",
            "Lcom/google/android/gms/signin/zze;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaab:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaac:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaag:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaah:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaaj:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaak:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaal:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/zzi$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzi$1;-><init>(Lcom/google/android/gms/common/api/zzi;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaam:Lcom/google/android/gms/common/api/zzi$zzd;

    new-instance v2, Lcom/google/android/gms/common/api/zzi$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzi$2;-><init>(Lcom/google/android/gms/common/api/zzi;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaan:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v2, Lcom/google/android/gms/common/api/zzi$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzi$3;-><init>(Lcom/google/android/gms/common/api/zzi;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaao:Lcom/google/android/gms/common/internal/zzk$zza;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzi;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/common/internal/zzk;

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzi;->zzaao:Lcom/google/android/gms/common/internal/zzk$zza;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzk$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzi;->zzYV:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/zzi$zza;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/common/api/zzi$zza;-><init>(Lcom/google/android/gms/common/api/zzi;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZf:I

    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZg:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZI:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZX:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Lcom/google/android/gms/common/api/zzh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzh;-><init>(Lcom/google/android/gms/common/api/zzi;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->zzok()Ljava/util/Map;

    move-result-object v10

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/common/api/Api;

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/zzf$zza;

    iget-boolean v2, v2, Lcom/google/android/gms/common/internal/zzf$zza;->zzadg:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_3
    move v4, v2

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZI:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zzne()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zznc()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/common/api/zzi;->zzaan:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-direct {p0, v9, v4}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/Api$zze;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzac;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zznb()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/common/api/zzi;->zzaan:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-direct {p0, v9, v4}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/Api$zza;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v2

    goto :goto_5

    :cond_4
    iput-object p3, p0, Lcom/google/android/gms/common/api/zzi;->zzZH:Lcom/google/android/gms/common/internal/zzf;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZj:Lcom/google/android/gms/common/api/Api$zza;

    return-void

    :cond_5
    move v4, v2

    goto :goto_4
.end method

.method private resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/Api$zza;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzi$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/zzi$4;-><init>(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/api/Api;I)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/Api$zze;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzac;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzd;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zze",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")",
            "Lcom/google/android/gms/common/internal/zzac;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/zzac;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$zze;->zznf()I

    move-result v3

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/Api$zze;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzac;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzd;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzi;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzo;Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzkw;->zzaet:Lcom/google/android/gms/internal/zzkx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzkx;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/zzi$7;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/zzi$7;-><init>(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/api/zzo;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzo;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/zzi;)Lcom/google/android/gms/common/api/zzj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzi;->resume()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzi;->zznC()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/zzi;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZf:I

    return v0
.end method

.method private zznC()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->connect()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZX:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzYi:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaj:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaj:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZX:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzYi:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaj:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaj:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_4
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/zzo;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzYV:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zzo;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/zzkw;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzo;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/zzi$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/zzi$5;-><init>(Lcom/google/android/gms/common/api/zzi;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/zzo;)V

    new-instance v3, Lcom/google/android/gms/common/api/zzi$6;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/zzi$6;-><init>(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/api/zzo;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/common/api/zzi;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/zzkw;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public connect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzj;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznE()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzj;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/zzj;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " mResuming="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaaa:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaal:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zzb;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .prologue
    .local p1, "api":Lcom/google/android/gms/common/api/Api;, "Lcom/google/android/gms/common/api/Api<*>;"
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznB()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzYi:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaag:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaag:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v0, "GoogleApiClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested in getConnectionResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not connected but is not present in the failed connections map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was never registered with GoogleApiClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzYV:Landroid/os/Looper;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "api":Lcom/google/android/gms/common/api/Api;, "Lcom/google/android/gms/common/api/Api<*>;"
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    instance-of v0, v0, Lcom/google/android/gms/common/api/zzf;

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    instance-of v0, v0, Lcom/google/android/gms/common/api/zzg;

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "lifecycleActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZf:I

    if-ltz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzp;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/zzp;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/common/api/zzi$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/zzi$8;-><init>(Lcom/google/android/gms/common/api/zzi;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZf:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzp;->zzbi(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZg:I

    if-ltz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzq;->zzc(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/zzq;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZg:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzq;->zzbi(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZY:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/zzc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc$zza;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc$zza;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/zzj;->zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zza(Lcom/google/android/gms/common/api/zzi$zzb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/zzi$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/zzi$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zza(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/zzi$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/zzi$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/common/api/Scope;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaah:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/common/api/zzc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc$zza;->zznd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznB()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzi$zze;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/zzi;->zzb(Lcom/google/android/gms/common/api/zzi$zze;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaaF:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zzi$zze;->zzx(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/zzj;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method zzb(Lcom/google/android/gms/common/api/zzi$zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/zzi$zze",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaal:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaam:Lcom/google/android/gms/common/api/zzi$zzd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/zzi$zze;->zza(Lcom/google/android/gms/common/api/zzi$zzd;)V

    return-void
.end method

.method zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/zzi;->zzaaj:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/api/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zzh;-><init>(Lcom/google/android/gms/common/api/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzj;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZX:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zznA()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznE()Z

    new-instance v0, Lcom/google/android/gms/common/api/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zzf;-><init>(Lcom/google/android/gms/common/api/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzj;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZX:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zznB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaa:Z

    return v0
.end method

.method zznD()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznB()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/zzi;->zzaaa:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaae:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/zzi$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zzi$zzc;-><init>(Lcom/google/android/gms/common/api/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaae:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/zzi$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaab:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/zzi$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/zzi$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaac:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/zzi$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method zznE()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzi;->zznB()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaa:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/zzi$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaad:Lcom/google/android/gms/common/api/zzi$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzi$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaae:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzaae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaae:Landroid/content/BroadcastReceiver;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method zznx()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaal:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzi$zze;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/zzi$zze;->zza(Lcom/google/android/gms/common/api/zzi$zzd;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzi$zze;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaal:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaak:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzl;->clear()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaak:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method zzny()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaaf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->disconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method zznz()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/zzg;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzi;->zzZH:Lcom/google/android/gms/common/internal/zzf;

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzi;->zzZI:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzi;->zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/zzi;->zzZj:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/common/api/zzi;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/api/zzg;-><init>(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzaai:Lcom/google/android/gms/common/api/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzj;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZX:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzp(Ljava/lang/Object;)Lcom/google/android/gms/common/api/zzl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/zzl",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/zzl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzYV:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/zzl;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzaak:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi;->zzZs:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
