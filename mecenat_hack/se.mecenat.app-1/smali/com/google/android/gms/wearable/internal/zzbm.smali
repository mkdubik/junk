.class final Lcom/google/android/gms/wearable/internal/zzbm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzbm$zzb;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzo;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzs;,
        Lcom/google/android/gms/wearable/internal/zzbm$zza;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzf;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzg;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzr;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzu;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzi;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzh;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzd;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzc;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzp;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzt;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzq;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzn;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzm;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzl;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzk;,
        Lcom/google/android/gms/wearable/internal/zzbm$zzj;,
        Lcom/google/android/gms/wearable/internal/zzbm$zze;
    }
.end annotation


# direct methods
.method private static zzv(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/CapabilityInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/wearable/internal/zzi$zzc;

    invoke-direct {v4, v0}, Lcom/google/android/gms/wearable/internal/zzi$zzc;-><init>(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic zzw(Ljava/util/List;)Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/wearable/internal/zzbm;->zzv(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
