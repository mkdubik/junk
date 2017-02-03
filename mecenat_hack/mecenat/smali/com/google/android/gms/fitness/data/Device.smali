.class public final Lcom/google/android/gms/fitness/data/Device;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CHEST_STRAP:I = 0x4

.field public static final TYPE_PHONE:I = 0x1

.field public static final TYPE_SCALE:I = 0x5

.field public static final TYPE_TABLET:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WATCH:I = 0x3


# instance fields
.field private final mVersionCode:I

.field private final zzUS:I

.field private final zzWs:Ljava/lang/String;

.field private final zzanY:Ljava/lang/String;

.field private final zzanZ:Ljava/lang/String;

.field private final zzaoa:Ljava/lang/String;

.field private final zzaob:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "manufacturer"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "uid"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "platformType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Device;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzanY:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzanZ:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzWs:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/fitness/data/Device;->zzUS:I

    iput p7, p0, Lcom/google/android/gms/fitness/data/Device;->zzaob:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const-string v3, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "platformType"    # I

    .prologue
    const/4 v1, 0x1

    const-string v4, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/data/Device;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static getLocalDevice(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmi;->zzaw(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0}, Lcom/google/android/gms/fitness/data/Device;->zzas(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/fitness/data/Device;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Device;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzanY:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Device;->zzanY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzanZ:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Device;->zzanZ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzWs:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Device;->zzWs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzUS:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Device;->zzUS:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzaob:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Device;->zzaob:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzas(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzrJ()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Device;->zzrI()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Device;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Device;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Device;->zza(Lcom/google/android/gms/fitness/data/Device;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzanY:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzanZ:Ljava/lang/String;

    return-object v0
.end method

.method getStreamIdentifier()Ljava/lang/String;
    .locals 4

    const-string v0, "%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->zzanY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->zzanZ:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzUS:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzWs:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Device;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->zzanY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->zzanZ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->zzWs:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/fitness/data/Device;->zzUS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Device{%s:%s:%s:%s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Device;->getStreamIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->zzWs:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/fitness/data/Device;->zzUS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/fitness/data/Device;->zzaob:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzh;->zza(Lcom/google/android/gms/fitness/data/Device;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzaob:I

    return v0
.end method

.method public zzrK()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Device;->zzrJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->zzaoa:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznl;->zzcV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
