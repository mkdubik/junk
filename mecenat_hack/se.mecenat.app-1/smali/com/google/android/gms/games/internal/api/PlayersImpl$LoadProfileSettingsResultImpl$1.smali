.class Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;->zzaq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQs:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzavx:Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl$1;->zzavx:Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl$1;->zzQs:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl$1;->zzQs:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isProfileVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisibilityExplicitlySet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
