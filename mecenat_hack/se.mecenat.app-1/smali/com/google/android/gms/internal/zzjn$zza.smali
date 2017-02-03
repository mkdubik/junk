.class final Lcom/google/android/gms/internal/zzjn$zza;
.super Lcom/google/android/gms/internal/zzjm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzjn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# instance fields
.field private final zzQz:Lcom/google/android/gms/common/api/zzc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjm;-><init>()V

    const-string v0, "Result holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    return-void
.end method


# virtual methods
.method public zzg(II)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    new-instance v2, Lcom/google/android/gms/internal/zzjn$zzb;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/zzjn$zzb;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
