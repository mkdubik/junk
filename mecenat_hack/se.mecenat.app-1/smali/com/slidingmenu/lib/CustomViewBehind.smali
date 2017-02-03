.class public Lcom/slidingmenu/lib/CustomViewBehind;
.super Lcom/slidingmenu/lib/CustomViewAbove;
.source "CustomViewBehind.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public getBehindWidth()I
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v1
.end method

.method public getChildLeft(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getChildRight(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->getChildLeft(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->getChildWidth(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getChildWidth(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 47
    if-gtz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getCustomWidth()I
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 43
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getChildWidth(I)I

    move-result v1

    return v1

    .line 42
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDestScrollX()I
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setContent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setMenu(Landroid/view/View;)V

    .line 62
    return-void
.end method
