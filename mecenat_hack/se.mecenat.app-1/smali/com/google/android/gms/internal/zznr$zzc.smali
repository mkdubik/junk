.class Lcom/google/android/gms/internal/zznr$zzc;
.super Lcom/google/android/gms/internal/zznh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private final zzQz:Lcom/google/android/gms/common/api/zzc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzapr:Lcom/google/android/gms/internal/zznr$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zznr$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zznr$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznh$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznr$zzc;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznr$zzc;->zzapr:Lcom/google/android/gms/internal/zznr$zza;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zznr$zza;Lcom/google/android/gms/internal/zznr$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zznr$zzc;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zznr$zza;)V

    return-void
.end method


# virtual methods
.method public zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr$zzc;->zzapr:Lcom/google/android/gms/internal/zznr$zza;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr$zzc;->zzapr:Lcom/google/android/gms/internal/zznr$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznr$zza;->zzrZ()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr$zzc;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
