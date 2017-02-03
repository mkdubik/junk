.class public final Lcom/google/android/gms/internal/zzrm;
.super Lcom/google/android/gms/internal/zzrr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrm$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrr",
        "<",
        "Lcom/google/android/gms/internal/zzrm;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrm;->zzCM()Lcom/google/android/gms/internal/zzrm;

    return-void
.end method

.method public static zzw([B)Lcom/google/android/gms/internal/zzrm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzrw;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzrm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrm;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzrx;->zza(Lcom/google/android/gms/internal/zzrx;[B)Lcom/google/android/gms/internal/zzrx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrm;

    return-object v0
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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzrm;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzrm;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrv;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrm;->zza(Lcom/google/android/gms/internal/zzrr;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrv;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrm;->zzDk()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrr;->zzB()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public zzCM()Lcom/google/android/gms/internal/zzrm;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzrm$zza;->zzCN()[Lcom/google/android/gms/internal/zzrm$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbca:Lcom/google/android/gms/internal/zzrt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbcl:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrm;->zzv(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrm;

    move-result-object v0

    return-object v0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrm;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrm;->zza(Lcom/google/android/gms/internal/zzrp;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsa;->zzb(Lcom/google/android/gms/internal/zzrp;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzrm$zza;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzrm$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzrm$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCT()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzrm$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzrm$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrm;->zzbbr:[Lcom/google/android/gms/internal/zzrm$zza;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
