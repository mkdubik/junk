.class public abstract Lcom/actionbarsherlock/app/SherlockMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SherlockMapActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;


# instance fields
.field private mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCloseOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->closeOptionsMenu()V

    .line 157
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockMapActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockMapActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockMapActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    return-object v0
.end method

.method public getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    .line 124
    return-void
.end method

.method public onActionModeFinished(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 48
    return-void
.end method

.method public onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockMapActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockMapActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPanelClosed(ILandroid/view/Menu;)V

    .line 102
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPause()V

    .line 70
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 71
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPostResume()V

    .line 64
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostResume()V

    .line 65
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    invoke-virtual {p0, p3}, Lcom/actionbarsherlock/app/SherlockMapActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchStop()V

    .line 76
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 77
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    .line 88
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 89
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOpenOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->openOptionsMenu()V

    .line 150
    :cond_0
    return-void
.end method

.method public requestWindowFeature(J)V
    .locals 3
    .param p1, "featureId"    # J

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 227
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(I)V

    .line 213
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgress(I)V

    .line 236
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminate(Z)V

    .line 240
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 244
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarVisibility(Z)V

    .line 248
    return-void
.end method

.method public setSupportSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setSecondaryProgress(I)V

    .line 252
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/actionbarsherlock/view/ActionMode$Callback;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockMapActivity;->invalidateOptionsMenu()V

    .line 128
    return-void
.end method
