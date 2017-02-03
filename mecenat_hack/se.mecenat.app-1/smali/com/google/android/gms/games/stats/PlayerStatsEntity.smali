.class public Lcom/google/android/gms/games/stats/PlayerStatsEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/stats/PlayerStats;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/stats/PlayerStatsEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzazA:I

.field private final zzazB:F

.field private final zzazC:F

.field private final zzazw:F

.field private final zzazx:F

.field private final zzazy:I

.field private final zzazz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IFFIIIFF)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "averageSessionLength"    # F
    .param p3, "churnProbability"    # F
    .param p4, "daysSinceLastPlayed"    # I
    .param p5, "numberOfPurchases"    # I
    .param p6, "numberOfSessions"    # I
    .param p7, "sessionPercentile"    # F
    .param p8, "spendPercentile"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazw:F

    iput p3, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazx:F

    iput p4, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazy:I

    iput p5, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazz:I

    iput p6, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazA:I

    iput p7, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazB:F

    iput p8, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazC:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/stats/PlayerStats;)V
    .locals 1
    .param p1, "playerStats"    # Lcom/google/android/gms/games/stats/PlayerStats;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvd()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazw:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzve()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazx:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvf()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazy:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvg()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazz:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvh()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazA:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvi()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazB:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvj()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazC:F

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/stats/PlayerStats;)I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvd()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzve()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvg()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvh()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvi()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvj()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/stats/PlayerStats;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/stats/PlayerStats;

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvd()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvd()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzve()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzve()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvg()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvh()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvh()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvi()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvi()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvj()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvj()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "AverageSessionLength"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvd()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "ChurnProbability"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzve()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "DaysSinceLastPlayed"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "NumberOfPurchases"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvg()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "NumberOfSessions"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvh()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "SessionPercentile"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvi()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "SpendPercentile"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->zzvj()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzvk()Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;->zza(Lcom/google/android/gms/games/stats/PlayerStatsEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzvd()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazw:F

    return v0
.end method

.method public zzve()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazx:F

    return v0
.end method

.method public zzvf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazy:I

    return v0
.end method

.method public zzvg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazz:I

    return v0
.end method

.method public zzvh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazA:I

    return v0
.end method

.method public zzvi()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazB:F

    return v0
.end method

.method public zzvj()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzazC:F

    return v0
.end method

.method public zzvk()Lcom/google/android/gms/games/stats/PlayerStats;
    .locals 0

    return-object p0
.end method
