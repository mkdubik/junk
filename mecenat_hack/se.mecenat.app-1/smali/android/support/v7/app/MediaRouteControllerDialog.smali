.class public Landroid/support/v7/app/MediaRouteControllerDialog;
.super Landroid/app/Dialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;,
        Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;,
        Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouteControllerDialog"

.field private static final VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mControlView:Landroid/view/View;

.field private mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

.field private mCreated:Z

.field private mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private mDisconnectButton:Landroid/widget/Button;

.field private mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlayPauseButton:Landroid/widget/ImageButton;

.field private final mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mRouteNameView:Landroid/widget/TextView;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSettingsButton:Landroid/widget/ImageButton;

.field private mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTitlesWrapper:Landroid/view/View;

.field private mVolumeControlEnabled:Z

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeSlider:Landroid/widget/SeekBar;

.field private mVolumeSliderTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 102
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 104
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$1;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 105
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 106
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$1;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 107
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 108
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 109
    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p1, "x1"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p1, "x1"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/app/MediaRouteControllerDialog;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return v0
.end method

.method static synthetic access$302(Landroid/support/v7/app/MediaRouteControllerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return p1
.end method

.method static synthetic access$400(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolume()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->update()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method static synthetic access$802(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p1, "x1"    # Landroid/support/v4/media/session/MediaControllerCompat;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p1
.end method

.method static synthetic access$900(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    return-object v0
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$attr;->mediaRouteConnectingDrawable:I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    :goto_0
    return-object v0

    .line 420
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 421
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$attr;->mediaRouteOnDrawable:I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private isVolumeControlAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 441
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 5
    .param p1, "sessionToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 173
    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 175
    :cond_0
    if-nez p1, :cond_2

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    if-eqz v2, :cond_1

    .line 182
    :try_start_0
    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v2, :cond_3

    .line 187
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 189
    :cond_3
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v2, :cond_4

    move-object v1, v3

    .line 191
    .local v1, "metadata":Landroid/support/v4/media/MediaMetadataCompat;
    :goto_2
    if-nez v1, :cond_5

    move-object v2, v3

    :goto_3
    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 192
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v2, :cond_6

    :goto_4
    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 193
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->update()Z

    goto :goto_0

    .line 183
    .end local v1    # "metadata":Landroid/support/v4/media/MediaMetadataCompat;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouteControllerDialog"

    const-string v4, "Error creating media controller in setMediaSession."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    goto :goto_2

    .line 191
    .restart local v1    # "metadata":Landroid/support/v4/media/MediaMetadataCompat;
    :cond_5
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    goto :goto_3

    .line 192
    :cond_6
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    goto :goto_4
.end method

.method private update()Z
    .locals 10

    .prologue
    .line 319
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    .line 321
    const/4 v5, 0x0

    .line 409
    :goto_0
    return v5

    .line 323
    :cond_1
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    if-nez v5, :cond_2

    .line 324
    const/4 v5, 0x0

    goto :goto_0

    .line 327
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolume()V

    .line 329
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteNameView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->canDisconnect()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 332
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    :goto_1
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getSettingsIntent()Landroid/content/IntentSender;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 338
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSettingsButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 343
    :goto_2
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    if-nez v5, :cond_4

    .line 344
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-eqz v5, :cond_c

    .line 345
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 346
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v6}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    :goto_3
    const/4 v0, 0x0

    .line 358
    .local v0, "haveText":Z
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 359
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 360
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const/4 v0, 0x1

    .line 366
    :goto_4
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 367
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 368
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v6}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const/4 v0, 0x1

    .line 374
    :goto_5
    if-nez v0, :cond_b

    .line 375
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitlesWrapper:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .end local v0    # "haveText":Z
    .end local v4    # "text":Ljava/lang/CharSequence;
    :goto_6
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v5, :cond_12

    .line 384
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    :cond_3
    const/4 v1, 0x1

    .line 386
    .local v1, "isPlaying":Z
    :goto_7
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v6

    const-wide/16 v8, 0x204

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    const/4 v3, 0x1

    .line 388
    .local v3, "supportsPlay":Z
    :goto_8
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v6

    const-wide/16 v8, 0x202

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f

    const/4 v2, 0x1

    .line 390
    .local v2, "supportsPause":Z
    :goto_9
    if-eqz v1, :cond_10

    if-eqz v2, :cond_10

    .line 391
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 392
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    invoke-static {v6, v7}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 394
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v7/mediarouter/R$string;->mr_media_route_controller_pause:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 409
    .end local v1    # "isPlaying":Z
    .end local v2    # "supportsPause":Z
    .end local v3    # "supportsPlay":Z
    :cond_4
    :goto_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 334
    :cond_5
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 340
    :cond_6
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSettingsButton:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 348
    :cond_7
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 350
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v6}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 351
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 353
    :cond_8
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 363
    .restart local v0    # "haveText":Z
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_9
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 371
    :cond_a
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 377
    :cond_b
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitlesWrapper:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 380
    .end local v0    # "haveText":Z
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_c
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitlesWrapper:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 384
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 386
    .restart local v1    # "isPlaying":Z
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 388
    .restart local v3    # "supportsPlay":Z
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 396
    .restart local v2    # "supportsPause":Z
    :cond_10
    if-nez v1, :cond_11

    if-eqz v3, :cond_11

    .line 397
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    invoke-static {v6, v7}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 400
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v7/mediarouter/R$string;->mr_media_route_controller_play:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 403
    :cond_11
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_a

    .line 406
    .end local v1    # "isPlaying":Z
    .end local v2    # "supportsPause":Z
    .end local v3    # "supportsPlay":Z
    :cond_12
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private updateVolume()V
    .locals 2

    .prologue
    .line 429
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    if-nez v0, :cond_0

    .line 430
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isVolumeControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 433
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMediaControlView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    return-object v0
.end method

.method public getMediaSession()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public isVolumeControlEnabled()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 286
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    sget-object v1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 288
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 207
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 211
    sget v2, Landroid/support/v7/mediarouter/R$layout;->mr_media_route_controller_material_dialog_b:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->setContentView(I)V

    .line 213
    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$1;)V

    .line 215
    .local v1, "listener":Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;
    sget v2, Landroid/support/v7/mediarouter/R$id;->disconnect:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 216
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v2, Landroid/support/v7/mediarouter/R$id;->stop:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 219
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    sget v2, Landroid/support/v7/mediarouter/R$id;->settings:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSettingsButton:Landroid/widget/ImageButton;

    .line 222
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    sget v2, Landroid/support/v7/mediarouter/R$id;->art:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 225
    sget v2, Landroid/support/v7/mediarouter/R$id;->title:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 226
    sget v2, Landroid/support/v7/mediarouter/R$id;->subtitle:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 227
    sget v2, Landroid/support/v7/mediarouter/R$id;->text_wrapper:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitlesWrapper:Landroid/view/View;

    .line 228
    sget v2, Landroid/support/v7/mediarouter/R$id;->play_pause:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 229
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v2, Landroid/support/v7/mediarouter/R$id;->route_name:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteNameView:Landroid/widget/TextView;

    .line 231
    sget v2, Landroid/support/v7/mediarouter/R$id;->media_route_volume_layout:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 232
    sget v2, Landroid/support/v7/mediarouter/R$id;->media_route_volume_slider:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 233
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v3, Landroid/support/v7/app/MediaRouteControllerDialog$1;

    invoke-direct {v3, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$1;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 269
    iput-boolean v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    .line 270
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->update()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    .line 272
    sget v2, Landroid/support/v7/mediarouter/R$id;->media_route_control_frame:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 274
    .local v0, "controlFrame":Landroid/widget/FrameLayout;
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 275
    sget v2, Landroid/support/v7/mediarouter/R$id;->default_control_frame:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 279
    .end local v0    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 296
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 297
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x19

    const/4 v1, 0x1

    .line 301
    if-eq p1, v3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 303
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 306
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 303
    goto :goto_0

    .line 306
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 311
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setVolumeControlEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eq v0, p1, :cond_0

    .line 148
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 149
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolume()V

    .line 153
    :cond_0
    return-void
.end method
