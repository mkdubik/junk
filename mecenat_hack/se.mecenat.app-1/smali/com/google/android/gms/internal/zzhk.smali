.class public Lcom/google/android/gms/internal/zzhk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhk$zza;
    }
.end annotation


# instance fields
.field private zzFm:Z

.field private final zzGN:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzhk$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzGO:Ljava/lang/String;

.field private final zzGP:Ljava/lang/String;

.field private zzGQ:J

.field private zzGR:J

.field private zzGS:J

.field private zzGT:J

.field private zzGU:J

.field private zzGV:J

.field private final zzpN:Lcom/google/android/gms/internal/zzhl;

.field private final zzpc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGQ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGR:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhk;->zzFm:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGS:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhk;->zzGT:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGU:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhk;->zzGO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhk;->zzGP:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzGN:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbA()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzhk;-><init>(Lcom/google/android/gms/internal/zzhl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhk;->zzGO:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhk;->zzGP:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzhk;->zzFm:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhk;->zzGU:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhk;->zzGR:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhk;->zzGS:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhk;->zzGT:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhk;->zzGQ:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzGN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhk$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhk$zza;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public zzfT()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGR:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGR:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzhk;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhl;->zzgb()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhm;->zzfT()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfU()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzhk$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhk$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhk$zza;->zzfY()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGN:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGT:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGT:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhl;->zzgb()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhm;->zzfU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzhk;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfV()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzGN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzGN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhk$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhk$zza;->zzfW()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhk$zza;->zzfX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzhk;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGU:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhl;->zzgb()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGU:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzhm;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzl(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzhk;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzm(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzhk;->zzGQ:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzhk;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzy(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGS:J

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGS:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGR:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzhk;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzz(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzpc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk;->zzGV:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhk;->zzFm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzpN:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzhk;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
