.class public final Lcom/google/android/gms/nearby/Nearby;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Connections:Lcom/google/android/gms/nearby/connection/Connections;

.field public static final MESSAGES_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessagesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Messages:Lcom/google/android/gms/nearby/messages/Messages;

.field public static final zzaIT:Lcom/google/android/gms/nearby/messages/zzc;

.field public static final zzaIU:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaIV:Lcom/google/android/gms/nearby/sharing/zzd;

.field public static final zzaIW:Lcom/google/android/gms/nearby/sharing/zze;

.field public static final zzaIX:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaIY:Lcom/google/android/gms/nearby/bootstrap/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.CONNECTIONS_API"

    sget-object v2, Lcom/google/android/gms/internal/zzpd;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzpd;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzpd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpd;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->Connections:Lcom/google/android/gms/nearby/connection/Connections;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.MESSAGES_API"

    sget-object v2, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->MESSAGES_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->Messages:Lcom/google/android/gms/nearby/messages/Messages;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaIT:Lcom/google/android/gms/nearby/messages/zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.SHARING_API"

    sget-object v2, Lcom/google/android/gms/nearby/sharing/internal/zzh;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/nearby/sharing/internal/zzh;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaIU:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/nearby/sharing/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/sharing/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaIV:Lcom/google/android/gms/nearby/sharing/zzd;

    new-instance v0, Lcom/google/android/gms/nearby/sharing/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/sharing/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaIW:Lcom/google/android/gms/nearby/sharing/zze;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.BOOTSTRAP_API"

    sget-object v2, Lcom/google/android/gms/internal/zzov;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzov;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaIX:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzov;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzov;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaIY:Lcom/google/android/gms/nearby/bootstrap/zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
