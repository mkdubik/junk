.class public final Lcom/google/android/gms/internal/zzce;
.super Lcom/google/android/gms/internal/zzcg$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field private final zzvv:Lcom/google/android/gms/ads/internal/zzg;

.field private final zzvw:Ljava/lang/String;

.field private final zzvx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcg$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzce;->zzvv:Lcom/google/android/gms/ads/internal/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzce;->zzvw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzce;->zzvx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzvx:Ljava/lang/String;

    return-object v0
.end method

.method public recordClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzvv:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->recordClick()V

    return-void
.end method

.method public recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzvv:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->recordImpression()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzce;->zzvv:Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/zzg;->zzc(Landroid/view/View;)V

    goto :goto_0
.end method

.method public zzdp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzvw:Ljava/lang/String;

    return-object v0
.end method
