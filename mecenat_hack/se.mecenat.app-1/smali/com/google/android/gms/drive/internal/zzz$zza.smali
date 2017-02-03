.class Lcom/google/android/gms/drive/internal/zzz$zza;
.super Lcom/google/android/gms/drive/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/zzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private final zzQz:Lcom/google/android/gms/common/api/zzc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzaiX:Lcom/google/android/gms/drive/internal/zzz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzz$zza;->zzaiX:Lcom/google/android/gms/drive/internal/zzz;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/zzz$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/drive/internal/zzz$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzz$zza;-><init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/zzc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/internal/OnDeviceUsagePreferenceResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzz$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzz$zzb;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzz$zza;->zzaiX:Lcom/google/android/gms/drive/internal/zzz;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzaaD:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDeviceUsagePreferenceResponse;->zzqP()Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/drive/internal/zzz$zzb;-><init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/drive/internal/zzz$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzz$zza;->zzQz:Lcom/google/android/gms/common/api/zzc$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzz$zzb;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzz$zza;->zzaiX:Lcom/google/android/gms/drive/internal/zzz;

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/google/android/gms/drive/internal/zzz$zzb;-><init>(Lcom/google/android/gms/drive/internal/zzz;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/drive/internal/zzz$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzn(Ljava/lang/Object;)V

    return-void
.end method
