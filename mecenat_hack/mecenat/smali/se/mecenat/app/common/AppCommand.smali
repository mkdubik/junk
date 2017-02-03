.class public Lse/mecenat/app/common/AppCommand;
.super Ljava/lang/Object;
.source "AppCommand.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final APPCMD:Ljava/lang/String; = "appcmd"

.field public static final BROWSER:Lse/mecenat/app/common/AppCommand;

.field public static final CARD_LANDSCAPE:Lse/mecenat/app/common/AppCommand;

.field public static final CARD_PORTTRAIT:Lse/mecenat/app/common/AppCommand;

.field public static final CLOSE:Lse/mecenat/app/common/AppCommand;

.field public static final CONTENT_VIEW:Lse/mecenat/app/common/AppCommand;

.field public static final NONE:Lse/mecenat/app/common/AppCommand;

.field public static final REVIEW:Lse/mecenat/app/common/AppCommand;

.field public static final SIGN_OUT:Lse/mecenat/app/common/AppCommand;

.field public static final SUB_NAV:Lse/mecenat/app/common/AppCommand;

.field public static final WIN:Lse/mecenat/app/common/AppCommand;

.field private static sAll:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lse/mecenat/app/common/AppCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->sAll:Ljava/util/Map;

    .line 23
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "Win"

    const-string v2, "win"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->WIN:Lse/mecenat/app/common/AppCommand;

    .line 24
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "Browser"

    const-string v2, "browser"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->BROWSER:Lse/mecenat/app/common/AppCommand;

    .line 25
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "ContentView"

    const-string v2, "contentview"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->CONTENT_VIEW:Lse/mecenat/app/common/AppCommand;

    .line 26
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "CardPortrait"

    const-string v2, "cardportrait"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->CARD_PORTTRAIT:Lse/mecenat/app/common/AppCommand;

    .line 27
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "CardLandscape"

    const-string v2, "cardlandscape"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->CARD_LANDSCAPE:Lse/mecenat/app/common/AppCommand;

    .line 28
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "Close"

    const-string v2, "close"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->CLOSE:Lse/mecenat/app/common/AppCommand;

    .line 29
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "Subnav"

    const-string v2, "subnav"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->SUB_NAV:Lse/mecenat/app/common/AppCommand;

    .line 30
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "Sign-Out"

    const-string v2, "signout"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->SIGN_OUT:Lse/mecenat/app/common/AppCommand;

    .line 31
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "Review"

    const-string v2, "review"

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->REVIEW:Lse/mecenat/app/common/AppCommand;

    .line 32
    new-instance v0, Lse/mecenat/app/common/AppCommand;

    const-string v1, "No command"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/AppCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lse/mecenat/app/common/AppCommand;->NONE:Lse/mecenat/app/common/AppCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lse/mecenat/app/common/AppCommand;->name:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lse/mecenat/app/common/AppCommand;->value:Ljava/lang/String;

    .line 86
    sget-object v0, Lse/mecenat/app/common/AppCommand;->sAll:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public static parseUrl(Ljava/lang/String;Ljava/lang/String;Z)Lse/mecenat/app/common/AppCommand;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "externalAllowed"    # Z

    .prologue
    .line 47
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    sget-object v0, Lse/mecenat/app/common/AppCommand;->NONE:Lse/mecenat/app/common/AppCommand;

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/win"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    sget-object v0, Lse/mecenat/app/common/AppCommand;->WIN:Lse/mecenat/app/common/AppCommand;

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/urlbouncer."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    sget-object v0, Lse/mecenat/app/common/AppCommand;->BROWSER:Lse/mecenat/app/common/AppCommand;

    goto :goto_0

    .line 62
    :cond_3
    const-string v3, "appcmd"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lse/mecenat/app/Constants;->ENABLE_EXTERNAL_URL_TO_BROWSER:Z

    if-nez v3, :cond_5

    .line 66
    :cond_4
    sget-object v0, Lse/mecenat/app/common/AppCommand;->NONE:Lse/mecenat/app/common/AppCommand;

    goto :goto_0

    .line 69
    :cond_5
    sget-object v0, Lse/mecenat/app/common/AppCommand;->BROWSER:Lse/mecenat/app/common/AppCommand;

    goto :goto_0

    .line 73
    :cond_6
    sget-object v3, Lse/mecenat/app/common/AppCommand;->sAll:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/common/AppCommand;

    .line 74
    .local v0, "cmd":Lse/mecenat/app/common/AppCommand;
    if-nez v0, :cond_0

    sget-object v0, Lse/mecenat/app/common/AppCommand;->NONE:Lse/mecenat/app/common/AppCommand;

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lse/mecenat/app/common/AppCommand;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lse/mecenat/app/common/AppCommand;->value:Ljava/lang/String;

    return-object v0
.end method
