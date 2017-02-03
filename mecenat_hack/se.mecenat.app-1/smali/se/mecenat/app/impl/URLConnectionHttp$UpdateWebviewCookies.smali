.class Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;
.super Landroid/os/AsyncTask;
.source "URLConnectionHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/impl/URLConnectionHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateWebviewCookies"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/mecenat/app/impl/URLConnectionHttp;


# direct methods
.method private constructor <init>(Lse/mecenat/app/impl/URLConnectionHttp;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;->this$0:Lse/mecenat/app/impl/URLConnectionHttp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/mecenat/app/impl/URLConnectionHttp;Lse/mecenat/app/impl/URLConnectionHttp$1;)V
    .locals 0
    .param p1, "x0"    # Lse/mecenat/app/impl/URLConnectionHttp;
    .param p2, "x1"    # Lse/mecenat/app/impl/URLConnectionHttp$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;-><init>(Lse/mecenat/app/impl/URLConnectionHttp;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lse/mecenat/app/impl/URLConnectionHttp$UpdateWebviewCookies;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 38
    const/4 v2, 0x0

    aget-object v1, p1, v2

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 39
    .local v1, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x1

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "currentDomainUrl":Ljava/lang/String;
    invoke-static {v1, v0}, Lse/mecenat/app/common/CookieHelper;->syncNetCookiesToWebView(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x0

    return-object v2
.end method
