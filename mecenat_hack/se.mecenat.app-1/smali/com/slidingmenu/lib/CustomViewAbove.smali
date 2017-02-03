.class public Lcom/slidingmenu/lib/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;,
        Lcom/slidingmenu/lib/CustomViewAbove$PagerObserver;,
        Lcom/slidingmenu/lib/CustomViewAbove$Decor;,
        Lcom/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;,
        Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;,
        Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mBehindFadePaint:Landroid/graphics/Paint;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

.field private mCurItem:I

.field private mCustomViewBehind2:Lcom/slidingmenu/lib/CustomViewBehind;

.field private mEnabled:Z

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private mFirstLayout:Z

.field private mFlingDistance:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastTouchAllowed:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mPopulatePending:Z

.field private mScrollScale:F

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mSlidingMenuThreshold:I

.field private mTopPageBounds:I

.field private mTouchModeAbove:I

.field private mTouchModeBehind:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/slidingmenu/lib/CustomViewAbove;->LAYOUT_ATTRS:[I

    .line 56
    new-instance v0, Lcom/slidingmenu/lib/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/slidingmenu/lib/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/slidingmenu/lib/CustomViewAbove;->COMPARATOR:Ljava/util/Comparator;

    .line 62
    new-instance v0, Lcom/slidingmenu/lib/CustomViewAbove$2;

    invoke-direct {v0}, Lcom/slidingmenu/lib/CustomViewAbove$2;-><init>()V

    sput-object v0, Lcom/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isAbove"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 117
    iput-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFirstLayout:Z

    .line 120
    iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastTouchAllowed:Z

    .line 121
    const/16 v0, 0xa

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mSlidingMenuThreshold:I

    .line 123
    iput-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    .line 144
    iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollState:I

    .line 956
    iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeAbove:I

    .line 957
    iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeBehind:I

    .line 1332
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mBehindFadePaint:Landroid/graphics/Paint;

    .line 221
    invoke-virtual {p0, p3}, Lcom/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove(Z)V

    .line 222
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/slidingmenu/lib/CustomViewAbove;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 927
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 928
    .local v0, "needPopulate":Z
    if-eqz v0, :cond_2

    .line 930
    invoke-direct {p0, v6}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 931
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 932
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 933
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 934
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 935
    .local v3, "x":I
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 936
    .local v4, "y":I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 937
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 939
    :cond_1
    invoke-direct {p0, v6}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollState(I)V

    .line 941
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    iput-boolean v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mPopulatePending:Z

    .line 942
    iput-boolean v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 943
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget-boolean v5, v5, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    .line 944
    const/4 v0, 0x1

    .line 945
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iput-boolean v6, v5, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->scrolling:Z

    .line 947
    :cond_3
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget-boolean v5, v5, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_4

    .line 948
    const/4 v0, 0x1

    .line 949
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iput-boolean v6, v5, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->scrolling:Z

    .line 951
    :cond_4
    if-eqz v0, :cond_5

    .line 952
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->populate()V

    .line 954
    :cond_5
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 3
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 1299
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_1

    .line 1300
    if-lez p3, :cond_0

    move v0, p1

    .line 1304
    .local v0, "targetPage":I
    :goto_0
    return v0

    .line 1300
    .end local v0    # "targetPage":I
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 1302
    :cond_1
    int-to-float v1, p1

    add-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .restart local v0    # "targetPage":I
    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1368
    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 1369
    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 1371
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1375
    :cond_0
    return-void
.end method

.method private onDrawBehindFade(Landroid/graphics/Canvas;FI)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "openPercent"    # F
    .param p3, "width"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1336
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFadeDegree:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    mul-float/2addr v0, p2

    float-to-int v6, v0

    .line 1338
    .local v6, "alpha":I
    if-lez v6, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mBehindFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1340
    int-to-float v3, p3

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mBehindFadePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1342
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1353
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1354
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1355
    .local v1, "pointerId":I
    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1358
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1359
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1360
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 1361
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1362
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1365
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)V
    .locals 6
    .param p1, "xpos"    # I

    .prologue
    .line 891
    iget v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildWidth(I)I

    move-result v4

    iget v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    add-int v3, v4, v5

    .line 892
    .local v3, "widthWithMargin":I
    div-int v2, p1, v3

    .line 893
    .local v2, "position":I
    rem-int v1, p1, v3

    .line 894
    .local v1, "offsetPixels":I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 896
    .local v0, "offset":F
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCalledSuper:Z

    .line 897
    invoke-virtual {p0, v2, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->onPageScrolled(IFI)V

    .line 898
    iget-boolean v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCalledSuper:Z

    if-nez v4, :cond_0

    .line 899
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onPageScrolled did not call superclass implementation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 902
    :cond_0
    return-void
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    const/4 v2, 0x0

    .line 810
    add-int v10, p1, p3

    .line 811
    .local v10, "widthWithMargin":I
    if-lez p2, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getDestScrollX()I

    move-result v7

    .line 813
    .local v7, "oldScrollPos":I
    add-int v8, p2, p4

    .line 814
    .local v8, "oldwwm":I
    div-int v6, v7, v8

    .line 815
    .local v6, "oldScrollItem":I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 816
    .local v9, "scrollOffset":F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 817
    .local v1, "scrollPos":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 818
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 821
    .local v5, "newDuration":I
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildLeft(I)I

    move-result v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 830
    .end local v5    # "newDuration":I
    .end local v6    # "oldScrollItem":I
    .end local v7    # "oldScrollPos":I
    .end local v8    # "oldwwm":I
    .end local v9    # "scrollOffset":F
    :cond_0
    :goto_0
    return-void

    .line 824
    .end local v1    # "scrollPos":I
    :cond_1
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildLeft(I)I

    move-result v1

    .line 825
    .restart local v1    # "scrollPos":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 827
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;

    .line 264
    .local v2, "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    iget-boolean v3, v2, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 265
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->removeViewAt(I)V

    .line 266
    add-int/lit8 v1, v1, -0x1

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    :cond_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 250
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollState:I

    .line 255
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1379
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    .line 1390
    :cond_0
    return-void
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 976
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 977
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeBehind:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 992
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 981
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 986
    :cond_2
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeAbove:I

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 992
    goto :goto_0

    .line 990
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mSlidingMenuThreshold:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 986
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1526
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1528
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getDescendantFocusability()I

    move-result v1

    .line 1530
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 1531
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1532
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1533
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1534
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v4

    .line 1535
    .local v4, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1536
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1531
    .end local v4    # "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1546
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    .line 1549
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1552
    :cond_2
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1563
    :cond_3
    :goto_1
    return-void

    .line 1555
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 1556
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1559
    :cond_5
    if-eqz p1, :cond_3

    .line 1560
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1573
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1574
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1575
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1576
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v2

    .line 1577
    .local v2, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1578
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1573
    .end local v2    # "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1582
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 673
    invoke-virtual {p0, p3}, Lcom/slidingmenu/lib/CustomViewAbove;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    invoke-virtual {p0, p3}, Lcom/slidingmenu/lib/CustomViewAbove;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 676
    check-cast v0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;

    .line 677
    .local v0, "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    iget-boolean v1, v0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/slidingmenu/lib/CustomViewAbove$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->isDecor:Z

    .line 678
    iget-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 679
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 680
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/slidingmenu/lib/CustomViewAbove;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 683
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mChildWidthMeasureSpec:I

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 695
    :goto_0
    return-void

    .line 685
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1467
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1468
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1470
    :cond_0
    const/4 v1, 0x0

    .line 1472
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1474
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1475
    if-ne p1, v4, :cond_4

    .line 1478
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1479
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->pageLeft()Z

    move-result v1

    .line 1499
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1500
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->playSoundEffect(I)V

    .line 1502
    :cond_2
    return v1

    .line 1481
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1483
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1486
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1487
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1489
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1492
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1494
    :cond_7
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1495
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1497
    :cond_9
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1404
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1405
    check-cast v7, Landroid/view/ViewGroup;

    .line 1406
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1407
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1408
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1410
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1413
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1414
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 1415
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 1416
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 1417
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 1416
    invoke-virtual/range {v0 .. v5}, Lcom/slidingmenu/lib/CustomViewAbove;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    const/4 v0, 0x1

    .line 1423
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 1410
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1423
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1651
    instance-of v0, p1, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 866
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 867
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 869
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 870
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 871
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 872
    .local v2, "x":I
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 874
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 875
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 876
    invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 887
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 886
    :cond_2
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 8

    .prologue
    .line 570
    const/4 v3, 0x0

    .line 571
    .local v3, "needPopulate":Z
    const/4 v4, -0x1

    .line 572
    .local v4, "newCurrItem":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 573
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 574
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    .line 575
    .local v1, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    iget v5, v1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    .line 577
    .local v5, "newPos":I
    iget v6, v1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    if-eq v6, v5, :cond_1

    .line 578
    iget v6, v1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v7, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v6, v7, :cond_0

    .line 580
    move v4, v5

    .line 583
    :cond_0
    iput v5, v1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    .line 584
    const/4 v3, 0x1

    .line 573
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    .end local v5    # "newPos":I
    :cond_2
    if-ltz v4, :cond_3

    .line 589
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v6, v7}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 590
    const/4 v3, 0x1

    .line 592
    :cond_3
    if-eqz v3, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->populate()V

    .line 594
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->requestLayout()V

    .line 596
    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1429
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1624
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v1

    .line 1625
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1626
    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1627
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1628
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v3

    .line 1629
    .local v3, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 1630
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1631
    const/4 v4, 0x1

    .line 1636
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    :goto_1
    return v4

    .line 1625
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1636
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 443
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 444
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 445
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 432
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 433
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 436
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1441
    const/4 v0, 0x0

    .line 1442
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1443
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1463
    :cond_0
    :goto_0
    return v0

    .line 1445
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 1446
    goto :goto_0

    .line 1448
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 1449
    goto :goto_0

    .line 1451
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1454
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1455
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1456
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1457
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1443
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1641
    new-instance v0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;

    invoke-direct {v0}, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1656
    new-instance v0, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCustomViewBehind2:Lcom/slidingmenu/lib/CustomViewBehind;

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCustomViewBehind2:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getChildLeft(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 457
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildWidth(I)I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildLeft(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getChildRight(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildLeft(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildWidth(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getChildWidth(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 475
    if-gtz p1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v0

    .line 478
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method getCount()I
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "count":I
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 310
    :cond_1
    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getCustomWidth()I
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 471
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildWidth(I)I

    move-result v1

    return v1

    .line 470
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDestScrollX()I
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v0

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;>;"
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_1
    return-object v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollScale:F

    return v0
.end method

.method public getShadowWidth()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    return v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeAbove:I

    return v0
.end method

.method public getTouchModeBehind()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeBehind:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 708
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 709
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 710
    :cond_0
    const/4 v1, 0x0

    .line 714
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 712
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 714
    :cond_2
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    .line 703
    :goto_0
    return-object v0

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    goto :goto_0

    .line 703
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initCustomViewAbove()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove(Z)V

    .line 226
    return-void
.end method

.method initCustomViewAbove(Z)V
    .locals 6
    .param p1, "isAbove"    # Z

    .prologue
    .line 229
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V

    .line 230
    const/high16 v4, 0x40000

    invoke-virtual {p0, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->setDescendantFocusability(I)V

    .line 231
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->setFocusable(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 233
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/widget/Scroller;

    sget-object v5, Lcom/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v4, v1, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    .line 234
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 235
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    .line 237
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    .line 239
    if-eqz p1, :cond_0

    .line 240
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    .local v3, "v":Landroid/view/View;
    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 242
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setMenu(Landroid/view/View;)V

    .line 245
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 246
    .local v2, "density":F
    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    .line 247
    return-void
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNull()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

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
    .line 491
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 719
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFirstLayout:Z

    .line 721
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1308
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1309
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v0

    .line 1311
    .local v0, "behindWidth":I
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1312
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    sub-int v1, v0, v2

    .line 1313
    .local v1, "left":I
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTopPageBounds:I

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mBottomPageBounds:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1315
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1329
    .end local v1    # "left":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1142
    :goto_0
    return v0

    .line 1008
    :cond_0
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    const/4 v0, 0x0

    goto :goto_0

    .line 1012
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1015
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_2

    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    .line 1018
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 1019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 1020
    const/4 v0, -0x1

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 1021
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1025
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1030
    :cond_4
    if-eqz v6, :cond_6

    .line 1031
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1033
    const/4 v0, 0x1

    goto :goto_0

    .line 1035
    :cond_5
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v0, :cond_6

    .line 1037
    const/4 v0, 0x0

    goto :goto_0

    .line 1041
    :cond_6
    sparse-switch v6, :sswitch_data_0

    .line 1129
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v0, :cond_9

    .line 1132
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    .line 1133
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1135
    :cond_8
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1142
    :cond_9
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    goto :goto_0

    .line 1052
    :sswitch_0
    iget v7, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 1053
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_7

    .line 1058
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1059
    .local v9, "pointerIndex":I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1060
    .local v10, "x":F
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1061
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1062
    .local v11, "xDiff":F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1063
    .local v12, "y":F
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1066
    .local v13, "yDiff":F
    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/slidingmenu/lib/CustomViewAbove;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1068
    iput v10, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    iput v10, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    .line 1069
    iput v12, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    .line 1070
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1072
    :cond_a
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    cmpl-float v0, v11, v13

    if-lez v0, :cond_b

    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 1075
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollState(I)V

    .line 1076
    iput v10, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1077
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 1079
    :cond_b
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_7

    .line 1085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_1

    .line 1096
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    .line 1098
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 1100
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 1104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollState(I)V

    goto/16 :goto_1

    .line 1105
    :cond_c
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeAbove:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 1106
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1109
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 1111
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1113
    :cond_e
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1125
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1041
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 833
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInLayout:Z

    .line 834
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->populate()V

    .line 835
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInLayout:Z

    .line 837
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v3

    .line 838
    .local v3, "count":I
    sub-int v4, p5, p3

    .line 839
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPaddingTop()I

    move-result v7

    .line 840
    .local v7, "paddingTop":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPaddingBottom()I

    move-result v6

    .line 842
    .local v6, "paddingBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 843
    invoke-virtual {p0, v5}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 844
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 845
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v9

    iget v8, v9, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    .line 846
    .local v8, "pos":I
    const/4 v1, 0x0

    .line 847
    .local v1, "childLeft":I
    const/4 v2, 0x0

    .line 848
    .local v2, "childTop":I
    invoke-virtual {p0, v8}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildLeft(I)I

    move-result v1

    .line 850
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    .line 851
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    .line 849
    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 842
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v8    # "pos":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 858
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iput v7, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTopPageBounds:I

    .line 859
    sub-int v9, v4, v6

    iput v9, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mBottomPageBounds:I

    .line 860
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFirstLayout:Z

    .line 861
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 730
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v16

    .line 731
    .local v16, "width":I
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v7

    .line 732
    .local v7, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/slidingmenu/lib/CustomViewAbove;->setMeasuredDimension(II)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPaddingRight()I

    move-result v20

    sub-int v4, v19, v20

    .line 736
    .local v4, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPaddingBottom()I

    move-result v20

    sub-int v3, v19, v20

    .line 743
    .local v3, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v14

    .line 744
    .local v14, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_8

    .line 745
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 746
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 747
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;

    .line 748
    .local v12, "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    if-eqz v12, :cond_3

    iget-boolean v0, v12, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->isDecor:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 749
    iget v0, v12, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->gravity:I

    move/from16 v19, v0

    and-int/lit8 v10, v19, 0x7

    .line 750
    .local v10, "hgrav":I
    iget v0, v12, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->gravity:I

    move/from16 v19, v0

    and-int/lit8 v15, v19, 0x70

    .line 752
    .local v15, "vgrav":I
    const/high16 v17, -0x80000000

    .line 753
    .local v17, "widthMode":I
    const/high16 v8, -0x80000000

    .line 754
    .local v8, "heightMode":I
    const/16 v19, 0x30

    move/from16 v0, v19

    if-eq v15, v0, :cond_0

    const/16 v19, 0x50

    move/from16 v0, v19

    if-ne v15, v0, :cond_4

    :cond_0
    const/4 v6, 0x1

    .line 755
    .local v6, "consumeVertical":Z
    :goto_1
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v10, v0, :cond_1

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v10, v0, :cond_5

    :cond_1
    const/4 v5, 0x1

    .line 757
    .local v5, "consumeHorizontal":Z
    :goto_2
    if-eqz v6, :cond_6

    .line 758
    const/high16 v17, 0x40000000    # 2.0f

    .line 762
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v13, v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    .line 763
    .local v13, "pos":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildWidth(I)I

    move-result v4

    .line 764
    move/from16 v0, v17

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 765
    .local v18, "widthSpec":I
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 766
    .local v9, "heightSpec":I
    move/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/view/View;->measure(II)V

    .line 768
    if-eqz v6, :cond_7

    .line 769
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v3, v3, v19

    .line 744
    .end local v5    # "consumeHorizontal":Z
    .end local v6    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSpec":I
    .end local v10    # "hgrav":I
    .end local v12    # "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    .end local v13    # "pos":I
    .end local v15    # "vgrav":I
    .end local v17    # "widthMode":I
    .end local v18    # "widthSpec":I
    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 754
    .restart local v8    # "heightMode":I
    .restart local v10    # "hgrav":I
    .restart local v12    # "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    .restart local v15    # "vgrav":I
    .restart local v17    # "widthMode":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 755
    .restart local v6    # "consumeVertical":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 759
    .restart local v5    # "consumeHorizontal":Z
    :cond_6
    if-eqz v5, :cond_2

    .line 760
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 770
    .restart local v9    # "heightSpec":I
    .restart local v13    # "pos":I
    .restart local v18    # "widthSpec":I
    :cond_7
    if-eqz v5, :cond_3

    .line 771
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v4, v4, v19

    goto :goto_4

    .line 777
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "consumeHorizontal":Z
    .end local v6    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSpec":I
    .end local v10    # "hgrav":I
    .end local v12    # "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    .end local v13    # "pos":I
    .end local v15    # "vgrav":I
    .end local v17    # "widthMode":I
    .end local v18    # "widthSpec":I
    :cond_8
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mChildWidthMeasureSpec:I

    .line 778
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mChildHeightMeasureSpec:I

    .line 781
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mInLayout:Z

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->populate()V

    .line 783
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mInLayout:Z

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v14

    .line 787
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v14, :cond_b

    .line 788
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 789
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 793
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;

    .line 794
    .restart local v12    # "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    if-eqz v12, :cond_9

    iget-boolean v0, v12, Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;->isDecor:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 795
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mChildWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mChildHeightMeasureSpec:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 787
    .end local v12    # "lp":Lcom/slidingmenu/lib/CustomViewAbove$LayoutParams;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 799
    .end local v2    # "child":Landroid/view/View;
    :cond_b
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 917
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 923
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCalledSuper:Z

    .line 924
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v1

    .line 1594
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1595
    const/4 v6, 0x0

    .line 1596
    .local v6, "index":I
    const/4 v5, 0x1

    .line 1597
    .local v5, "increment":I
    move v2, v1

    .line 1603
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1604
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1605
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1606
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v4

    .line 1607
    .local v4, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1608
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1609
    const/4 v7, 0x1

    .line 1614
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    :goto_2
    return v7

    .line 1599
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1600
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 1601
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 1603
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1614
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 802
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 804
    if-eq p1, p3, :cond_0

    .line 805
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->recomputeScrollPosition(IIII)V

    .line 807
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1147
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 1148
    const/16 v24, 0x0

    .line 1273
    :goto_0
    return v24

    .line 1151
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastTouchAllowed:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 1152
    const/16 v24, 0x0

    goto :goto_0

    .line 1155
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1157
    .local v4, "action":I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v4, v0, :cond_2

    const/16 v24, 0x6

    move/from16 v0, v24

    if-eq v4, v0, :cond_2

    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v4, v0, :cond_2

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v4, v0, :cond_3

    .line 1161
    :cond_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastTouchAllowed:Z

    .line 1166
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCount()I

    move-result v24

    if-nez v24, :cond_4

    .line 1168
    const/16 v24, 0x0

    goto :goto_0

    .line 1163
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastTouchAllowed:Z

    goto :goto_1

    .line 1170
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 1171
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1173
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1175
    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1273
    :cond_6
    :goto_2
    :pswitch_0
    const/16 v24, 0x1

    goto :goto_0

    .line 1181
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 1184
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1185
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    goto :goto_2

    .line 1189
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 1190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 1191
    .local v14, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1192
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1193
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1194
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1196
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_7

    cmpl-float v24, v21, v23

    if-lez v24, :cond_7

    .line 1198
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 1199
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1200
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollState(I)V

    .line 1201
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 1204
    .end local v14    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 1206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1208
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1209
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v7, v24, v20

    .line 1210
    .local v7, "deltaX":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v12, v0

    .line 1212
    .local v12, "oldScrollX":F
    add-float v16, v12, v7

    .line 1214
    .local v16, "scrollX":F
    const/4 v10, 0x0

    .line 1215
    .local v10, "leftBound":F
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v15, v0

    .line 1216
    .local v15, "rightBound":F
    const/16 v24, 0x0

    cmpg-float v24, v16, v24

    if-gez v24, :cond_9

    .line 1217
    const/16 v16, 0x0

    .line 1222
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v16, v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1223
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 1224
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_2

    .line 1218
    :cond_9
    cmpl-float v24, v16, v15

    if-lez v24, :cond_8

    .line 1219
    move/from16 v16, v15

    goto :goto_3

    .line 1228
    .end local v5    # "activePointerIndex":I
    .end local v7    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v20    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 1230
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v9, v0

    .line 1233
    .local v9, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mPopulatePending:Z

    .line 1234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildWidth(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    move/from16 v25, v0

    add-int v19, v24, v25

    .line 1235
    .local v19, "widthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v16

    .line 1236
    .local v16, "scrollX":I
    div-int v6, v16, v19

    .line 1237
    .local v6, "currentPage":I
    rem-int v24, v16, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 1238
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    .line 1239
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1240
    .restart local v5    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1241
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1242
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v13, v9, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->determineTargetPage(IFII)I

    move-result v11

    .line 1244
    .local v11, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 1246
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 1247
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_2

    .line 1248
    .end local v5    # "activePointerIndex":I
    .end local v6    # "currentPage":I
    .end local v9    # "initialVelocity":I
    .end local v11    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "widthWithMargin":I
    .end local v20    # "x":F
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1250
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    goto/16 :goto_2

    .line 1254
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 1255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 1256
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 1257
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_2

    .line 1261
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 1262
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1263
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 1264
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_2

    .line 1268
    .end local v8    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    .line 1270
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v24

    .line 1269
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_2

    .line 1175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1506
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    .line 1507
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1514
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1515
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 7

    .prologue
    .line 603
    iget-boolean v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mPopulatePending:Z

    if-eqz v5, :cond_1

    .line 644
    :cond_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 622
    const/4 v1, 0x0

    .line 623
    .local v1, "curItem":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget v5, v5, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v5, v6, :cond_5

    .line 624
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    .line 629
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 631
    .local v2, "currentFocused":Landroid/view/View;
    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForAnyChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v4

    .line 632
    .local v4, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    :goto_1
    if-eqz v4, :cond_3

    iget v5, v4, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eq v5, v6, :cond_0

    .line 633
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 634
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->infoForChild(Landroid/view/View;)Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    move-result-object v4

    .line 636
    if-eqz v4, :cond_4

    iget v5, v4, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v5, v6, :cond_4

    .line 637
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 633
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 625
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "currentFocused":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    :cond_5
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget v5, v5, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v5, v6, :cond_2

    .line 626
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    goto :goto_0

    .line 631
    .restart local v2    # "currentFocused":Landroid/view/View;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1290
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1291
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCustomViewBehind2:Lcom/slidingmenu/lib/CustomViewBehind;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCustomViewBehind2:Lcom/slidingmenu/lib/CustomViewBehind;

    int-to-float v1, p1

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 1295
    return-void
.end method

.method public setBehindFadeDegree(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 1349
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFadeDegree:F

    .line 1350
    return-void
.end method

.method public setBehindFadeEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1345
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFadeEnabled:Z

    .line 1346
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 658
    new-instance v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    invoke-direct {v0}, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;-><init>()V

    .line 659
    .local v0, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    const/4 v1, 0x1

    iput v1, v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    .line 660
    iput-object p1, v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->object:Ljava/lang/Object;

    .line 661
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget-object v1, v1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->object:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 664
    :cond_0
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 665
    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    .line 666
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 279
    iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mPopulatePending:Z

    .line 280
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 281
    return-void

    :cond_0
    move v0, v1

    .line 280
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mPopulatePending:Z

    .line 291
    invoke-virtual {p0, p1, p2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 292
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 300
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v3, :cond_2

    .line 319
    invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 322
    :cond_2
    if-gez p1, :cond_6

    .line 323
    const/4 p1, 0x0

    .line 327
    :cond_3
    :goto_1
    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 331
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iput-boolean v1, v3, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->scrolling:Z

    .line 332
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iput-boolean v1, v3, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->scrolling:Z

    .line 334
    :cond_4
    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_7

    .line 335
    .local v1, "dispatchSelected":Z
    :goto_2
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    .line 336
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->populate()V

    .line 337
    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildLeft(I)I

    move-result v0

    .line 338
    .local v0, "destX":I
    if-eqz p2, :cond_8

    .line 339
    invoke-virtual {p0, v0, v2, p4}, Lcom/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    .line 340
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v2, :cond_5

    .line 341
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 343
    :cond_5
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 324
    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_6
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    :cond_7
    move v1, v2

    .line 334
    goto :goto_2

    .line 347
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_8
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_9

    .line 348
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 350
    :cond_9
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_a

    .line 351
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 353
    :cond_a
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 354
    invoke-virtual {p0, v0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCustomViewBehind2(Lcom/slidingmenu/lib/CustomViewBehind;)V
    .locals 0
    .param p1, "cvb"    # Lcom/slidingmenu/lib/CustomViewBehind;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCustomViewBehind2:Lcom/slidingmenu/lib/CustomViewBehind;

    .line 670
    return-void
.end method

.method setInternalPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 376
    .local v0, "oldListener":Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 377
    return-object v0
.end method

.method protected setMenu(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 647
    new-instance v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    invoke-direct {v0}, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;-><init>()V

    .line 648
    .local v0, "ii":Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    .line 649
    iput-object p1, v0, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->object:Ljava/lang/Object;

    .line 650
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    iget-object v1, v1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->object:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 653
    :cond_0
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 654
    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mWindow:Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    .line 655
    return-void
.end method

.method public setOnPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 366
    return-void
.end method

.method public setScrollScale(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 1283
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1284
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollScale:F

    .line 1286
    :cond_0
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 410
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->refreshDrawableState()V

    .line 411
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 413
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShadowWidth(I)V
    .locals 1
    .param p1, "shadowWidth"    # I

    .prologue
    .line 389
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    .line 390
    .local v0, "oldWidth":I
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    .line 391
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 392
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    .line 496
    return-void
.end method

.method public setTouchModeAbove(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 960
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeAbove:I

    .line 961
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 968
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchModeBehind:I

    .line 969
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    .line 506
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 518
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 555
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v2

    .line 522
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v3

    .line 523
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 524
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 525
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 527
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollState(I)V

    goto :goto_0

    .line 531
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 532
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 533
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollState(I)V

    .line 535
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCustomWidth()I

    move-result v11

    .line 536
    .local v11, "width":I
    div-int/lit8 v9, v11, 0x2

    .line 537
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 538
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v12, v9

    .line 539
    invoke-virtual {p0, v8}, Lcom/slidingmenu/lib/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v1, v12

    .line 541
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 542
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 543
    if-lez p3, :cond_2

    .line 544
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 551
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 553
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 554
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    goto :goto_0

    .line 546
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v12, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowWidth:I

    add-int/2addr v12, v11

    int-to-float v12, v12

    div-float v10, v1, v12

    .line 547
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v1, v12

    float-to-int v6, v1

    .line 549
    const/16 v6, 0x258

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
