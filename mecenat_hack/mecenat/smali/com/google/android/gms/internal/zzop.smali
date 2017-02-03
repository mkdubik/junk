.class public final Lcom/google/android/gms/internal/zzop;
.super Lcom/google/android/gms/internal/zzod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzod",
        "<",
        "Lcom/google/android/gms/internal/zzop;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaIE:Z

.field public zzaoB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop;->zzaoB:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzop;->zzaoB:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzop;->zzaoB:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fatal"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzop;->zzaIE:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzop;->zzA(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzod;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzop;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzop;->zza(Lcom/google/android/gms/internal/zzop;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzop;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop;->zzaoB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop;->zzaoB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzop;->setDescription(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzop;->zzaIE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzop;->zzaIE:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzop;->zzak(Z)V

    :cond_1
    return-void
.end method

.method public zzak(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzop;->zzaIE:Z

    return-void
.end method

.method public zzxR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzop;->zzaIE:Z

    return v0
.end method
