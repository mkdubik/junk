.class public Lcom/google/android/gms/vision/Frame$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaVf:Lcom/google/android/gms/vision/Frame;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/vision/Frame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/Frame;-><init>(Lcom/google/android/gms/vision/Frame$1;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/Frame;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-static {v0}, Lcom/google/android/gms/vision/Frame;->zza(Lcom/google/android/gms/vision/Frame;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-static {v0}, Lcom/google/android/gms/vision/Frame;->zzb(Lcom/google/android/gms/vision/Frame;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-static {v2, p1}, Lcom/google/android/gms/vision/Frame;->zza(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/vision/Frame$Metadata;->zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    invoke-static {v2, v1}, Lcom/google/android/gms/vision/Frame$Metadata;->zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    return-object p0
.end method

.method public setId(I)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/Frame$Metadata;->zzc(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    return-object p0
.end method

.method public setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null image data supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image byte buffer must be allocated as \'direct\'. See ByteBuffer.allocateDirect()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    mul-int v1, p2, p3

    if-ge v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid image data size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sparse-switch p4, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported image format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/Frame;->zza(Lcom/google/android/gms/vision/Frame;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/vision/Frame$Metadata;->zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    invoke-static {v0, p3}, Lcom/google/android/gms/vision/Frame$Metadata;->zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/Frame$Metadata;->zzd(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    return-object p0
.end method

.method public setTimestampMillis(J)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 1
    .param p1, "timestampMillis"    # J

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zzaVf:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/vision/Frame$Metadata;->zza(Lcom/google/android/gms/vision/Frame$Metadata;J)J

    return-object p0
.end method
