.class Lcom/google/android/gms/internal/zzpc$zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpc$zzd;->zza(Ljava/lang/String;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/zzl$zzb",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzXm:I

.field final synthetic zzaJl:Ljava/lang/String;

.field final synthetic zzaJq:Lcom/google/android/gms/internal/zzpc$zzd;

.field final synthetic zzavP:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpc$zzd;Ljava/lang/String;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpc$zzd$1;->zzaJq:Lcom/google/android/gms/internal/zzpc$zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpc$zzd$1;->zzaJl:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzpc$zzd$1;->zzXm:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpc$zzd$1;->zzavP:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc$zzd$1;->zzaJl:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget v2, p0, Lcom/google/android/gms/internal/zzpc$zzd$1;->zzXm:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpc$zzd$1;->zzavP:[B

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method

.method public zznh()V
    .locals 0

    return-void
.end method

.method public synthetic zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpc$zzd$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V

    return-void
.end method
