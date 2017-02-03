.class Lcom/google/android/gms/common/api/zzi$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaap:Lcom/google/android/gms/common/api/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzi$3;->zzaap:Lcom/google/android/gms/common/api/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzi$3;->zzaap:Lcom/google/android/gms/common/api/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzi;->isConnected()Z

    move-result v0

    return v0
.end method

.method public zzmw()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
