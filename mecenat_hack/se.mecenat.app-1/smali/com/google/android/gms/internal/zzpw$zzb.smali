.class abstract Lcom/google/android/gms/internal/zzpw$zzb;
.super Lcom/google/android/gms/internal/zzpt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpt",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzaNI:Lcom/google/android/gms/internal/zzpu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzpw$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpw$zzb$1;-><init>(Lcom/google/android/gms/internal/zzpw$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb;->zzaNI:Lcom/google/android/gms/internal/zzpu;

    return-void
.end method


# virtual methods
.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpw$zzb;->zzba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzpw$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzpw$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/AttestationData;)V

    return-object v0
.end method
