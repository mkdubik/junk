.class final Lretrofit/client/OkClient$2;
.super Ljava/lang/Object;
.source "OkClient.java"

# interfaces
.implements Lretrofit/mime/TypedInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/client/OkClient;->createResponseBody(Lcom/squareup/okhttp/ResponseBody;)Lretrofit/mime/TypedInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/squareup/okhttp/ResponseBody;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ResponseBody;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lretrofit/client/OkClient$2;->val$body:Lcom/squareup/okhttp/ResponseBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lretrofit/client/OkClient$2;->val$body:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lretrofit/client/OkClient$2;->val$body:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lretrofit/client/OkClient$2;->val$body:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 104
    .local v0, "mediaType":Lcom/squareup/okhttp/MediaType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
