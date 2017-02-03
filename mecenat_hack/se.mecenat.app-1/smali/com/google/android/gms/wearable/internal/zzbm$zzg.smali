.class final Lcom/google/android/gms/wearable/internal/zzbm$zzg;
.super Lcom/google/android/gms/wearable/internal/zzbm$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzbm$zzb",
        "<",
        "Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;",
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
            "Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzb;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/GetCapabilityResponse;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzi$zze;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/GetCapabilityResponse;->statusCode:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzbj;->zzfx(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzi$zzc;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/GetCapabilityResponse;->zzbas:Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;

    invoke-direct {v2, v3}, Lcom/google/android/gms/wearable/internal/zzi$zzc;-><init>(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzi$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/CapabilityInfo;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzbm$zzg;->zzR(Ljava/lang/Object;)V

    return-void
.end method
