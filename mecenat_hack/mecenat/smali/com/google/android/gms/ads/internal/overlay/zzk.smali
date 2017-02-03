.class public Lcom/google/android/gms/ads/internal/overlay/zzk;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field private final zzBb:Landroid/widget/FrameLayout;

.field private final zzBc:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private zzBe:Z

.field private zzBf:Z

.field private zzBg:Landroid/widget/TextView;

.field private zzBh:J

.field private zzBi:J

.field private zzBj:Ljava/lang/String;

.field private final zzoL:Lcom/google/android/gms/internal/zzip;

.field private zzxs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzip;ILcom/google/android/gms/internal/zzcd;Lcom/google/android/gms/internal/zzcc;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoL:Lcom/google/android/gms/internal/zzip;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->addView(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzip;->zzgP()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzr(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzip;->zzgP()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzd;->zzoG:Lcom/google/android/gms/ads/internal/overlay/zzj;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzip;ILcom/google/android/gms/internal/zzcd;Lcom/google/android/gms/internal/zzcc;)Lcom/google/android/gms/ads/internal/overlay/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBg:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeS()V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBc:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBc:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzfa()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza(Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    return-void
.end method

.method private varargs zza(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, p2, v2

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoL:Lcom/google/android/gms/internal/zzip;

    const-string v1, "onVideoEvent"

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/zzip;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzip;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/zzip;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private zzeS()V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeU()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBg:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private zzeT()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private zzeU()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzeV()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoL:Lcom/google/android/gms/internal/zzip;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzip;->zzgN()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBe:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoL:Lcom/google/android/gms/internal/zzip;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzip;->zzgN()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBf:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoL:Lcom/google/android/gms/internal/zzip;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzip;->zzgN()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBe:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private zzeW()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoL:Lcom/google/android/gms/internal/zzip;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzip;->zzgN()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBe:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoL:Lcom/google/android/gms/internal/zzip;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzip;->zzgN()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBe:Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBc:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->stop()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeW()V

    return-void
.end method

.method public onPaused()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeW()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->play()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "millis"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->seekTo(I)V

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBj:Ljava/lang/String;

    return-void
.end method

.method public zza(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza(F)V

    return-void
.end method

.method public zzak(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzxs:Ljava/lang/String;

    return-void
.end method

.method public zzd(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public zze(IIII)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    add-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p4, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->requestLayout()V

    goto :goto_0
.end method

.method public zzeK()V
    .locals 0

    return-void
.end method

.method public zzeL()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getVideoHeight()I

    move-result v2

    const-string v3, "canplaythrough"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "videoWidth"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzeM()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeV()V

    return-void
.end method

.method public zzeN()V
    .locals 2

    const-string v0, "ended"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeW()V

    return-void
.end method

.method public zzeO()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeS()V

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBh:J

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBi:J

    return-void
.end method

.method public zzeP()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzxs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->setMimeType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzxs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->setVideoPath(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "no_src"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzeQ()V
    .locals 5

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBb:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method zzeR()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBh:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzeT()V

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const-string v3, "timeupdate"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBh:J

    :cond_0
    return-void
.end method

.method public zzeq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzeq()V

    return-void
.end method

.method public zzer()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzBd:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzer()V

    return-void
.end method

.method public zzh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "what"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "extra"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
