.class public final Lcom/google/android/gms/internal/zzsb$zzc;
.super Lcom/google/android/gms/internal/zzrr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrr",
        "<",
        "Lcom/google/android/gms/internal/zzsb$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbcB:[B

.field public zzbcC:[[B

.field public zzbcD:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb$zzc;->zzDA()Lcom/google/android/gms/internal/zzsb$zzc;

    return-void
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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsb$zzc;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzsb$zzc;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrv;->zza([[B[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsb$zzc;->zza(Lcom/google/android/gms/internal/zzrr;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrv;->zza([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb$zzc;->zzDk()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method protected zzB()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrr;->zzB()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzrq;->zzC([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public zzD(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzsb$zzc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCT()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsb$zzc;->zza(Lcom/google/android/gms/internal/zzrp;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsa;->zzb(Lcom/google/android/gms/internal/zzrp;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCT()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCX()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public zzDA()Lcom/google/android/gms/internal/zzsb$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsa;->zzbct:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbca:Lcom/google/android/gms/internal/zzrt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcl:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    sget-object v1, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcB:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zza(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcC:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrq;->zza(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsb$zzc;->zzbcD:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zzb(IZ)V

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsb$zzc;->zzD(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzsb$zzc;

    move-result-object v0

    return-object v0
.end method
