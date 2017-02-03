.class public Lcom/google/android/gms/auth/api/credentials/Credential;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY:Ljava/lang/String; = "com.google.android.gms.credentials.Credential"


# instance fields
.field private final mName:Ljava/lang/String;

.field final mVersionCode:I

.field private final zzRa:Ljava/lang/String;

.field private final zzRb:Ljava/lang/String;

.field private final zzRc:Landroid/net/Uri;

.field private final zzRd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field

.field private final zzRe:Ljava/lang/String;

.field private final zzRf:Ljava/lang/String;

.field private final zzRg:Ljava/lang/String;

.field private final zzRh:Ljava/lang/String;

.field private final zzwj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "internalCredentialId"    # Ljava/lang/String;
    .param p3, "internalServerContext"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "profilePictureUri"    # Landroid/net/Uri;
    .param p8, "password"    # Ljava/lang/String;
    .param p9, "accountType"    # Ljava/lang/String;
    .param p10, "generatedPassword"    # Ljava/lang/String;
    .param p11, "generatedHintId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p7, "idTokens":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/auth/api/credentials/IdToken;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRa:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRb:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwj:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRc:Landroid/net/Uri;

    if-nez p7, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRd:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRe:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRf:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRg:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRh:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/auth/api/credentials/Credential;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRc:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRd:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRh:Ljava/lang/String;

    return-object v0
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
    instance-of v2, p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwj:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRc:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRc:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRe:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRe:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRf:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRg:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRf:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRg:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwj:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRe:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePictureUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRc:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwj:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRc:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRe:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRf:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRg:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zza;->zza(Lcom/google/android/gms/auth/api/credentials/Credential;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRa:Ljava/lang/String;

    return-object v0
.end method

.method public zzls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRb:Ljava/lang/String;

    return-object v0
.end method

.method public zzlt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRd:Ljava/util/List;

    return-object v0
.end method

.method public zzlu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzRh:Ljava/lang/String;

    return-object v0
.end method
