.class abstract Lcom/google/android/gms/internal/zzpr$zza;
.super Lcom/google/android/gms/plus/Plus$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/plus/Plus$zza",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpr$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzaZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpr$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzpr$zza$1;-><init>(Lcom/google/android/gms/internal/zzpr$zza;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzaZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;

    move-result-object v0

    return-object v0
.end method
