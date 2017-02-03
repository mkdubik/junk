.class public Lcom/google/android/gms/internal/zzgx;
.super Lcom/google/android/gms/ads/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/zzhb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field private zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

.field private zzGh:Ljava/lang/String;

.field private zzGi:Z

.field private zzGj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzgy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgy;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzei;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to destroy adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqd:Lcom/google/android/gms/internal/zzhq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqe:Lcom/google/android/gms/internal/zzhq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGi:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzgx;->zza(Lcom/google/android/gms/internal/zzhj;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRewardedVideoStarted()V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbJ()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzIz:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->zzpZ:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzhj;->zzyQ:Lcom/google/android/gms/internal/zzdz;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzdz;->zzys:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzhj;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onVideoStarted()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgy;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzei;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to pause adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgy;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzei;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to resume adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const-string v0, "setUserId must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgx;->zzGh:Ljava/lang/String;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzpZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzpZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzpZ:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzDy:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .locals 1

    const-string v0, "setRewardedVideoAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbJ()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzIz:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->zzpZ:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzhj;->zzyQ:Lcom/google/android/gms/internal/zzdz;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzdz;->zzyt:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzhj;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhj;->zzGG:Lcom/google/android/gms/internal/zzea;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhj;->zzGG:Lcom/google/android/gms/internal/zzea;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzea;->zzyB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzgv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhj;->zzGG:Lcom/google/android/gms/internal/zzea;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzea;->zzyB:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhj;->zzGG:Lcom/google/android/gms/internal/zzea;

    iget v3, v3, Lcom/google/android/gms/internal/zzea;->zzyC:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzgv;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewarded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzgv;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->type:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzGE:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzgv;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhj$zza;Lcom/google/android/gms/internal/zzcd;)V
    .locals 4

    iget v0, p1, Lcom/google/android/gms/internal/zzhj$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzhu;->zzHK:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzgx$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzgx$1;-><init>(Lcom/google/android/gms/internal/zzgx;Lcom/google/android/gms/internal/zzhj$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v1, Lcom/google/android/gms/internal/zzhe;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgx;->zzGh:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1, p0}, Lcom/google/android/gms/internal/zzhe;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzhj$zza;Lcom/google/android/gms/internal/zzgx;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqe:Lcom/google/android/gms/internal/zzhq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->zzqe:Lcom/google/android/gms/internal/zzhq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqe:Lcom/google/android/gms/internal/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhq;->zzgn()Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhj;Lcom/google/android/gms/internal/zzhj;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzar(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgy;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgy;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzgy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgx;->zzow:Lcom/google/android/gms/internal/zzeh;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzeh;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/zzei;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/zzgy;-><init>(Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzhb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGj:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to instantiate adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method protected zze(I)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaE(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGg:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call RewardedVideoAdListener.onAdFailedToLoad()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzfO()V
    .locals 2

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgx;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaE(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzos:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Lcom/google/android/gms/internal/zzhj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhj;->zzyS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgx;->zzar(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgy;->zzfQ()Lcom/google/android/gms/internal/zzei;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzei;->showVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzfP()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgx;->onAdClicked()V

    return-void
.end method
