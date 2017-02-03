.class public final Lcom/google/android/gms/fitness/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final CustomWalletTheme:[I

.field public static final CustomWalletTheme_windowTransitionStyle:I = 0x0

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final WalletFragmentOptions:[I

.field public static final WalletFragmentOptions_appTheme:I = 0x0

.field public static final WalletFragmentOptions_environment:I = 0x1

.field public static final WalletFragmentOptions_fragmentMode:I = 0x3

.field public static final WalletFragmentOptions_fragmentStyle:I = 0x2

.field public static final WalletFragmentStyle:[I

.field public static final WalletFragmentStyle_buyButtonAppearance:I = 0x3

.field public static final WalletFragmentStyle_buyButtonHeight:I = 0x0

.field public static final WalletFragmentStyle_buyButtonText:I = 0x2

.field public static final WalletFragmentStyle_buyButtonWidth:I = 0x1

.field public static final WalletFragmentStyle_maskedWalletDetailsBackground:I = 0x6

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonBackground:I = 0x8

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonTextAppearance:I = 0x7

.field public static final WalletFragmentStyle_maskedWalletDetailsHeaderTextAppearance:I = 0x5

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoImageType:I = 0xa

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoTextColor:I = 0x9

.field public static final WalletFragmentStyle_maskedWalletDetailsTextAppearance:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 212
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/fitness/R$styleable;->AdsAttrs:[I

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01002f

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/R$styleable;->CustomWalletTheme:[I

    .line 218
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/fitness/R$styleable;->LoadingImageView:[I

    .line 222
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/fitness/R$styleable;->MapAttrs:[I

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/fitness/R$styleable;->WalletFragmentOptions:[I

    .line 244
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/gms/fitness/R$styleable;->WalletFragmentStyle:[I

    return-void

    .line 212
    nop

    :array_0
    .array-data 4
        0x7f010026
        0x7f010027
        0x7f010028
    .end array-data

    .line 218
    :array_1
    .array-data 4
        0x7f01003b
        0x7f01003c
        0x7f01003d
    .end array-data

    .line 222
    :array_2
    .array-data 4
        0x7f01003e
        0x7f01003f
        0x7f010040
        0x7f010041
        0x7f010042
        0x7f010043
        0x7f010044
        0x7f010045
        0x7f010046
        0x7f010047
        0x7f010048
        0x7f010049
        0x7f01004a
        0x7f01004b
        0x7f01004c
        0x7f01004d
    .end array-data

    .line 239
    :array_3
    .array-data 4
        0x7f0100f2
        0x7f0100f3
        0x7f0100f4
        0x7f0100f5
    .end array-data

    .line 244
    :array_4
    .array-data 4
        0x7f0100f6
        0x7f0100f7
        0x7f0100f8
        0x7f0100f9
        0x7f0100fa
        0x7f0100fb
        0x7f0100fc
        0x7f0100fd
        0x7f0100fe
        0x7f0100ff
        0x7f010100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
