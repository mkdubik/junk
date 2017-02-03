.class public final Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/CredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzRj:Z

.field private zzRk:[Ljava/lang/String;

.field private zzRl:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private zzRm:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRj:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRk:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRl:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRm:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRk:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRk:[Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRj:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRk:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one authentication method must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;Lcom/google/android/gms/auth/api/credentials/CredentialRequest$1;)V

    return-object v0
.end method

.method public varargs setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
    .locals 0
    .param p1, "accountTypes"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRk:[Ljava/lang/String;

    return-object p0
.end method

.method public setCredentialHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
    .locals 0
    .param p1, "config"    # Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRm:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object p0
.end method

.method public setCredentialPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
    .locals 0
    .param p1, "config"    # Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRl:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object p0
.end method

.method public setSupportsPasswordLogin(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
    .locals 0
    .param p1, "supportsPasswordLogin"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzRj:Z

    return-object p0
.end method
