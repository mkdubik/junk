.class public Lcom/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    }
.end annotation


# static fields
.field private static final HIGH_DPI_STATUS_BAR_HEIGHT:I = 0x26

.field private static final LOW_DPI_STATUS_BAR_HEIGHT:I = 0x13

.field private static final MEDIUM_DPI_STATUS_BAR_HEIGHT:I = 0x19

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I


# instance fields
.field private mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

.field private mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v4, "behindParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v17, Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v3, "aboveParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v17, Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind2(Lcom/slidingmenu/lib/CustomViewBehind;)V

    .line 47
    sget-object v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 49
    .local v11, "ta":Landroid/content/res/TypedArray;
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_viewAbove:I

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 50
    .local v15, "viewAbove":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_0

    .line 51
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 52
    .local v14, "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/slidingmenu/lib/SlidingMenu;->setViewAbove(Landroid/view/View;)V

    .line 54
    .end local v14    # "v":Landroid/view/View;
    :cond_0
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_viewBehind:I

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 55
    .local v16, "viewBehind":I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 56
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 57
    .restart local v14    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/slidingmenu/lib/SlidingMenu;->setViewBehind(Landroid/view/View;)V

    .line 59
    .end local v14    # "v":Landroid/view/View;
    :cond_1
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_aboveTouchMode:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 60
    .local v12, "touchModeAbove":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 61
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_behindTouchMode:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 62
    .local v13, "touchModeBehind":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 63
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_behindOffset:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 64
    .local v7, "offsetBehind":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 65
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_behindScrollScale:I

    const/high16 v18, 0x3e800000    # 0.25f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 66
    .local v8, "scrollOffsetBehind":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V

    .line 67
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_shadowDrawable:I

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 68
    .local v9, "shadowRes":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_2

    .line 69
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 71
    :cond_2
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_shadowWidth:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 72
    .local v10, "shadowWidth":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 73
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_behindFadeEnabled:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 74
    .local v6, "fadeEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V

    .line 75
    sget v17, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu_behindFadeDegree:I

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 76
    .local v5, "fadeDeg":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 78
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 4

    .prologue
    .line 322
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 323
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "statusBarHeight":I
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 336
    const/16 v1, 0x19

    .line 338
    :goto_0
    return v1

    .line 327
    :sswitch_0
    const/16 v1, 0x26

    .line 328
    goto :goto_0

    .line 330
    :sswitch_1
    const/16 v1, 0x19

    .line 331
    goto :goto_0

    .line 333
    :sswitch_2
    const/16 v1, 0x13

    .line 334
    goto :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getTouchModeAbove()I

    move-result v0

    return v0
.end method

.method public getTouchModeBehind()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getTouchModeBehind()I

    move-result v0

    return v0
.end method

.method public isBehindShowing()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 282
    instance-of v1, p1, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    if-nez v1, :cond_0

    .line 283
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 295
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 287
    check-cast v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    .line 288
    .local v0, "ss":Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 290
    iget-boolean v1, v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->mBehindShowing:Z

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->showBehind()V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 275
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 276
    .local v0, "ss":Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->isBehindShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->mBehindShowing:Z

    .line 277
    return-object v0
.end method

.method public setBehindOffset(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 163
    iget-object v4, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 164
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 165
    .local v0, "bottom":I
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 166
    .local v3, "top":I
    iget v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 167
    .local v1, "left":I
    invoke-virtual {v2, v1, v3, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 176
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 177
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 193
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollScale(F)V

    .line 194
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 237
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setBehindFadeDegree(F)V

    .line 238
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setBehindFadeEnabled(Z)V

    .line 234
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 7
    .param p1, "b"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 306
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_0

    .line 307
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    .line 319
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v4, 0x0

    .line 310
    .local v4, "topMargin":I
    if-eqz p1, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getStatusBarHeight()I

    move-result v4

    .line 313
    :cond_1
    iget-object v5, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 315
    .local v0, "bottom":I
    iget v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 316
    .local v1, "left":I
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 317
    .local v3, "right":I
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setShadowDrawable(I)V

    .line 222
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setShadowWidth(I)V

    .line 230
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 226
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 103
    return-void
.end method

.method public setStatic(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind2(Lcom/slidingmenu/lib/CustomViewBehind;)V

    .line 118
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 119
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/CustomViewBehind;->setCurrentItem(I)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 122
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/CustomViewBehind;->setCurrentItem(I)V

    .line 123
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind2(Lcom/slidingmenu/lib/CustomViewBehind;)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 201
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setTouchModeAbove(I)V

    .line 206
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 213
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setTouchModeBehind(I)V

    .line 218
    return-void
.end method

.method public setViewAbove(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setViewAbove(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setViewAbove(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 87
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->dataSetChanged()V

    .line 88
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    .line 89
    return-void
.end method

.method public setViewBehind(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setViewBehind(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public setViewBehind(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 98
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->dataSetChanged()V

    .line 99
    return-void
.end method

.method public showAbove()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 140
    return-void
.end method

.method public showBehind()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 133
    return-void
.end method
