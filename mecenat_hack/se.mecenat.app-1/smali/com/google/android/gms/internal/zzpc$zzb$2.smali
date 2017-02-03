.class Lcom/google/android/gms/internal/zzpc$zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpc$zzb;->onDisconnected(Ljava/lang/String;)V
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

.field final synthetic zzaJn:Lcom/google/android/gms/internal/zzpc$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpc$zzb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpc$zzb$2;->zzaJn:Lcom/google/android/gms/internal/zzpc$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpc$zzb$2;->zzaJl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc$zzb$2;->zzaJl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method public zznh()V
    .locals 0

    return-void
.end method

.method public synthetic zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpc$zzb$2;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V

    return-void
.end method
