.class public final enum Lse/mecenat/app/common/CommandAction$ActionType;
.super Ljava/lang/Enum;
.source "CommandAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/common/CommandAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lse/mecenat/app/common/CommandAction$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/mecenat/app/common/CommandAction$ActionType;

.field public static final enum CLOSE:Lse/mecenat/app/common/CommandAction$ActionType;

.field public static final enum CLOSE_WITH_RESULT:Lse/mecenat/app/common/CommandAction$ActionType;

.field public static final enum NONE:Lse/mecenat/app/common/CommandAction$ActionType;

.field public static final enum OPEN_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

.field public static final enum OPEN_RESULT_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

.field public static final enum OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

.field public static final enum SIGN_OUT:Lse/mecenat/app/common/CommandAction$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lse/mecenat/app/common/CommandAction$ActionType;

    const-string v1, "OPEN_SELF"

    invoke-direct {v0, v1, v3}, Lse/mecenat/app/common/CommandAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 16
    new-instance v0, Lse/mecenat/app/common/CommandAction$ActionType;

    const-string v1, "OPEN_INTENT"

    invoke-direct {v0, v1, v4}, Lse/mecenat/app/common/CommandAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 17
    new-instance v0, Lse/mecenat/app/common/CommandAction$ActionType;

    const-string v1, "OPEN_RESULT_INTENT"

    invoke-direct {v0, v1, v5}, Lse/mecenat/app/common/CommandAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_RESULT_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 18
    new-instance v0, Lse/mecenat/app/common/CommandAction$ActionType;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v6}, Lse/mecenat/app/common/CommandAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 19
    new-instance v0, Lse/mecenat/app/common/CommandAction$ActionType;

    const-string v1, "CLOSE_WITH_RESULT"

    invoke-direct {v0, v1, v7}, Lse/mecenat/app/common/CommandAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE_WITH_RESULT:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 20
    new-instance v0, Lse/mecenat/app/common/CommandAction$ActionType;

    const-string v1, "SIGN_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/CommandAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->SIGN_OUT:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 21
    new-instance v0, Lse/mecenat/app/common/CommandAction$ActionType;

    const-string v1, "NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lse/mecenat/app/common/CommandAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->NONE:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lse/mecenat/app/common/CommandAction$ActionType;

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_SELF:Lse/mecenat/app/common/CommandAction$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->OPEN_RESULT_INTENT:Lse/mecenat/app/common/CommandAction$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE:Lse/mecenat/app/common/CommandAction$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lse/mecenat/app/common/CommandAction$ActionType;->CLOSE_WITH_RESULT:Lse/mecenat/app/common/CommandAction$ActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lse/mecenat/app/common/CommandAction$ActionType;->SIGN_OUT:Lse/mecenat/app/common/CommandAction$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lse/mecenat/app/common/CommandAction$ActionType;->NONE:Lse/mecenat/app/common/CommandAction$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->$VALUES:[Lse/mecenat/app/common/CommandAction$ActionType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lse/mecenat/app/common/CommandAction$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lse/mecenat/app/common/CommandAction$ActionType;

    return-object v0
.end method

.method public static values()[Lse/mecenat/app/common/CommandAction$ActionType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lse/mecenat/app/common/CommandAction$ActionType;->$VALUES:[Lse/mecenat/app/common/CommandAction$ActionType;

    invoke-virtual {v0}, [Lse/mecenat/app/common/CommandAction$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/mecenat/app/common/CommandAction$ActionType;

    return-object v0
.end method
