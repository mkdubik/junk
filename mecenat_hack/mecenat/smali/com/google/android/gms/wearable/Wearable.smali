.class public Lcom/google/android/gms/wearable/Wearable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/Wearable$WearableOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

.field public static final ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

.field public static final DataApi:Lcom/google/android/gms/wearable/DataApi;

.field public static final MessageApi:Lcom/google/android/gms/wearable/MessageApi;

.field public static final NodeApi:Lcom/google/android/gms/wearable/NodeApi;

.field public static final zzQf:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzbn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzQg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzbn;",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaYX:Lcom/google/android/gms/wearable/zzc;

.field public static final zzaYY:Lcom/google/android/gms/wearable/zza;

.field public static final zzaYZ:Lcom/google/android/gms/wearable/zzf;

.field public static final zzaZa:Lcom/google/android/gms/wearable/zzi;

.field public static final zzaZb:Lcom/google/android/gms/wearable/zzk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzba;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzaYX:Lcom/google/android/gms/wearable/zzc;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzaYY:Lcom/google/android/gms/wearable/zza;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzaYZ:Lcom/google/android/gms/wearable/zzf;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbl;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzaZa:Lcom/google/android/gms/wearable/zzi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbp;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbp;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzaZb:Lcom/google/android/gms/wearable/zzk;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/wearable/Wearable$1;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/Wearable$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Wearable.API"

    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
