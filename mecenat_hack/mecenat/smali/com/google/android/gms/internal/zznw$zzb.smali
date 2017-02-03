.class public final Lcom/google/android/gms/internal/zznw$zzb;
.super Lcom/google/android/gms/internal/zzrr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrr",
        "<",
        "Lcom/google/android/gms/internal/zznw$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaAq:[Lcom/google/android/gms/internal/zznw$zzb;


# instance fields
.field public name:Ljava/lang/String;

.field public zzaAr:Lcom/google/android/gms/internal/zznw$zzd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznw$zzb;->zzvs()Lcom/google/android/gms/internal/zznw$zzb;

    return-void
.end method

.method public static zzvr()[Lcom/google/android/gms/internal/zznw$zzb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAq:[Lcom/google/android/gms/internal/zznw$zzb;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzrv;->zzbck:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAq:[Lcom/google/android/gms/internal/zznw$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zznw$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAq:[Lcom/google/android/gms/internal/zznw$zzb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAq:[Lcom/google/android/gms/internal/zznw$zzb;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/zznw$zzb;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zznw$zzb;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznw$zzb;->zza(Lcom/google/android/gms/internal/zzrr;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    iget-object v2, p1, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zznw$zzd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznw$zzb;->zzDk()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznw$zzd;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method protected zzB()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrr;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzrr;->zza(Lcom/google/android/gms/internal/zzrq;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznw$zzb;->zzr(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zznw$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zznw$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCT()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zznw$zzb;->zza(Lcom/google/android/gms/internal/zzrp;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zznw$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznw$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public zzvs()Lcom/google/android/gms/internal/zznw$zzb;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzaAr:Lcom/google/android/gms/internal/zznw$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzbca:Lcom/google/android/gms/internal/zzrt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zznw$zzb;->zzbcl:I

    return-object p0
.end method
