.class public abstract Lcom/google/android/gms/common/api/zza;
.super Lcom/google/android/gms/common/api/zzb;

# interfaces
.implements Lcom/google/android/gms/common/api/OptionalPendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/zzb",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/OptionalPendingResult",
        "<TR;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzb;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/gms/common/api/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zza;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/api/zza;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result is not available. Check that isDone() returns true before calling get()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zza;->isReady()Z

    move-result v0

    return v0
.end method
