.class Lse/mecenat/app/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MainActivity;->bgOnLoadResource(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MainActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 537
    iput-object p1, p0, Lse/mecenat/app/MainActivity$4;->this$0:Lse/mecenat/app/MainActivity;

    iput-object p2, p0, Lse/mecenat/app/MainActivity$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lse/mecenat/app/MainActivity$4;->this$0:Lse/mecenat/app/MainActivity;

    iget-object v1, p0, Lse/mecenat/app/MainActivity$4;->val$url:Ljava/lang/String;

    # invokes: Lse/mecenat/app/MainActivity;->loadUrlSubNav(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lse/mecenat/app/MainActivity;->access$1500(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    .line 541
    return-void
.end method
