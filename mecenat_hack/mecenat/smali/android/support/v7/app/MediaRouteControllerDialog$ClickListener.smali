.class final Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p2, "x1"    # Landroid/support/v7/app/MediaRouteControllerDialog$1;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 490
    .local v7, "id":I
    sget v1, Landroid/support/v7/mediarouter/R$id;->stop:I

    if-eq v7, v1, :cond_0

    sget v1, Landroid/support/v7/mediarouter/R$id;->disconnect:I

    if-ne v7, v1, :cond_4

    .line 491
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$600(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1200(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter;

    move-result-object v2

    sget v1, Landroid/support/v7/mediarouter/R$id;->stop:I

    if-ne v7, v1, :cond_3

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    .line 496
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    .line 516
    :cond_2
    :goto_1
    return-void

    .line 492
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 497
    :cond_4
    sget v1, Landroid/support/v7/mediarouter/R$id;->play_pause:I

    if-ne v7, v1, :cond_6

    .line 498
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1000(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 499
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1000(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 500
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    goto :goto_1

    .line 502
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto :goto_1

    .line 505
    :cond_6
    sget v1, Landroid/support/v7/mediarouter/R$id;->settings:I

    if-ne v7, v1, :cond_2

    .line 506
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$600(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getSettingsIntent()Landroid/content/IntentSender;

    move-result-object v0

    .line 507
    .local v0, "is":Landroid/content/IntentSender;
    if-eqz v0, :cond_2

    .line 509
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V

    .line 510
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 511
    :catch_0
    move-exception v6

    .line 512
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "MediaRouteControllerDialog"

    const-string v2, "Error opening route settings."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
