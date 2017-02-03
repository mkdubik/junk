.class public final Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzaCr:Ljava/lang/String;

.field public final zzaJJ:Z

.field public final zzaJR:Lcom/google/android/gms/nearby/messages/internal/zzc;

.field public final zzaKd:Lcom/google/android/gms/nearby/messages/Strategy;

.field public final zzaKe:Ljava/lang/String;

.field public final zzaKf:Lcom/google/android/gms/nearby/messages/internal/zzb;

.field public final zzaKg:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field public final zzaKh:Landroid/app/PendingIntent;

.field public final zzaKi:I

.field public final zzaKj:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZ)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "messageListener"    # Landroid/os/IBinder;
    .param p3, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .param p4, "callbackAsBinder"    # Landroid/os/IBinder;
    .param p5, "filter"    # Lcom/google/android/gms/nearby/messages/MessageFilter;
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageListenerKey"    # I
    .param p8, "zeroPartyPackageName"    # Ljava/lang/String;
    .param p9, "realClientPackageName"    # Ljava/lang/String;
    .param p10, "hint"    # [B
    .param p11, "isIgnoreNearbyPermission"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzb$zza;->zzdh(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKf:Lcom/google/android/gms/nearby/messages/internal/zzb;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKd:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p4}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdi(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaJR:Lcom/google/android/gms/nearby/messages/internal/zzc;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKg:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKh:Landroid/app/PendingIntent;

    iput p7, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKi:I

    iput-object p8, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaCr:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKe:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKj:[B

    iput-boolean p11, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaJJ:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZ)V
    .locals 12
    .param p1, "messageListener"    # Landroid/os/IBinder;
    .param p2, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .param p3, "callbackAsBinder"    # Landroid/os/IBinder;
    .param p4, "filter"    # Lcom/google/android/gms/nearby/messages/MessageFilter;
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageListenerKey"    # I
    .param p7, "zeroPartyPackageName"    # Ljava/lang/String;
    .param p8, "realClientPackageName"    # Ljava/lang/String;
    .param p9, "hint"    # [B
    .param p10, "isIgnoreNearbyPermission"    # Z

    .prologue
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZ)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzl;->zza(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzyp()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaJR:Lcom/google/android/gms/nearby/messages/internal/zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaJR:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzyq()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKf:Lcom/google/android/gms/nearby/messages/internal/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaKf:Lcom/google/android/gms/nearby/messages/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
