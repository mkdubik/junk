.class public Lse/mecenat/app/common/IntentBuilder;
.super Ljava/lang/Object;
.source "IntentBuilder.java"


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "from"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lse/mecenat/app/common/IntentBuilder;->intent:Landroid/content/Intent;

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lse/mecenat/app/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lse/mecenat/app/common/IntentBuilder;->intent:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public static Create(Landroid/content/Context;)Lse/mecenat/app/common/IntentBuilder;
    .locals 1
    .param p0, "from"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Lse/mecenat/app/common/IntentBuilder;

    invoke-direct {v0, p0}, Lse/mecenat/app/common/IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public WithAction(Ljava/lang/String;)Lse/mecenat/app/common/IntentBuilder;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lse/mecenat/app/common/IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    return-object p0
.end method

.method public WithUrl(Ljava/lang/String;)Lse/mecenat/app/common/IntentBuilder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lse/mecenat/app/common/IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lse/mecenat/app/common/IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method
