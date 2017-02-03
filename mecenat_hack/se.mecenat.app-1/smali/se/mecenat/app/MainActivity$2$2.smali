.class Lse/mecenat/app/MainActivity$2$2;
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
    .line 172
    iput-object p1, p0, Lse/mecenat/app/MainActivity$2$2;->this$1:Lse/mecenat/app/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lse/mecenat/app/MainActivity$2$2;->this$1:Lse/mecenat/app/MainActivity$2;

    iget-object v0, v0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v0}, Lse/mecenat/app/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showBehind()V

    .line 175
    return-void
.end method
