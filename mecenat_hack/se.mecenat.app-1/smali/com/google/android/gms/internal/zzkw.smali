.class public final Lcom/google/android/gms/internal/zzkw;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQf:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzla;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzQg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzla;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaet:Lcom/google/android/gms/internal/zzkx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkw;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzkw$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkw$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkw;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Common.API"

    sget-object v2, Lcom/google/android/gms/internal/zzkw;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzkw;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/internal/zzkw;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzky;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkw;->zzaet:Lcom/google/android/gms/internal/zzkx;

    return-void
.end method
