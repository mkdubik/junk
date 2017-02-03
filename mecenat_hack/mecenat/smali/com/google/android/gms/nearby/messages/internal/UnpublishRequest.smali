.class public final Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzaCr:Ljava/lang/String;

.field public final zzaJR:Lcom/google/android/gms/nearby/messages/internal/zzc;

.field public final zzaKc:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

.field public final zzaKe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "messageWrapper"    # Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;
    .param p3, "callbackAsBinder"    # Landroid/os/IBinder;
    .param p4, "zeroPartyPackageName"    # Ljava/lang/String;
    .param p5, "realClientPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaKc:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdi(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaJR:Lcom/google/android/gms/nearby/messages/internal/zzc;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaCr:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaKe:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "messageWrapper"    # Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;
    .param p2, "callbackAsBinder"    # Landroid/os/IBinder;
    .param p3, "zeroPartyPackageName"    # Ljava/lang/String;
    .param p4, "realClientPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;-><init>(ILcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zza(Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzyp()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaJR:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
