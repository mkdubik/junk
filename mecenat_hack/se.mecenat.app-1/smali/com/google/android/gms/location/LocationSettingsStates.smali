.class public final Lcom/google/android/gms/location/LocationSettingsStates;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaCi:Z

.field private final zzaCj:Z

.field private final zzaCk:Z

.field private final zzaCl:Z

.field private final zzaCm:Z

.field private final zzaCn:Z

.field private final zzaCo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZZZZZ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "gpsUsable"    # Z
    .param p3, "nlpUsable"    # Z
    .param p4, "bleUsable"    # Z
    .param p5, "gpsPresent"    # Z
    .param p6, "nlpPresent"    # Z
    .param p7, "blePresent"    # Z
    .param p8, "userLocationReportingOn"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCi:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCj:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCk:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCl:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCm:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCn:Z

    iput-boolean p8, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCo:Z

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.location.LOCATION_SETTINGS_STATES"

    sget-object v1, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    return v0
.end method

.method public isBlePresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCn:Z

    return v0
.end method

.method public isBleUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCk:Z

    return v0
.end method

.method public isGpsPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCl:Z

    return v0
.end method

.method public isGpsUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCi:Z

    return v0
.end method

.method public isLocationPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCl:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCm:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCi:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCj:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkLocationPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCm:Z

    return v0
.end method

.method public isNetworkLocationUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCj:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzh;->zza(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzvM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzaCo:Z

    return v0
.end method
