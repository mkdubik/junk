.class public Lcom/slidingmenu/lib/app/SlidingListActivity;
.super Landroid/app/ListActivity;
.source "SlidingListActivity.java"

# interfaces
.implements Lcom/slidingmenu/lib/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 34
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v1, Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-direct {v1, p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    .line 19
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "listView":Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 85
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 86
    .end local v0    # "b":Z
    :goto_0
    return v0

    .restart local v0    # "b":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setBehindContentView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 55
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 42
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 80
    return-void
.end method

.method public showAbove()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showAbove()V

    .line 72
    return-void
.end method

.method public showBehind()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showBehind()V

    .line 76
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->toggle()V

    .line 68
    return-void
.end method
