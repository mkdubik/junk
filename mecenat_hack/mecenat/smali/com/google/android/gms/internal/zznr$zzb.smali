.class Lcom/google/android/gms/internal/zznr$zzb;
.super Lcom/google/android/gms/internal/zzmt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzQz:Lcom/google/android/gms/common/api/zzc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
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
            "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmt$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznr$zzb;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zznr$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznr$zzb;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr$zzb;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
