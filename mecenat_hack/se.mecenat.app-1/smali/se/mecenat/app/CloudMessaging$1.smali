.class final Lse/mecenat/app/CloudMessaging$1;
.super Ljava/lang/Object;
.source "CloudMessaging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/CloudMessaging;->checkPlayServices(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lse/mecenat/app/CloudMessaging$1;->val$resultCode:I

    iput-object p2, p0, Lse/mecenat/app/CloudMessaging$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lse/mecenat/app/CloudMessaging$1;->val$resultCode:I

    iget-object v1, p0, Lse/mecenat/app/CloudMessaging$1;->val$context:Landroid/app/Activity;

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    return-void
.end method
