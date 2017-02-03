.class Lse/mecenat/app/api/RestApi$1;
.super Ljava/lang/Object;
.source "RestApi.java"

# interfaces
.implements Lretrofit/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/mecenat/app/api/RestApi;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/api/RestApi;


# direct methods
.method constructor <init>(Lse/mecenat/app/api/RestApi;)V
    .locals 0
    .param p1, "this$0"    # Lse/mecenat/app/api/RestApi;

    .prologue
    .line 36
    iput-object p1, p0, Lse/mecenat/app/api/RestApi$1;->this$0:Lse/mecenat/app/api/RestApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "err"    # Lretrofit/RetrofitError;

    .prologue
    .line 39
    sget-object v0, Lse/mecenat/app/api/RestApi;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lse/mecenat/app/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
