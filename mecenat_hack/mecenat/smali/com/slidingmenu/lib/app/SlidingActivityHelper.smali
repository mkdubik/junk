.class public Lcom/slidingmenu/lib/app/SlidingActivityHelper;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBroadcasting:Z

.field private mEnableSlide:Z

.field private mOnPostCreateCalled:Z

.field private mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

.field private mViewAbove:Landroid/view/View;

.field private mViewBehind:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 24
    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 28
    iput-object p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 80
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 85
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/slidingmenu/lib/R$layout;->slidingmenumain:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/slidingmenu/lib/SlidingMenu;

    iput-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 124
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isBehindShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showAbove()V

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 36
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    if-nez v5, :cond_1

    .line 37
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Both setBehindContentView must be called in onCreate in addition to setContentView."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_1
    iput-boolean v9, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 44
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    new-array v6, v9, [I

    const v7, 0x1010054

    aput v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 47
    .local v1, "background":I
    iget-boolean v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    if-eqz v5, :cond_2

    .line 48
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v5, v9}, Lcom/slidingmenu/lib/SlidingMenu;->setFitsSystemWindows(Z)V

    .line 50
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 51
    .local v2, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 53
    .local v3, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v5, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setViewAbove(Landroid/view/View;)V

    .line 56
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    .end local v2    # "decor":Landroid/view/ViewGroup;
    .end local v3    # "decorChild":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 59
    :cond_2
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 60
    .local v4, "parent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 61
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    :cond_3
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_4

    .line 65
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    :cond_4
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v6, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setViewAbove(Landroid/view/View;)V

    .line 68
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    .line 91
    :cond_0
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setViewBehind(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 95
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "enableSlidingActionBar must be called in onCreate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-boolean p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 76
    return-void
.end method

.method public showAbove()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showAbove()V

    .line 117
    return-void
.end method

.method public showBehind()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showBehind()V

    .line 121
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isBehindShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showAbove()V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showBehind()V

    goto :goto_0
.end method
