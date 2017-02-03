.class final Lcom/google/android/gms/wearable/internal/zzbm$zzk;
.super Lcom/google/android/gms/wearable/internal/zzbm$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzbm$zzb",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
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
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzb;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/GetDataItemResponse;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzw$zzb;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;->statusCode:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzbj;->zzfx(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;->zzbaA:Lcom/google/android/gms/wearable/internal/DataItemParcelable;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzw$zzb;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzbm$zzk;->zzR(Ljava/lang/Object;)V

    return-void
.end method
