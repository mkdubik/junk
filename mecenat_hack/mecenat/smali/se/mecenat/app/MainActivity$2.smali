.class Lse/mecenat/app/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/MainActivity;


# direct methods
.method constructor <init>(Lse/mecenat/app/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/MainActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 151
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webTitle:Landroid/widget/TextView;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$200(Lse/mecenat/app/MainActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v6}, Lse/mecenat/app/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "DroidSans-Bold.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$300(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lse/mecenat/app/MecenatWebView;->setVisibility(I)V

    .line 155
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->navigationButtonClickArea:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$400(Lse/mecenat/app/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 158
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$500(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v5

    iget-object v6, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    sget-object v7, Lse/mecenat/app/MecenatWebView$WebContentType;->MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v5, v6, v7}, Lse/mecenat/app/MecenatWebView;->init(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView$WebContentType;)V

    .line 159
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webViewContent:Lse/mecenat/app/MecenatWebView;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$600(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v5

    iget-object v6, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    sget-object v7, Lse/mecenat/app/MecenatWebView$WebContentType;->CONTENT:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v5, v6, v7}, Lse/mecenat/app/MecenatWebView;->init(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView$WebContentType;)V

    .line 160
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webViewSubNav:Lse/mecenat/app/MecenatWebView;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$300(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v5

    iget-object v6, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    sget-object v7, Lse/mecenat/app/MecenatWebView$WebContentType;->SUB_NAV:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v5, v6, v7}, Lse/mecenat/app/MecenatWebView;->init(Lse/mecenat/app/MecenatActivityInterface;Lse/mecenat/app/MecenatWebView$WebContentType;)V

    .line 163
    new-instance v4, Lse/mecenat/app/MainActivity$2$1;

    invoke-direct {v4, p0}, Lse/mecenat/app/MainActivity$2$1;-><init>(Lse/mecenat/app/MainActivity$2;)V

    .line 169
    .local v4, "retryClick":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->retryButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$800(Lse/mecenat/app/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->retryButtonClickArea:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$900(Lse/mecenat/app/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v3, Lse/mecenat/app/MainActivity$2$2;

    invoke-direct {v3, p0}, Lse/mecenat/app/MainActivity$2$2;-><init>(Lse/mecenat/app/MainActivity$2;)V

    .line 177
    .local v3, "navigationClick":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->navigationButtonClickArea:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$400(Lse/mecenat/app/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->navigationButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$1000(Lse/mecenat/app/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v5}, Lse/mecenat/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v5}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v5

    invoke-virtual {v5}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "defaultOpenUrl":Ljava/lang/String;
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # invokes: Lse/mecenat/app/MainActivity;->assertSignedIn()Z
    invoke-static {v5}, Lse/mecenat/app/MainActivity;->access$1100(Lse/mecenat/app/MainActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    const/4 v6, 0x1

    # invokes: Lse/mecenat/app/MainActivity;->fireEvent(I)V
    invoke-static {v5, v6}, Lse/mecenat/app/MainActivity;->access$1200(Lse/mecenat/app/MainActivity;I)V

    .line 187
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    iget-object v6, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v6}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v6

    invoke-virtual {v6}, Lse/mecenat/app/MecenatApplication;->getMenuUrl()Ljava/lang/String;

    move-result-object v6

    # invokes: Lse/mecenat/app/MainActivity;->loadUrlMenu(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lse/mecenat/app/MainActivity;->access$1300(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    .line 190
    if-eqz v1, :cond_1

    const-string v5, "ACTION"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ACTION"

    .line 191
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "openurl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # invokes: Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V
    invoke-static {v5, v0}, Lse/mecenat/app/MainActivity;->access$1400(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    .line 196
    if-eqz v1, :cond_0

    const-string v5, "URL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    const-string v5, "URL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "intentUrl":Ljava/lang/String;
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    iget-object v6, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;
    invoke-static {v6}, Lse/mecenat/app/MainActivity;->access$500(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v6

    iget-object v7, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v7}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v7

    .line 200
    invoke-virtual {v7}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v8}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v8

    iget-object v8, v8, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v9, "app-push-notification-mode"

    invoke-interface {v8, v9, v10}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 199
    invoke-static {v2, v7, v8}, Lse/mecenat/app/common/AppCommand;->parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lse/mecenat/app/MainActivity;->handleUserAction(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Lse/mecenat/app/common/AppCommand;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # invokes: Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lse/mecenat/app/MainActivity;->access$1400(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    .line 224
    .end local v2    # "intentUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 208
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lse/mecenat/app/MainActivity;->access$1400(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    if-eqz v1, :cond_3

    const-string v5, "URL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    const-string v5, "URL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "intentUrl":Ljava/lang/String;
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    iget-object v6, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # getter for: Lse/mecenat/app/MainActivity;->webViewMenu:Lse/mecenat/app/MecenatWebView;
    invoke-static {v6}, Lse/mecenat/app/MainActivity;->access$500(Lse/mecenat/app/MainActivity;)Lse/mecenat/app/MecenatWebView;

    move-result-object v6

    iget-object v7, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    .line 214
    invoke-virtual {v7}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v7

    invoke-virtual {v7}, Lse/mecenat/app/MecenatApplication;->getDefaultContentUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    invoke-virtual {v8}, Lse/mecenat/app/MainActivity;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v8

    iget-object v8, v8, Lse/mecenat/app/MecenatApplication;->appSettings:Lse/mecenat/app/SettingsInterface;

    const-string v9, "app-push-notification-mode"

    invoke-interface {v8, v9, v10}, Lse/mecenat/app/SettingsInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 213
    invoke-static {v0, v7, v8}, Lse/mecenat/app/common/AppCommand;->parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lse/mecenat/app/MainActivity;->handleUserAction(Lse/mecenat/app/MecenatWebView;Ljava/lang/String;Lse/mecenat/app/common/AppCommand;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # invokes: Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lse/mecenat/app/MainActivity;->access$1400(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    .end local v2    # "intentUrl":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lse/mecenat/app/MainActivity$2;->this$0:Lse/mecenat/app/MainActivity;

    # invokes: Lse/mecenat/app/MainActivity;->loadUrlContent(Ljava/lang/String;)V
    invoke-static {v5, v0}, Lse/mecenat/app/MainActivity;->access$1400(Lse/mecenat/app/MainActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
