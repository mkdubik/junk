.class public Lse/mecenat/app/common/WindowIntentBuilder;
.super Ljava/lang/Object;
.source "WindowIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;
    }
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    .line 30
    sget-object v0, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->CARD:Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    if-ne p2, v0, :cond_0

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/CardActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    :goto_0
    iget-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "METHOD"

    invoke-virtual {p2}, Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-void

    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/WindowActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public static Create(Landroid/app/Activity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)Lse/mecenat/app/common/WindowIntentBuilder;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;

    .prologue
    .line 26
    new-instance v0, Lse/mecenat/app/common/WindowIntentBuilder;

    invoke-direct {v0, p0, p1}, Lse/mecenat/app/common/WindowIntentBuilder;-><init>(Landroid/app/Activity;Lse/mecenat/app/common/WindowIntentBuilder$WindowIntentType;)V

    return-object v0
.end method


# virtual methods
.method public WithExitButton(Z)Lse/mecenat/app/common/WindowIntentBuilder;
    .locals 2
    .param p1, "exitEnabled"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "EXIT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    return-object p0
.end method

.method public WithOrientation(I)Lse/mecenat/app/common/WindowIntentBuilder;
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "ORIENTATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    return-object p0
.end method

.method public WithUrl(Ljava/lang/String;)Lse/mecenat/app/common/WindowIntentBuilder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lse/mecenat/app/common/WindowIntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method
