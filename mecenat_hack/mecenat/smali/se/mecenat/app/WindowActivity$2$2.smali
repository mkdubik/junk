.class Lse/mecenat/app/WindowActivity$2$2;
.super Ljava/lang/Object;
.source "WindowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/WindowActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lse/mecenat/app/WindowActivity$2;


# direct methods
.method constructor <init>(Lse/mecenat/app/WindowActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lse/mecenat/app/WindowActivity$2;

    .prologue
    .line 153
    iput-object p1, p0, Lse/mecenat/app/WindowActivity$2$2;->this$1:Lse/mecenat/app/WindowActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$2$2;->this$1:Lse/mecenat/app/WindowActivity$2;

    iget-object v0, v0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-virtual {v0}, Lse/mecenat/app/WindowActivity;->finish()V

    .line 156
    iget-object v0, p0, Lse/mecenat/app/WindowActivity$2$2;->this$1:Lse/mecenat/app/WindowActivity$2;

    iget-object v0, v0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const/4 v1, 0x0

    const v2, 0x7f04000b

    invoke-virtual {v0, v1, v2}, Lse/mecenat/app/WindowActivity;->overridePendingTransition(II)V

    .line 157
    return-void
.end method
