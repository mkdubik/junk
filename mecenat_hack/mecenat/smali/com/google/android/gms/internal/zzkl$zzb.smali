.class abstract Lcom/google/android/gms/internal/zzkl$zzb;
.super Lcom/google/android/gms/common/api/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkl$zzb$zzb;,
        Lcom/google/android/gms/internal/zzkl$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc$zza",
        "<",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
        "Lcom/google/android/gms/internal/zzkm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzXZ:Lcom/google/android/gms/internal/zzkl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkl$zzb;->zzXZ:Lcom/google/android/gms/internal/zzkl;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkl;->zzc(Lcom/google/android/gms/internal/zzkl;)Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/zzc$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkl$zzb;->zzv(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzv(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzkl$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzkl$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
