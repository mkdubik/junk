.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamesOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    }
.end annotation


# instance fields
.field public final zzarA:Ljava/lang/String;

.field public final zzarB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzarv:Z

.field public final zzarw:Z

.field public final zzarx:I

.field public final zzary:Z

.field public final zzarz:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarv:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarw:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarx:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzary:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarA:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarB:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/games/Games$1;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzarv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarv:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzarw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarw:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzarx:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarx:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzary:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzary:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzarz:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarz:I

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzarA:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarA:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzarB:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarB:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/games/Games$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-object v0
.end method


# virtual methods
.method public zzsQ()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarv:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.showConnectingPopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.connectingPopupGravity"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarx:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.retryingSignIn"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzary:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.sdkVariant"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarz:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.forceResolveAccountKey"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.games.key.proxyApis"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzarB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
