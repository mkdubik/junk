.class public Lcom/google/android/gms/vision/Frame;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/Frame$1;,
        Lcom/google/android/gms/vision/Frame$Metadata;,
        Lcom/google/android/gms/vision/Frame$Builder;
    }
.end annotation


# static fields
.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private zzaVd:Lcom/google/android/gms/vision/Frame$Metadata;

.field private zzaVe:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/vision/Frame$Metadata;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzaVd:Lcom/google/android/gms/vision/Frame$Metadata;

    iput-object v1, p0, Lcom/google/android/gms/vision/Frame;->zzaVe:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/Frame$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/vision/Frame$1;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/vision/Frame;-><init>()V

    return-void
.end method

.method private zzCc()Ljava/nio/ByteBuffer;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v0, v3, v7

    new-array v3, v0, [B

    move v0, v2

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget v4, v1, v0

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e991687    # 0.299f

    mul-float/2addr v4, v5

    aget v5, v1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f1645a2    # 0.587f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3de978d5    # 0.114f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v4, v3

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzaVe:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/Frame;->zzaVe:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/Frame;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGrayscaleImageData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/vision/Frame;->zzCc()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzaVe:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzaVd:Lcom/google/android/gms/vision/Frame$Metadata;

    return-object v0
.end method
