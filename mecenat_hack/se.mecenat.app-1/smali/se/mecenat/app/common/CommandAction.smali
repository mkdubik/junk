.class public Lse/mecenat/app/common/CommandAction;
.super Ljava/lang/Object;
.source "CommandAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/common/CommandAction$ActionType;
    }
.end annotation


# instance fields
.field private actionIntent:Landroid/content/Intent;

.field private final actionType:Lse/mecenat/app/common/CommandAction$ActionType;

.field private actionUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lse/mecenat/app/common/CommandAction$ActionType;)V
    .locals 0
    .param p1, "type"    # Lse/mecenat/app/common/CommandAction$ActionType;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lse/mecenat/app/common/CommandAction;->actionType:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 30
    return-void
.end method

.method public constructor <init>(Lse/mecenat/app/common/CommandAction$ActionType;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "type"    # Lse/mecenat/app/common/CommandAction$ActionType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lse/mecenat/app/common/CommandAction;->actionType:Lse/mecenat/app/common/CommandAction$ActionType;

    .line 34
    iput-object p2, p0, Lse/mecenat/app/common/CommandAction;->actionUrl:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lse/mecenat/app/common/CommandAction;->actionIntent:Landroid/content/Intent;

    .line 36
    return-void
.end method


# virtual methods
.method public getAction()Lse/mecenat/app/common/CommandAction$ActionType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lse/mecenat/app/common/CommandAction;->actionType:Lse/mecenat/app/common/CommandAction$ActionType;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lse/mecenat/app/common/CommandAction;->actionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lse/mecenat/app/common/CommandAction;->actionUrl:Ljava/lang/String;

    return-object v0
.end method
