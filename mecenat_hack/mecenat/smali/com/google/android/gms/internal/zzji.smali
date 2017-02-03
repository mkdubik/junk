.class public Lcom/google/android/gms/internal/zzji;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appinvite/AppInviteApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzji$zzc;,
        Lcom/google/android/gms/internal/zzji$zzb;,
        Lcom/google/android/gms/internal/zzji$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "invitationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/zzji$zzc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzji$zzc;-><init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public updateInvitationOnInstall(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "invitationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzji$zzb;-><init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method
