.class Lse/mecenat/app/WindowActivity$2;
.super Ljava/lang/Object;
.source "WindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/WindowActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 121
    iput-object p1, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 125
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v5, v5, Lse/mecenat/app/WindowActivity;->webTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-virtual {v6}, Lse/mecenat/app/WindowActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "DroidSans-Bold.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;
    invoke-static {v5}, Lse/mecenat/app/WindowActivity;->access$200(Lse/mecenat/app/WindowActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v5

    iget-object v6, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    sget-object v7, Lse/mecenat/app/MecenatWebView$WebContentType;->WINDOW:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v5, v6, v7}, Lse/mecenat/app/MecenatWebView;->init(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView$WebContentType;)V

    .line 128
    iget-object v6, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const v7, 0x7f0c0075

    invoke-virtual {v5, v7}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    # setter for: Lse/mecenat/app/WindowActivity;->switcher:Landroid/widget/ViewFlipper;
    invoke-static {v6, v5}, Lse/mecenat/app/WindowActivity;->access$102(Lse/mecenat/app/WindowActivity;Landroid/widget/ViewFlipper;)Landroid/widget/ViewFlipper;

    .line 129
    iget-object v6, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const v7, 0x7f0c0074

    invoke-virtual {v5, v7}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    # setter for: Lse/mecenat/app/WindowActivity;->exitButton:Landroid/widget/ImageButton;
    invoke-static {v6, v5}, Lse/mecenat/app/WindowActivity;->access$302(Lse/mecenat/app/WindowActivity;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 130
    iget-object v6, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const v7, 0x7f0c0073

    invoke-virtual {v5, v7}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    # setter for: Lse/mecenat/app/WindowActivity;->exitButtonClickArea:Landroid/widget/FrameLayout;
    invoke-static {v6, v5}, Lse/mecenat/app/WindowActivity;->access$402(Lse/mecenat/app/WindowActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 131
    iget-object v6, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const v7, 0x7f0c007d

    invoke-virtual {v5, v7}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    # setter for: Lse/mecenat/app/WindowActivity;->retryButton:Landroid/widget/ImageButton;
    invoke-static {v6, v5}, Lse/mecenat/app/WindowActivity;->access$502(Lse/mecenat/app/WindowActivity;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 132
    iget-object v6, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const v7, 0x7f0c007c

    invoke-virtual {v5, v7}, Lse/mecenat/app/WindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    # setter for: Lse/mecenat/app/WindowActivity;->retryButtonClickArea:Landroid/widget/LinearLayout;
    invoke-static {v6, v5}, Lse/mecenat/app/WindowActivity;->access$602(Lse/mecenat/app/WindowActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 134
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-virtual {v5}, Lse/mecenat/app/WindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 135
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "METHOD"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "method":Ljava/lang/String;
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    invoke-static {v3}, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->valueOf(Ljava/lang/String;)Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    move-result-object v6

    # setter for: Lse/mecenat/app/WindowActivity;->intentType:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;
    invoke-static {v5, v6}, Lse/mecenat/app/WindowActivity;->access$702(Lse/mecenat/app/WindowActivity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    .line 138
    new-instance v4, Lse/mecenat/app/WindowActivity$2$1;

    invoke-direct {v4, p0}, Lse/mecenat/app/WindowActivity$2$1;-><init>(Lse/mecenat/app/WindowActivity$2;)V

    .line 149
    .local v4, "retryClick":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->retryButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lse/mecenat/app/WindowActivity;->access$500(Lse/mecenat/app/WindowActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->retryButtonClickArea:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lse/mecenat/app/WindowActivity;->access$600(Lse/mecenat/app/WindowActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v1, Lse/mecenat/app/WindowActivity$2$2;

    invoke-direct {v1, p0}, Lse/mecenat/app/WindowActivity$2$2;-><init>(Lse/mecenat/app/WindowActivity$2;)V

    .line 160
    .local v1, "exitClick":Landroid/view/View$OnClickListener;
    const-string v5, "EXIT"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    .local v0, "exitButtonEnabled":Z
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->exitButtonClickArea:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lse/mecenat/app/WindowActivity;->access$400(Lse/mecenat/app/WindowActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->exitButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lse/mecenat/app/WindowActivity;->access$300(Lse/mecenat/app/WindowActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    # getter for: Lse/mecenat/app/WindowActivity;->exitButtonClickArea:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lse/mecenat/app/WindowActivity;->access$400(Lse/mecenat/app/WindowActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object v5, p0, Lse/mecenat/app/WindowActivity$2;->this$0:Lse/mecenat/app/WindowActivity;

    const-string v6, "URL"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lse/mecenat/app/WindowActivity;->loadUrlContent(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lse/mecenat/app/WindowActivity;->access$900(Lse/mecenat/app/WindowActivity;Ljava/lang/String;)V

    .line 168
    return-void

    .line 164
    :cond_0
    const/4 v5, 0x4

    goto :goto_0
.end method
