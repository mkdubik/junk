.class public Lcom/google/android/gms/auth/api/signin/internal/zzd;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/auth/api/signin/internal/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzRS:Lcom/google/android/gms/auth/api/signin/zze;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/auth/api/signin/zze;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x57

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/zze;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzRS:Lcom/google/android/gms/auth/api/signin/zze;

    return-void
.end method


# virtual methods
.method protected synthetic zzV(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzaz(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzaz(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzb;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzb$zza;->zzay(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzfA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.service.START"

    return-object v0
.end method

.method protected zzfB()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    return-object v0
.end method
