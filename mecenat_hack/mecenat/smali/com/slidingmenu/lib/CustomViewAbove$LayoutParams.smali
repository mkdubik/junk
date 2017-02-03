.class public Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slidingmenu/lib/CustomViewAbove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public isDecor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1688
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;-><init>(I)V

    .line 1689
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "customWidth"    # I

    .prologue
    const/4 v0, -0x1

    .line 1692
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1693
    if-ltz p1, :cond_0

    .line 1694
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->width:I

    .line 1696
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 1699
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1701
    # getter for: Lcom/slidingmenu/lib/CustomViewAbove;->LAYOUT_ATTRS:[I
    invoke-static {}, Lcom/slidingmenu/lib/CustomViewAbove;->access$000()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1702
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->gravity:I

    .line 1703
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1704
    return-void
.end method
