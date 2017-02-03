.class public final Lcom/google/android/gms/internal/zznw$zzd;
.super Lcom/google/android/gms/internal/zzrr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrr",
        "<",
        "Lcom/google/android/gms/internal/zznw$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaAt:Z

.field public zzaAu:J

.field public zzaAv:D

.field public zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

.field public zzaeO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznw$zzd;->zzvu()Lcom/google/android/gms/internal/zznw$zzd;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/zznw$zzd;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zznw$zzd;

    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznw$zzd;->zza(Lcom/google/android/gms/internal/zzrr;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    iget-object v2, p1, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zznw$zzc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznw$zzd;->zzDk()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznw$zzc;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method protected zzB()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrr;->zzB()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zzb(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zza(ID)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_4
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznw$zzd;->zzt(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zznw$zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzt(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zznw$zzd;
    .locals 2
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zznw$zzd;->zza(Lcom/google/android/gms/internal/zzrp;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCX()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCV()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zznw$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznw$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x21 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public zzvu()Lcom/google/android/gms/internal/zznw$zzd;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAt:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaeO:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAu:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAv:D

    iput-object v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzaAw:Lcom/google/android/gms/internal/zznw$zzc;

    iput-object v2, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzbca:Lcom/google/android/gms/internal/zzrt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zznw$zzd;->zzbcl:I

    return-object p0
.end method
