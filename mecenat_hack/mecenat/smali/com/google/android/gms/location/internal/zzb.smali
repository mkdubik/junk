.class public Lcom/google/android/gms/location/internal/zzb;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/location/internal/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field protected final zzaCs:Lcom/google/android/gms/location/internal/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/location/internal/zzn",
            "<",
            "Lcom/google/android/gms/location/internal/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaCy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/location/internal/zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/zzb$1;-><init>(Lcom/google/android/gms/location/internal/zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzb;->zzaCs:Lcom/google/android/gms/location/internal/zzn;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/zzb;->zzaCy:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/location/internal/zzb;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzb;->zzoz()V

    return-void
.end method


# virtual methods
.method protected synthetic zzV(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzb;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method protected zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzg;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/internal/zzg$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method protected zzfA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected zzfB()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected zzli()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzb;->zzaCy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
