.class public Lcom/google/android/gms/analytics/internal/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzp;


# instance fields
.field public zzNT:Ljava/lang/String;

.field public zzNU:Ljava/lang/String;

.field public zzNV:Ljava/lang/String;

.field public zzNW:I

.field public zzNX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNW:I

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNX:I

    return-void
.end method


# virtual methods
.method public zzjY()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNT:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzjZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNT:Ljava/lang/String;

    return-object v0
.end method

.method public zzka()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNU:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNU:Ljava/lang/String;

    return-object v0
.end method

.method public zzkc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNV:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNV:Ljava/lang/String;

    return-object v0
.end method

.method public zzke()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNW:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNW:I

    return v0
.end method

.method public zzkg()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkh()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzNX:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
