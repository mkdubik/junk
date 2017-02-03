.class final Lcom/google/android/gms/internal/zzpc$zzd;
.super Lcom/google/android/gms/internal/zzpc$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzd"
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

.field private final zzaJp:Lcom/google/android/gms/common/api/zzl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/common/api/zzl;Lcom/google/android/gms/common/api/zzl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;",
            "Lcom/google/android/gms/common/api/zzl",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzpc$zzb;-><init>(Lcom/google/android/gms/common/api/zzl;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpc$zzd;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpc$zzd;->zzaJp:Lcom/google/android/gms/common/api/zzl;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc$zzd;->zzaJp:Lcom/google/android/gms/common/api/zzl;

    new-instance v1, Lcom/google/android/gms/internal/zzpc$zzd$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzpc$zzd$1;-><init>(Lcom/google/android/gms/internal/zzpc$zzd;Ljava/lang/String;I[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzl;->zza(Lcom/google/android/gms/common/api/zzl$zzb;)V

    return-void
.end method

.method public zzih(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc$zzd;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
