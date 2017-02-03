.class public final Lcom/google/android/gms/internal/zzjb;
.super Lcom/google/android/gms/internal/zzod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzod",
        "<",
        "Lcom/google/android/gms/internal/zzjb;",
        ">;"
    }
.end annotation


# instance fields
.field private zzGh:Ljava/lang/String;

.field private zzLc:Ljava/lang/String;

.field private zzLd:Ljava/lang/String;

.field private zzLe:Ljava/lang/String;

.field private zzLf:Z

.field private zzLg:Ljava/lang/String;

.field private zzLh:Z

.field private zzLi:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLd:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzGh:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb;->zzLd:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(D)V
    .locals 3
    .param p1, "percentage"    # D

    .prologue
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Sample rate must be between 0% and 100%"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzjb;->zzLi:D

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb;->zzGh:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzLc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzLd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzGh:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzLe:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjb;->zzLf:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzLg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjb;->zzLh:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjb;->zzLi:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjb;->zzA(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjb;->zzLf:Z

    return-void
.end method

.method public zzH(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjb;->zzLh:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzjb;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjb;->zzaS(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjb;->setClientId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzGh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzGh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjb;->setUserId(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLe:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjb;->zzaT(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLf:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjb;->zzG(Z)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjb;->zzaU(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLh:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLh:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjb;->zzH(Z)V

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLi:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLi:D

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->setSampleRate(D)V

    :cond_7
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzod;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjb;->zza(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method public zzaS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb;->zzLc:Ljava/lang/String;

    return-void
.end method

.method public zzaT(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb;->zzLe:Ljava/lang/String;

    return-void
.end method

.method public zzaU(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb;->zzLg:Ljava/lang/String;

    return-void
.end method

.method public zzhK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLc:Ljava/lang/String;

    return-object v0
.end method

.method public zzhL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLe:Ljava/lang/String;

    return-object v0
.end method

.method public zzhM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLf:Z

    return v0
.end method

.method public zzhN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLg:Ljava/lang/String;

    return-object v0
.end method

.method public zzhO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLh:Z

    return v0
.end method

.method public zzhP()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjb;->zzLi:D

    return-wide v0
.end method
