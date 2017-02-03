.class final Lcom/google/android/gms/wearable/internal/zzbm$zzr;
.super Lcom/google/android/gms/wearable/internal/zzbm$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzbm$zzb",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzb;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/ChannelSendFileResponse;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/ChannelSendFileResponse;->statusCode:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzbm$zzr;->zzR(Ljava/lang/Object;)V

    return-void
.end method
