.class public Lcom/google/android/gms/common/api/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzj;


# instance fields
.field private final zzZq:Lcom/google/android/gms/common/api/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzi;->zzny()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/zzi;->zzaah:Ljava/util/Set;

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzi;->zznz()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzi$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzi$zze;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzi;->zzaag:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzi;->zznx()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DISCONNECTED"

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzh;->zzZq:Lcom/google/android/gms/common/api/zzi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzi;->zzZZ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
