.class synthetic Lse/mecenat/app/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

.field static final synthetic $SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 472
    invoke-static {}, Lse/mecenat/app/common/CommandAction$ActionType;->values()[Lse/mecenat/app/common/CommandAction$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    :try_start_0
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->SIGN_OUT:Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-virtual {v1}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-virtual {v1}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-virtual {v1}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_RESULT_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-virtual {v1}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE:Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-virtual {v1}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$common$CommandAction$ActionType:[I

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE_WITH_RESULT:Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-virtual {v1}, Lse/mecenat/app/common/CommandAction$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    .line 368
    :goto_5
    invoke-static {}, Lse/mecenat/app/MecenatWebView$WebContentType;->values()[Lse/mecenat/app/MecenatWebView$WebContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

    :try_start_6
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->CONTENT:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v1}, Lse/mecenat/app/MecenatWebView$WebContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->SUB_NAV:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v1}, Lse/mecenat/app/MecenatWebView$WebContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lse/mecenat/app/MainActivity$5;->$SwitchMap$se$mecenat$app$MecenatWebView$WebContentType:[I

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v1}, Lse/mecenat/app/MecenatWebView$WebContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    .line 472
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
