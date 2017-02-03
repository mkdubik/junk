.class public Lcom/google/android/gms/ads/internal/client/zzy;
.super Ljava/lang/Object;


# instance fields
.field private final zznK:Lcom/google/android/gms/ads/internal/client/zzg;

.field private zzoM:Z

.field private zzoZ:Ljava/lang/String;

.field private zzsK:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzsL:[Lcom/google/android/gms/ads/AdSize;

.field private zzsn:Lcom/google/android/gms/ads/internal/client/zza;

.field private zzso:Lcom/google/android/gms/ads/AdListener;

.field private final zztk:Lcom/google/android/gms/internal/zzeg;

.field private final zztl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zztm:Lcom/google/android/gms/ads/internal/client/zzr;

.field private zztn:Ljava/lang/String;

.field private zzto:Landroid/view/ViewGroup;

.field private zztp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zztq:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zztr:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzg;->zzcA()Lcom/google/android/gms/ads/internal/client/zzg;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzy;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzg;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzg;->zzcA()Lcom/google/android/gms/ads/internal/client/zzg;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/client/zzy;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzg;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzg;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzy;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzg;Lcom/google/android/gms/ads/internal/client/zzr;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzg;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztk:Lcom/google/android/gms/internal/zzeg;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzto:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zznK:Lcom/google/android/gms/ads/internal/client/zzg;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztl:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzj;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/client/zzj;->zzi(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzj;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoZ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcE()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    aget-object v3, v3, v4

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    const-string v1, "Ads by Google"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcE()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzcR()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zzaM()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzto:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzso:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzcC()Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoZ:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsK:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztr:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public isLoading()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->isLoading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordManualImpression()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zzaP()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/google/android/gms/ads/AdListener;

    .prologue
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzso:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/zzn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1, "adSizes"    # [Lcom/google/android/gms/ads/AdSize;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzy;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoZ:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2
    .param p1, "appEventListener"    # Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .prologue
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsK:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzi;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/zzt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 2
    .param p1, "inAppPurchaseListener"    # Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztq:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzfr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfr;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/internal/zzfm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 2
    .param p1, "manualImpressionsEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoM:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoM:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2
    .param p1, "onCustomRenderedAdLoadedListener"    # Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztr:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzci;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzci;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/internal/zzch;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "playStorePurchaseListener"    # Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztq:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzfv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfv;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/internal/zzfq;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsn:Lcom/google/android/gms/ads/internal/client/zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzy;->zzcS()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zznK:Lcom/google/android/gms/ads/internal/client/zzg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzto:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztk:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzx;->zzcN()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeg;->zze(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzto:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzto:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method zzcS()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoZ:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzy;->zzcT()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzso:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzso:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/zzn;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsn:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsn:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsK:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsK:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzi;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/zzt;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/internal/zzfr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzfr;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/internal/zzfm;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztq:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/internal/zzfv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztq:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzfv;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/internal/zzfq;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztr:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/internal/zzci;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztr:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzci;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/internal/zzch;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcG()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zza(Lcom/google/android/gms/ads/internal/client/zzu;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztm:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoM:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->setManualImpressionsEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzy;->zzcR()V

    return-void
.end method

.method protected zzcT()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzto:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcF()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsL:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztk:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/client/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    return-object v0
.end method
