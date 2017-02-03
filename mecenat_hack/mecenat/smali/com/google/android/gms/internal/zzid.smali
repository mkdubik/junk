.class public final Lcom/google/android/gms/internal/zzid;
.super Ljava/lang/Object;


# instance fields
.field private zzIs:Landroid/app/Activity;

.field private zzIt:Z

.field private zzIu:Z

.field private zzIv:Z

.field private zzIw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzIx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzid;->zzIw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzid;->zzIx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private zzgF()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIt:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzIw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzid;->zzIw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhu;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzIx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzid;->zzIx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhu;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIt:Z

    goto :goto_0
.end method

.method private zzgG()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzIw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbz()Lcom/google/android/gms/internal/zzhv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzid;->zzIw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhv;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzIx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzid;->zzIx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhu;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIt:Z

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIu:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIv:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->zzgF()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIu:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->zzgG()V

    return-void
.end method

.method public zzgD()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIv:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIu:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->zzgF()V

    :cond_0
    return-void
.end method

.method public zzgE()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzid;->zzIv:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->zzgG()V

    return-void
.end method

.method public zzl(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzid;->zzIs:Landroid/app/Activity;

    return-void
.end method
