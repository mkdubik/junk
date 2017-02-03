.class public final enum Lse/mecenat/app/MecenatWebView$WebContentType;
.super Ljava/lang/Enum;
.source "MecenatWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/MecenatWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lse/mecenat/app/MecenatWebView$WebContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/mecenat/app/MecenatWebView$WebContentType;

.field public static final enum CACHE_REFRESHER:Lse/mecenat/app/MecenatWebView$WebContentType;

.field public static final enum CARD:Lse/mecenat/app/MecenatWebView$WebContentType;

.field public static final enum CONTENT:Lse/mecenat/app/MecenatWebView$WebContentType;

.field public static final enum MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

.field public static final enum SUB_NAV:Lse/mecenat/app/MecenatWebView$WebContentType;

.field public static final enum WINDOW:Lse/mecenat/app/MecenatWebView$WebContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v3}, Lse/mecenat/app/MecenatWebView$WebContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

    new-instance v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    const-string v1, "CONTENT"

    invoke-direct {v0, v1, v4}, Lse/mecenat/app/MecenatWebView$WebContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->CONTENT:Lse/mecenat/app/MecenatWebView$WebContentType;

    new-instance v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    const-string v1, "WINDOW"

    invoke-direct {v0, v1, v5}, Lse/mecenat/app/MecenatWebView$WebContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->WINDOW:Lse/mecenat/app/MecenatWebView$WebContentType;

    new-instance v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v6}, Lse/mecenat/app/MecenatWebView$WebContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->CARD:Lse/mecenat/app/MecenatWebView$WebContentType;

    new-instance v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    const-string v1, "CACHE_REFRESHER"

    invoke-direct {v0, v1, v7}, Lse/mecenat/app/MecenatWebView$WebContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->CACHE_REFRESHER:Lse/mecenat/app/MecenatWebView$WebContentType;

    new-instance v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    const-string v1, "SUB_NAV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/MecenatWebView$WebContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->SUB_NAV:Lse/mecenat/app/MecenatWebView$WebContentType;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lse/mecenat/app/MecenatWebView$WebContentType;

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->MENU:Lse/mecenat/app/MecenatWebView$WebContentType;

    aput-object v1, v0, v3

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->CONTENT:Lse/mecenat/app/MecenatWebView$WebContentType;

    aput-object v1, v0, v4

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->WINDOW:Lse/mecenat/app/MecenatWebView$WebContentType;

    aput-object v1, v0, v5

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->CARD:Lse/mecenat/app/MecenatWebView$WebContentType;

    aput-object v1, v0, v6

    sget-object v1, Lse/mecenat/app/MecenatWebView$WebContentType;->CACHE_REFRESHER:Lse/mecenat/app/MecenatWebView$WebContentType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lse/mecenat/app/MecenatWebView$WebContentType;->SUB_NAV:Lse/mecenat/app/MecenatWebView$WebContentType;

    aput-object v2, v0, v1

    sput-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->$VALUES:[Lse/mecenat/app/MecenatWebView$WebContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lse/mecenat/app/MecenatWebView$WebContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/MecenatWebView$WebContentType;

    return-object v0
.end method

.method public static values()[Lse/mecenat/app/MecenatWebView$WebContentType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lse/mecenat/app/MecenatWebView$WebContentType;->$VALUES:[Lse/mecenat/app/MecenatWebView$WebContentType;

    invoke-virtual {v0}, [Lse/mecenat/app/MecenatWebView$WebContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/mecenat/app/MecenatWebView$WebContentType;

    return-object v0
.end method
