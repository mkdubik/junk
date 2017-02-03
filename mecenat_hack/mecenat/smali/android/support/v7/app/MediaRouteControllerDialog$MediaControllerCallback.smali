.class final Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p2, "x1"    # Landroid/support/v7/app/MediaRouteControllerDialog$1;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    .line 481
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    # setter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-static {v1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1102(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/support/v4/media/MediaDescriptionCompat;

    .line 482
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # invokes: Landroid/support/v7/app/MediaRouteControllerDialog;->update()Z
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Z

    .line 483
    return-void

    .line 481
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # setter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-static {v0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1002(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 476
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # invokes: Landroid/support/v7/app/MediaRouteControllerDialog;->update()Z
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Z

    .line 477
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$900(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 469
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$802(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/session/MediaControllerCompat;

    .line 471
    :cond_0
    return-void
.end method
