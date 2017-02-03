.class Lcom/google/android/gms/internal/zzno$zza;
.super Lcom/google/android/gms/internal/zzms$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzno;
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
            "Lcom/google/android/gms/fitness/result/DataReadResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzapd:I

.field private zzape:Lcom/google/android/gms/fitness/result/DataReadResult;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataReadResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzms$zza;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzapd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzape:Lcom/google/android/gms/fitness/result/DataReadResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzno$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/internal/zzno$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzno$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DataReadResult;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Fitness"

    const-string v1, "Received batch result"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzape:Lcom/google/android/gms/fitness/result/DataReadResult;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzno$zza;->zzape:Lcom/google/android/gms/fitness/result/DataReadResult;

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzapd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzapd:I

    iget v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzapd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzno$zza;->zzape:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzsB()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzno$zza;->zzape:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzno$zza;->zzape:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzb(Lcom/google/android/gms/fitness/result/DataReadResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
