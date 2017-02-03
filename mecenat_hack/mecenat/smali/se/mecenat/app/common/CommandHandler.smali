.class public Lse/mecenat/app/common/CommandHandler;
.super Ljava/lang/Object;
.source "CommandHandler.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private appCommand:Lse/mecenat/app/common/AppCommand;

.field private final appUrl:Ljava/lang/String;

.field private final callingContext:Landroid/app/Activity;

.field private callingWebView:Lse/mecenat/app/MecenatWebView;

.field private final commandUrl:Ljava/lang/String;

.field private final shouldClose:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lse/mecenat/app/common/CommandHandler;->shouldClose:Z

    .line 43
    iput-object p1, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lse/mecenat/app/common/CommandHandler;->appUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static Handle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/common/CommandHandler;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lse/mecenat/app/common/CommandHandler;

    invoke-direct {v0, p0, p1, p2}, Lse/mecenat/app/common/CommandHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public From(Lse/mecenat/app/MecenatWebView;)Lse/mecenat/app/common/CommandHandler;
    .locals 0
    .param p1, "fromWebView"    # Lse/mecenat/app/MecenatWebView;

    .prologue
    .line 49
    iput-object p1, p0, Lse/mecenat/app/common/CommandHandler;->callingWebView:Lse/mecenat/app/MecenatWebView;

    .line 50
    return-object p0
.end method

.method public Using(Lse/mecenat/app/common/AppCommand;)Lse/mecenat/app/common/CommandHandler;
    .locals 0
    .param p1, "command"    # Lse/mecenat/app/common/AppCommand;

    .prologue
    .line 54
    iput-object p1, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    .line 55
    return-object p0
.end method

.method public closeCurrentActivity()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getCommandAction()Lse/mecenat/app/common/CommandAction;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 60
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    if-nez v9, :cond_0

    .line 61
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    iget-object v10, p0, Lse/mecenat/app/common/CommandHandler;->appUrl:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lse/mecenat/app/common/AppCommand;->parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;

    move-result-object v9

    iput-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    .line 65
    :cond_0
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v10, Lse/mecenat/app/common/AppCommand;->SIGN_OUT:Lse/mecenat/app/common/AppCommand;

    if-ne v9, v10, :cond_1

    .line 66
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->SIGN_OUT:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v11}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    .line 177
    :goto_0
    return-object v7

    .line 69
    :cond_1
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v10, Lse/mecenat/app/common/AppCommand;->BROWSER:Lse/mecenat/app/common/AppCommand;

    if-ne v9, v10, :cond_3

    .line 71
    const/4 v6, 0x0

    .line 74
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    check-cast v7, Lse/mecenat/app/MecenatActivityInterface;

    invoke-interface {v7}, Lse/mecenat/app/MecenatActivityInterface;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v7

    invoke-virtual {v7}, Lse/mecenat/app/MecenatApplication;->getCurrentDomainUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    check-cast v7, Lse/mecenat/app/MecenatActivityInterface;

    invoke-interface {v7}, Lse/mecenat/app/MecenatActivityInterface;->getAppState()Lse/mecenat/app/MecenatApplication;

    move-result-object v7

    const-string v8, "auto"

    invoke-virtual {v7, v8}, Lse/mecenat/app/MecenatApplication;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "uid":Ljava/lang/String;
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "uid"

    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "fromapp"

    const-string v9, "1"

    .line 79
    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 87
    .end local v5    # "uid":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    .local v0, "browserIntent":Landroid/content/Intent;
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v0}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 91
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v10, Lse/mecenat/app/common/AppCommand;->REVIEW:Lse/mecenat/app/common/AppCommand;

    if-ne v9, v10, :cond_4

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 94
    .restart local v6    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .local v1, "goToMarket":Landroid/content/Intent;
    const/high16 v7, 0x48080000    # 139264.0f

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v1}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 100
    .end local v1    # "goToMarket":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v10, Lse/mecenat/app/common/AppCommand;->WIN:Lse/mecenat/app/common/AppCommand;

    if-ne v9, v10, :cond_5

    .line 102
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    sget-object v9, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->URL:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    invoke-static {v7, v9}, Lse/mecenat/app/common/WindowIntentBuilder;->Create(Landroid/app/Activity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v7

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lse/mecenat/app/common/WindowIntentBuilder;->WithUrl(Ljava/lang/String;)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v7

    .line 103
    invoke-virtual {v7, v8}, Lse/mecenat/app/common/WindowIntentBuilder;->WithExitButton(Z)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lse/mecenat/app/common/WindowIntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 105
    .local v2, "intent":Landroid/content/Intent;
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_RESULT_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 108
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v10, Lse/mecenat/app/common/AppCommand;->CONTENT_VIEW:Lse/mecenat/app/common/AppCommand;

    if-ne v9, v10, :cond_8

    .line 110
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    const-class v8, Lse/mecenat/app/MainActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "URL"

    iget-object v8, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingWebView:Lse/mecenat/app/MecenatWebView;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v7}, Lse/mecenat/app/MecenatWebView;->getWebContentType()Lse/mecenat/app/MecenatWebView$WebContentType;

    move-result-object v7

    sget-object v8, Lse/mecenat/app/MecenatWebView$WebContentType;->CONTENT:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-ne v7, v8, :cond_6

    .line 115
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 117
    :cond_6
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingWebView:Lse/mecenat/app/MecenatWebView;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingWebView:Lse/mecenat/app/MecenatWebView;

    invoke-virtual {v7}, Lse/mecenat/app/MecenatWebView;->getWebContentType()Lse/mecenat/app/MecenatWebView$WebContentType;

    move-result-object v7

    sget-object v8, Lse/mecenat/app/MecenatWebView$WebContentType;->MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

    if-ne v7, v8, :cond_7

    .line 119
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE_WITH_RESULT:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 128
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v10, Lse/mecenat/app/common/AppCommand;->CARD_LANDSCAPE:Lse/mecenat/app/common/AppCommand;

    if-eq v9, v10, :cond_9

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v10, Lse/mecenat/app/common/AppCommand;->CARD_PORTTRAIT:Lse/mecenat/app/common/AppCommand;

    if-ne v9, v10, :cond_b

    .line 130
    :cond_9
    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    sget-object v10, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->CARD:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    .line 131
    invoke-static {v9, v10}, Lse/mecenat/app/common/WindowIntentBuilder;->Create(Landroid/app/Activity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v9

    iget-object v10, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    .line 132
    invoke-virtual {v9, v10}, Lse/mecenat/app/common/WindowIntentBuilder;->WithUrl(Ljava/lang/String;)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v9

    .line 133
    invoke-virtual {v9, v8}, Lse/mecenat/app/common/WindowIntentBuilder;->WithExitButton(Z)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v9

    iget-object v10, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v11, Lse/mecenat/app/common/AppCommand;->CARD_LANDSCAPE:Lse/mecenat/app/common/AppCommand;

    if-ne v10, v11, :cond_a

    .line 134
    :goto_2
    invoke-virtual {v9, v7}, Lse/mecenat/app/common/WindowIntentBuilder;->WithOrientation(I)Lse/mecenat/app/common/WindowIntentBuilder;

    move-result-object v7

    .line 136
    invoke-virtual {v7}, Lse/mecenat/app/common/WindowIntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 138
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_RESULT_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a
    move v7, v8

    .line 133
    goto :goto_2

    .line 141
    :cond_b
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v8, Lse/mecenat/app/common/AppCommand;->CLOSE:Lse/mecenat/app/common/AppCommand;

    if-ne v7, v8, :cond_c

    .line 143
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE:Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-direct {v7, v8}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;)V

    goto/16 :goto_0

    .line 146
    :cond_c
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->appCommand:Lse/mecenat/app/common/AppCommand;

    sget-object v8, Lse/mecenat/app/common/AppCommand;->NONE:Lse/mecenat/app/common/AppCommand;

    if-ne v7, v8, :cond_12

    .line 148
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 149
    .restart local v6    # "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Lse/mecenat/app/Constants;->NATIVE_APP_SCHEMAS:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 153
    :cond_d
    const/4 v2, 0x0

    .line 155
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "tel"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "voicemail"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 156
    :cond_e
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.DIAL"

    invoke-direct {v2, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_3
    iget-object v7, p0, Lse/mecenat/app/common/CommandHandler;->callingContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 164
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_10

    .line 165
    const-string v7, "CommandHandler"

    const-string v8, "No Application available to handle action"

    invoke-static {v7, v8}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->NONE:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 158
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_f
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 170
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_10
    if-eqz v2, :cond_11

    .line 171
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 174
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_11
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v11}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 177
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_12
    new-instance v7, Lse/mecenat/app/common/CommandAction;

    sget-object v8, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

    iget-object v9, p0, Lse/mecenat/app/common/CommandHandler;->commandUrl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v11}, Lse/mecenat/app/common/CommandAction;-><init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
