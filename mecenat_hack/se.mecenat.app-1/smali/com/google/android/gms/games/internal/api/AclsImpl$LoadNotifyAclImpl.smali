.class abstract Lcom/google/android/gms/games/internal/api/AclsImpl$LoadNotifyAclImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/AclsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadNotifyAclImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzaa(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/internal/api/AclsImpl;->zzZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AclsImpl$LoadNotifyAclImpl;->zzaa(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;

    move-result-object v0

    return-object v0
.end method
