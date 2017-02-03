.class Lcom/google/android/gms/internal/zzpw$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private zzQA:Lcom/google/android/gms/common/api/Status;

.field private zzaNB:Ljava/lang/String;

.field private final zzaNL:Lcom/google/android/gms/safetynet/SafeBrowsingData;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzQA:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzaNL:Lcom/google/android/gms/safetynet/SafeBrowsingData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzaNB:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzaNL:Lcom/google/android/gms/safetynet/SafeBrowsingData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzaNL:Lcom/google/android/gms/safetynet/SafeBrowsingData;

    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->getMetadata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzaNB:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzQA:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method


# virtual methods
.method public getMetadata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzaNB:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd;->zzQA:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
