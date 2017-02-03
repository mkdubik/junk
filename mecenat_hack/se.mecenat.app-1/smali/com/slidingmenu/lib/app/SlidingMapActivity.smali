.class public abstract Lcom/slidingmenu/lib/app/SlidingMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SlidingMapActivity.java"


# instance fields
.field private mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 31
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    .line 19
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 82
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 83
    .end local v0    # "b":Z
    :goto_0
    return v0

    .restart local v0    # "b":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingMapActivity;->setBehindContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 52
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingMapActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingMapActivity;->setContentView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 39
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingMapActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 77
    return-void
.end method

.method public showAbove()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showAbove()V

    .line 69
    return-void
.end method

.method public showBehind()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showBehind()V

    .line 73
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingMapActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->toggle()V

    .line 65
    return-void
.end method
