.class public final Lcom/google/android/gms/auth/api/Auth;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;,
        Lcom/google/android/gms/auth/api/Auth$zza;
    }
.end annotation


# static fields
.field public static final CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

.field public static final PROXY_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/auth/api/Auth$zza;",
            ">;"
        }
    .end annotation
.end field

.field public static final ProxyApi:Lcom/google/android/gms/auth/api/proxy/ProxyApi;

.field public static final zzQL:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzjw;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQM:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/internal/zze;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQN:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzjs;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQO:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzQP:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzjw;",
            "Lcom/google/android/gms/auth/api/Auth$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzQQ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/internal/zze;",
            "Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzQR:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzjs;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzQS:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/zzd;",
            "Lcom/google/android/gms/auth/api/signin/zze;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQT:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/auth/api/signin/zze;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQU:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQV:Lcom/google/android/gms/internal/zzjq;

.field public static final zzQW:Lcom/google/android/gms/auth/api/signin/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQL:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQM:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQN:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQO:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/auth/api/Auth$1;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/Auth$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQP:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/auth/api/Auth$2;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/Auth$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQQ:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/auth/api/Auth$3;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/Auth$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQR:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/auth/api/Auth$4;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/Auth$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQS:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Auth.PROXY_API"

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->zzQP:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/auth/api/Auth;->zzQL:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->PROXY_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Auth.CREDENTIALS_API"

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->zzQQ:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/auth/api/Auth;->zzQM:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Auth.SIGN_IN_API"

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->zzQS:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/auth/api/Auth;->zzQO:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQT:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Auth.ACCOUNT_STATUS_API"

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->zzQR:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/auth/api/Auth;->zzQN:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQU:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzka;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->ProxyApi:Lcom/google/android/gms/auth/api/proxy/ProxyApi;

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    new-instance v0, Lcom/google/android/gms/internal/zzjr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjr;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQV:Lcom/google/android/gms/internal/zzjq;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzQW:Lcom/google/android/gms/auth/api/signin/zzd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
