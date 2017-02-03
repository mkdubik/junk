.class public abstract Lcom/google/android/gms/internal/zzkd$zza;
.super Lcom/google/android/gms/internal/zzkd$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzkd$zzb",
        "<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzWd:Lcom/google/android/gms/internal/zzkd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkd;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzWd:Lcom/google/android/gms/internal/zzkd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkd$zzb;-><init>(Lcom/google/android/gms/internal/zzkd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzkd$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzkd$zza$1;-><init>(Lcom/google/android/gms/internal/zzkd$zza;Lcom/google/android/gms/internal/zzkd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzVC:Lcom/google/android/gms/cast/internal/zzo;

    return-void
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkd$zza;->zzt(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object v0

    return-object v0
.end method

.method public zzt(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    const/4 v3, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzkd$zze;

    const-wide/16 v4, -0x1

    move-object v2, p1

    move-object v6, v3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzkd$zze;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v1
.end method
