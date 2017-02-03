.class public Lcom/google/android/gms/internal/zzck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAd$Image;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mUri:Landroid/net/Uri;

.field private final zzww:Lcom/google/android/gms/internal/zzcj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcj;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzck;->zzww:Lcom/google/android/gms/internal/zzcj;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzck;->zzww:Lcom/google/android/gms/internal/zzcj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcj;->zzdr()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzck;->mDrawable:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzck;->zzww:Lcom/google/android/gms/internal/zzcj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcj;->getUri()Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzck;->mUri:Landroid/net/Uri;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Failed to get drawable."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Failed to get uri."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzck;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzck;->mUri:Landroid/net/Uri;

    return-object v0
.end method
