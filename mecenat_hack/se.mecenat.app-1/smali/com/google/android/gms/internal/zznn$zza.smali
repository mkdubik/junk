.class Lcom/google/android/gms/internal/zznn$zza;
.super Lcom/google/android/gms/internal/zzmu$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzQz:Lcom/google/android/gms/common/api/zzc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataTypeResult;",
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
            "Lcom/google/android/gms/fitness/result/DataTypeResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmu$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznn$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zznn$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznn$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DataTypeResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznn$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
