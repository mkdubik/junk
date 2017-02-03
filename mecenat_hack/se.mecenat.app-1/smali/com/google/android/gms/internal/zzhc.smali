.class public Lcom/google/android/gms/internal/zzhc;
.super Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field private zzGq:Lcom/google/android/gms/internal/zzhd;

.field private zzGw:Lcom/google/android/gms/internal/zzha;

.field private zzGx:Lcom/google/android/gms/internal/zzhb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzhb;->zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzha;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzGw:Lcom/google/android/gms/internal/zzha;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzGq:Lcom/google/android/gms/internal/zzhd;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGw:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGw:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzha;->zzJ(I)V

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGq:Lcom/google/android/gms/internal/zzhd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGq:Lcom/google/android/gms/internal/zzhd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzhd;->zzb(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public zzg(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGw:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGw:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->zzfS()V

    :cond_0
    return-void
.end method

.method public zzh(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGq:Lcom/google/android/gms/internal/zzhd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGq:Lcom/google/android/gms/internal/zzhd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhd;->zzas(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzi(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhb;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public zzj(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhb;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

.method public zzk(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhb;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public zzl(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhb;->zzfP()V

    :cond_0
    return-void
.end method

.method public zzm(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzGx:Lcom/google/android/gms/internal/zzhb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhb;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method
