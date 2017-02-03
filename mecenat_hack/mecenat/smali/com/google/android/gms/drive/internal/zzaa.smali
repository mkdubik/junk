.class public Lcom/google/android/gms/drive/internal/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/zzaa$zza;,
        Lcom/google/android/gms/drive/internal/zzaa$zzb;,
        Lcom/google/android/gms/drive/internal/zzaa$zzc;,
        Lcom/google/android/gms/drive/internal/zzaa$zzd;
    }
.end annotation


# instance fields
.field protected final zzags:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzaa;->zzags:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/zzaa$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaa$1;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/drive/events/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzt;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzaa;->zzags:Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/drive/internal/zzt;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public addChangeSubscription(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzt;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzaa;->zzags:Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/drive/internal/zzt;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/drive/internal/zzaa$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/internal/zzaa$5;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzaa;->zzags:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzaa;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public listParents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/drive/internal/zzaa$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/internal/zzaa$2;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public removeChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/drive/events/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzt;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzaa;->zzags:Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/drive/internal/zzt;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public removeChangeSubscription(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzt;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzaa;->zzags:Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/drive/internal/zzt;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public setParents(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Set;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "parentIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/drive/DriveId;>;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParentIds must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/gms/drive/internal/zzaa$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzaa$3;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public trash(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/drive/internal/zzaa$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/internal/zzaa$6;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public untrash(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/drive/internal/zzaa$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/internal/zzaa$7;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "changeSet"    # Lcom/google/android/gms/drive/MetadataChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;"
        }
    .end annotation

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ChangeSet must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/internal/zzaa$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaa$4;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method
