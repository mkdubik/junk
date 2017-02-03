.class public final Lcom/google/android/gms/internal/zzoq;
.super Lcom/google/android/gms/internal/zzod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzod",
        "<",
        "Lcom/google/android/gms/internal/zzoq;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaIF:Ljava/lang/String;

.field private zzaIG:I

.field private zzaIH:I

.field private zzaII:Ljava/lang/String;

.field private zzaIJ:Ljava/lang/String;

.field private zzaIK:Z

.field private zzaIL:Z

.field private zzaIM:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzoq;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzoq;->zzxS()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzoq;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzbD(I)I

    iput p2, p0, Lcom/google/android/gms/internal/zzoq;->zzaIG:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaIL:Z

    return-void
.end method

.method static zzxS()I
    .locals 6

    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-nez v0, :cond_0

    const-string v0, "GAv4"

    const-string v1, "UUID.randomUUID() returned 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private zzxZ()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIM:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenViewInfo is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public isMutable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoq;->zzxZ()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaIF:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoq;->zzaIF:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzoq;->zzaIK:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzoq;->zzaIL:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzoq;->zzaIG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzoq;->zzaIH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoq;->zzaII:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoq;->zzaIJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoq;->zzA(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zza(Lcom/google/android/gms/internal/zzod;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzoq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoq;->zzc(Lcom/google/android/gms/internal/zzoq;)V

    return-void
.end method

.method public zzal(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoq;->zzxZ()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaIL:Z

    return-void
.end method

.method public zzam(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoq;->zzxZ()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaIK:Z

    return-void
.end method

.method public zzbp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIG:I

    return v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzoq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->setScreenName(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIG:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIG:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzhS(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIH:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIH:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzhT(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaII:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaII:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzdU(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzdV(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIK:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIK:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzam(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIL:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIL:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzoq;->zzal(Z)V

    :cond_6
    return-void
.end method

.method public zzdU(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoq;->zzxZ()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaII:Ljava/lang/String;

    return-void
.end method

.method public zzdV(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoq;->zzxZ()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIJ:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaIJ:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzhS(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoq;->zzxZ()V

    iput p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaIG:I

    return-void
.end method

.method public zzhT(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoq;->zzxZ()V

    iput p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaIH:I

    return-void
.end method

.method public zzxT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIF:Ljava/lang/String;

    return-object v0
.end method

.method public zzxU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIH:I

    return v0
.end method

.method public zzxV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaII:Ljava/lang/String;

    return-object v0
.end method

.method public zzxW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIJ:Ljava/lang/String;

    return-object v0
.end method

.method public zzxX()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIM:Z

    return-void
.end method

.method public zzxY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaIK:Z

    return v0
.end method
