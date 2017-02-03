.class Lse/mecenat/app/WindowActivity$3;
.super Ljava/lang/Object;
.source "WindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/WindowActivity;->bgOnPageLoading(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/WindowActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/WindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/WindowActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lse/mecenat/app/WindowActivity$3;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 230
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$3;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-virtual {v0}, Lse/mecenat/app/WindowActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lse/mecenat/app/MecenatApplication;->refreshCache(ZLjava/lang/Boolean;)V

    .line 231
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$3;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-static {v0}, Lse/mecenat/app/api/ApiService;->sendDeviceInfo(Landroid/content/Context;)V

    .line 232
    return-void
.end method
