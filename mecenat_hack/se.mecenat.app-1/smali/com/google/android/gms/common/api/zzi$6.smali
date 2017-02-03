.class Lcom/google/android/gms/common/api/zzi$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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

.field final synthetic zzaat:Lcom/google/android/gms/common/api/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzi;Lcom/google/android/gms/common/api/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzi$6;->zzaap:Lcom/google/android/gms/common/api/zzi;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzi$6;->zzaat:Lcom/google/android/gms/common/api/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi$6;->zzaat:Lcom/google/android/gms/common/api/zzo;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzo;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
