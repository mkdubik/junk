.class public Lcom/google/android/gms/fitness/request/UnsubscribeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/UnsubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzOZ:Ljava/lang/String;

.field private final zzanl:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzanm:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzapE:Lcom/google/android/gms/internal/zznh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .param p3, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .param p4, "callback"    # Landroid/os/IBinder;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanl:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    iput-object p5, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzOZ:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/internal/zznh$zza;->zzbJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznh;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V
    .locals 1
    .param p1, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .param p2, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .param p3, "callback"    # Lcom/google/android/gms/internal/zznh;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanl:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzOZ:Ljava/lang/String;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanl:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanl:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzb(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Z

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

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanl:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzOZ:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzanl:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzae;->zza(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzsc()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
