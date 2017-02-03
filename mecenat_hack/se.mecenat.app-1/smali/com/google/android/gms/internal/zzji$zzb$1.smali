.class Lcom/google/android/gms/internal/zzji$zzb$1;
.super Lcom/google/android/gms/internal/zzjk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji$zzb;->zza(Lcom/google/android/gms/internal/zzjj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQj:Lcom/google/android/gms/internal/zzji$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$zzb$1;->zzQj:Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjk$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzb$1;->zzQj:Lcom/google/android/gms/internal/zzji$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzji$zzb;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
