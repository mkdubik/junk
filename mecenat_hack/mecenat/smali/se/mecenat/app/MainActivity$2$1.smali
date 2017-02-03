.class Lse/mecenat/app/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MainActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lse/mecenat/app/MainActivity$2;


# direct methods
.method constructor <init>(Lse/mecenat/app/MainActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lse/mecenat/app/MainActivity$2;

    .prologue
    .line 163
    iput-object p1, p0, Lse/mecenat/app/MainActivity$2$1;->this$1:Lse/mecenat/app/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lse/mecenat/app/MainActivity$2$1;->this$1:Lse/mecenat/app/MainActivity$2;

    iget-object v0, v0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    const/4 v1, 0x0

    # setter for: Lse/mecenat/app/MainActivity;->errorFromContent:Z
    invoke-static {v0, v1}, Lse/mecenat/app/MainActivity;->access$702(Lse/mecenat/app/MainActivity;Z)Z

    .line 166
    iget-object v0, p0, Lse/mecenat/app/MainActivity$2$1;->this$1:Lse/mecenat/app/MainActivity$2;

    iget-object v0, v0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;
    invoke-static {v0}, Lse/mecenat/app/MainActivity;->access$600(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v0

    invoke-virtual {v0}, Lse/mecenat/app/MecenatWebView;->retry()V

    .line 167
    return-void
.end method
