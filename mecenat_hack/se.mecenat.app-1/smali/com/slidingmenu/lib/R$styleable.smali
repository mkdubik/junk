.class public final Lcom/slidingmenu/lib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slidingmenu/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SlidingMenu:[I

.field public static final SlidingMenu_aboveTouchMode:I = 0x4

.field public static final SlidingMenu_behindFadeDegree:I = 0x9

.field public static final SlidingMenu_behindFadeEnabled:I = 0x8

.field public static final SlidingMenu_behindOffset:I = 0x2

.field public static final SlidingMenu_behindScrollScale:I = 0x3

.field public static final SlidingMenu_behindTouchMode:I = 0x5

.field public static final SlidingMenu_shadowDrawable:I = 0x6

.field public static final SlidingMenu_shadowWidth:I = 0x7

.field public static final SlidingMenu_viewAbove:I = 0x0

.field public static final SlidingMenu_viewBehind:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu:[I

    return-void

    :array_0
    .array-data 4
        0x7f010063
        0x7f010064
        0x7f010065
        0x7f010066
        0x7f010067
        0x7f010068
        0x7f010069
        0x7f01006a
        0x7f01006b
        0x7f01006c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
