.class public Lcom/google/android/gms/nearby/messages/internal/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/Messages;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/internal/zzh$zza;
    }
.end annotation


# static fields
.field public static final zzQf:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzg;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzg;",
            "Lcom/google/android/gms/nearby/messages/MessagesOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzh$1;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzh$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
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
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzh$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzh$6;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "message"    # Lcom/google/android/gms/nearby/messages/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzh;->publish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/Strategy;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/Strategy;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "message"    # Lcom/google/android/gms/nearby/messages/Message;
    .param p3, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/Message;",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzh$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/nearby/messages/internal/zzh$2;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/Strategy;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/nearby/messages/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

    sget-object v1, Lcom/google/android/gms/nearby/messages/MessageFilter;->INCLUDE_ALL_MY_TYPES:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzh;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/nearby/messages/MessageListener;
    .param p3, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/nearby/messages/MessageFilter;->INCLUDE_ALL_MY_TYPES:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/nearby/messages/internal/zzh;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/nearby/messages/MessageListener;
    .param p3, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .param p4, "filter"    # Lcom/google/android/gms/nearby/messages/MessageFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            "Lcom/google/android/gms/nearby/messages/MessageFilter;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzh$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzh$4;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public unpublish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "message"    # Lcom/google/android/gms/nearby/messages/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzh$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzh$3;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/nearby/messages/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzh$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzh$5;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zzc$zza;)Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    return-object v0
.end method
