.class public final Lcom/google/android/gms/internal/zzqh$zza;
.super Lcom/google/android/gms/internal/zzrr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrr",
        "<",
        "Lcom/google/android/gms/internal/zzqh$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaTt:J

.field public zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

.field public zziR:Lcom/google/android/gms/internal/zzaf$zzf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqh$zza;->zzBo()Lcom/google/android/gms/internal/zzqh$zza;

    return-void
.end method

.method public static zzs([B)Lcom/google/android/gms/internal/zzqh$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzrw;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqh$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqh$zza;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzrx;->zza(Lcom/google/android/gms/internal/zzrx;[B)Lcom/google/android/gms/internal/zzrx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zza;

    return-object v0
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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzqh$zza;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzqh$zza;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqh$zza;->zza(Lcom/google/android/gms/internal/zzrr;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaf$zzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaf$zzj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqh$zza;->zzDk()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf$zzf;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaf$zzj;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrr;->zzB()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzc(ILcom/google/android/gms/internal/zzrx;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public zzBo()Lcom/google/android/gms/internal/zzqh$zza;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzbca:Lcom/google/android/gms/internal/zzrt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzbcl:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzb(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zza(ILcom/google/android/gms/internal/zzrx;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqh$zza;->zzu(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzqh$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzu(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzqh$zza;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzqh$zza;->zza(Lcom/google/android/gms/internal/zzrp;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCV()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTt:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->zzaTu:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method
