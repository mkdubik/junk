.class final Lcom/google/android/gms/nearby/messages/internal/zzj;
.super Lcom/google/android/gms/nearby/messages/internal/zzc$zza;


# instance fields
.field private final zzaKb:Lcom/google/android/gms/common/api/zzc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaKb:Lcom/google/android/gms/common/api/zzc$zzb;

    return-void
.end method

.method static zzj(Lcom/google/android/gms/common/api/zzc$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/google/android/gms/nearby/messages/internal/zzj;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-object v0
.end method


# virtual methods
.method public zzaU(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaKb:Lcom/google/android/gms/common/api/zzc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
