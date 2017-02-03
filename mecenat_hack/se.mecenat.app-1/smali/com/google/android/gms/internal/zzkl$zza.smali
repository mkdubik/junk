.class abstract Lcom/google/android/gms/internal/zzkl$zza;
.super Lcom/google/android/gms/internal/zzkn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzXZ:Lcom/google/android/gms/internal/zzkl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzkl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkl$zza;->zzXZ:Lcom/google/android/gms/internal/zzkl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkn$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/internal/zzkl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkl$zza;-><init>(Lcom/google/android/gms/internal/zzkl;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onError(I)V
    .locals 1
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zza(IILandroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzmR()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
