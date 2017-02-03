.class public Lcom/google/android/gms/nearby/messages/Strategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    }
.end annotation


# static fields
.field public static final BLE_ONLY:Lcom/google/android/gms/nearby/messages/Strategy;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

.field public static final DISCOVERY_MODE_BROADCAST:I = 0x1

.field public static final DISCOVERY_MODE_DEFAULT:I = 0x3

.field public static final DISCOVERY_MODE_SCAN:I = 0x2

.field public static final DISTANCE_TYPE_DEFAULT:I = 0x0

.field public static final DISTANCE_TYPE_EARSHOT:I = 0x1

.field public static final TTL_SECONDS_DEFAULT:I = 0x12c

.field public static final TTL_SECONDS_INFINITE:I = 0x7fffffff

.field public static final TTL_SECONDS_MAX:I = 0x15180

.field public static final zzaJK:Lcom/google/android/gms/nearby/messages/Strategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field final zzaJL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzaJM:I

.field final zzaJN:I

.field final zzaJO:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzaJP:I

.field final zzaJQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->build()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

    new-instance v0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzim(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->setTtlSeconds(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->build()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->BLE_ONLY:Lcom/google/android/gms/nearby/messages/Strategy;

    sget-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->BLE_ONLY:Lcom/google/android/gms/nearby/messages/Strategy;

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJK:Lcom/google/android/gms/nearby/messages/Strategy;

    return-void
.end method

.method constructor <init>(IIIIZII)V
    .locals 3
    .param p1, "versionCode"    # I
    .param p2, "broadcastScanStrategy"    # I
    .param p3, "ttlSeconds"    # I
    .param p4, "distanceType"    # I
    .param p5, "isBleBeaconStrategy"    # Z
    .param p6, "discoveryMedium"    # I
    .param p7, "discoveryMode"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJL:I

    if-nez p2, :cond_0

    iput p7, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJQ:I

    :goto_0
    iput p4, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJN:I

    iput-boolean p5, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJO:Z

    if-eqz p5, :cond_1

    iput v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJP:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJM:I

    :goto_1
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJQ:I

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJQ:I

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJQ:I

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    iput v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJP:I

    iput p3, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJM:I

    goto :goto_1

    :cond_2
    iput p6, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJP:I

    iput p3, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJM:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/Strategy;

    .end local p1    # "other":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->versionCode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJQ:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJQ:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJM:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJM:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJN:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJN:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJP:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJP:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->versionCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJQ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJM:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJN:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaJP:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/zzd;->zza(Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/Parcel;I)V

    return-void
.end method
