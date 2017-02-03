.class Lcom/google/android/gms/internal/zzkl$1;
.super Lcom/google/android/gms/internal/zzkp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzXZ:Lcom/google/android/gms/internal/zzkl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkl$1;->zzXZ:Lcom/google/android/gms/internal/zzkl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkp$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzaZ(I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzkl;->zzmQ()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl$1;->zzXZ:Lcom/google/android/gms/internal/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkl;->zza(Lcom/google/android/gms/internal/zzkl;)V

    return-void
.end method
