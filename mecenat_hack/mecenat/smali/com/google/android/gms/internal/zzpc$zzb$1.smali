.class Lcom/google/android/gms/internal/zzpc$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpc$zzb;->onMessageReceived(Ljava/lang/String;[BZ)V
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
        "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaJl:Ljava/lang/String;

.field final synthetic zzaJm:Z

.field final synthetic zzaJn:Lcom/google/android/gms/internal/zzpc$zzb;

.field final synthetic zzavP:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpc$zzb;Ljava/lang/String;[BZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpc$zzb$1;->zzaJn:Lcom/google/android/gms/internal/zzpc$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpc$zzb$1;->zzaJl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpc$zzb$1;->zzavP:[B

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzpc$zzb$1;->zzaJm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc$zzb$1;->zzaJl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc$zzb$1;->zzavP:[B

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpc$zzb$1;->zzaJm:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    return-void
.end method

.method public zznh()V
    .locals 0

    return-void
.end method

.method public synthetic zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpc$zzb$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V

    return-void
.end method
