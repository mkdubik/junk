.class Lcom/google/android/gms/common/api/zzi$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzVc:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzaap:Lcom/google/android/gms/common/api/zzi;

.field final synthetic zzaat:Lcom/google/android/gms/common/api/zzo;

.field final synthetic zzaau:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/api/zzo;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzi$7;->zzaap:Lcom/google/android/gms/common/api/zzi;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzi$7;->zzaat:Lcom/google/android/gms/common/api/zzo;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/zzi$7;->zzaau:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzi$7;->zzVc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/zzi$7;->zzr(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi$7;->zzaap:Lcom/google/android/gms/common/api/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi$7;->zzaap:Lcom/google/android/gms/common/api/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzi;->reconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi$7;->zzaat:Lcom/google/android/gms/common/api/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzo;->zza(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzi$7;->zzaau:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi$7;->zzVc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method
