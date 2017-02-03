.class public Lse/mecenat/app/common/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lse/mecenat/app/Constants;->DEBUG_MODE:Z

    sput-boolean v0, Lse/mecenat/app/common/Logger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v0, Lse/mecenat/app/common/Logger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v0, Lse/mecenat/app/common/Logger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-boolean v0, Lse/mecenat/app/common/Logger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-boolean v0, Lse/mecenat/app/common/Logger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method
