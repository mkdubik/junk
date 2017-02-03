.class public Lcom/google/android/gms/nearby/messages/Message;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CONTENT_SIZE_BYTES:I = 0x19000

.field public static final MAX_TYPE_LENGTH:I = 0x20


# instance fields
.field private final content:[B

.field private final type:Ljava/lang/String;

.field final versionCode:I

.field private final zzaeI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "versionCode"    # I
    .param p2, "content"    # [B
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    const v8, 0x19000

    const/16 v7, 0x20

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Message;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "namespace":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaeI:Ljava/lang/String;

    array-length v0, p2

    if-gt v0, v8, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Content length(%d) must not exceed MAX_CONTENT_SIZE_BYTES(%d)"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v7, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Type length(%d) must not exceed MAX_TYPE_LENGTH(%d)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "content"    # [B

    .prologue
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/nearby/messages/Message;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "content"    # [B
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/android/gms/nearby/messages/Message;-><init>(I[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # [B
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/nearby/messages/Message;-><init>(I[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/Message;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/Message;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaeI:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->zzaeI:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaeI:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaeI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message{namespace=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaeI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/zza;->zza(Lcom/google/android/gms/nearby/messages/Message;Landroid/os/Parcel;I)V

    return-void
.end method
