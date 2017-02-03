.class public final Lcom/google/android/gms/internal/zzsb$zzd;
.super Lcom/google/android/gms/internal/zzrr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrr",
        "<",
        "Lcom/google/android/gms/internal/zzsb$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzbcE:J

.field public zzbcF:J

.field public zzbcG:I

.field public zzbcH:I

.field public zzbcI:Z

.field public zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

.field public zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

.field public zzbcL:[B

.field public zzbcM:[B

.field public zzbcN:[B

.field public zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

.field public zzbcP:Ljava/lang/String;

.field public zzbcQ:J

.field public zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

.field public zzbcS:[B

.field public zzbcT:I

.field public zzbcU:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb$zzd;->zzDB()Lcom/google/android/gms/internal/zzsb$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsb$zzd;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzsb$zzd;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    iget v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    iget v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrv;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    if-nez v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    iget v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrv;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsb$zzd;->zza(Lcom/google/android/gms/internal/zzrr;)Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzsb$zzb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzsb$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzsb$zzc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrv;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrv;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb$zzd;->zzDk()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsb$zzb;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsb$zza;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsb$zzc;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method protected zzB()I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrr;->zzB()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrq;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzl(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzB(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzB(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzl(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrq;->zze(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrq;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzB(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    array-length v3, v3

    if-ge v1, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrq;->zzls(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public zzDB()Lcom/google/android/gms/internal/zzsb$zzd;
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    iput v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzsb$zze;->zzDC()[Lcom/google/android/gms/internal/zzsb$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    sget-object v0, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    iput v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    sget-object v0, Lcom/google/android/gms/internal/zzsa;->zzbcn:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbca:Lcom/google/android/gms/internal/zzrt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcl:I

    return-object p0
.end method

.method public zzE(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzsb$zzd;
    .locals 5
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsb$zzd;->zza(Lcom/google/android/gms/internal/zzrp;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCV()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsa;->zzb(Lcom/google/android/gms/internal/zzrp;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzsb$zze;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzsb$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsb$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCT()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzsb$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsb$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzsb$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzsb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCX()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCZ()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzsb$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCV()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsa;->zzb(Lcom/google/android/gms/internal/zzrp;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCT()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    array-length v0, v0

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzDa()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzll(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->getPosition()I

    move-result v2

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzDf()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrp;->zzln(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    array-length v2, v2

    goto :goto_6

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrp;->zzlm(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x92 -> :sswitch_10
        0x98 -> :sswitch_11
        0xa0 -> :sswitch_12
        0xa2 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcE:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcJ:[Lcom/google/android/gms/internal/zzsb$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcL:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zza(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcO:Lcom/google/android/gms/internal/zzsb$zza;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcM:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zza(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcK:Lcom/google/android/gms/internal/zzsb$zzb;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcI:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zzb(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcG:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zzz(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcH:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zzz(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcN:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zza(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcP:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zzb(ILjava/lang/String;)V

    :cond_c
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcQ:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcR:Lcom/google/android/gms/internal/zzsb$zzc;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_e
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcF:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsa;->zzbcu:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcS:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zza(I[B)V

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcT:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zzz(II)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    array-length v0, v0

    if-lez v0, :cond_12

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb$zzd;->zzbcU:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrq;->zzz(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsb$zzd;->zzE(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzsb$zzd;

    move-result-object v0

    return-object v0
.end method
