.class Lcom/google/android/gms/common/api/zzi$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzi;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaap:Lcom/google/android/gms/common/api/zzi;

.field final synthetic zzaas:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzaat:Lcom/google/android/gms/common/api/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzi;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzi$5;->zzaap:Lcom/google/android/gms/common/api/zzi;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzi$5;->zzaas:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzi$5;->zzaat:Lcom/google/android/gms/common/api/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/common/api/zzi$5;->zzaap:Lcom/google/android/gms/common/api/zzi;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi$5;->zzaas:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzi$5;->zzaat:Lcom/google/android/gms/common/api/zzo;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzo;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    return-void
.end method
