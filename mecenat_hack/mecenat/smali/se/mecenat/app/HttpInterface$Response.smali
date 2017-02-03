.class public Lse/mecenat/app/HttpInterface$Response;
.super Ljava/lang/Object;
.source "HttpInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/HttpInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private mContent:Ljava/io/InputStream;

.field private mContentEncoding:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestUrl:Ljava/lang/String;

.field private mResponseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lse/mecenat/app/HttpInterface$Response;->mContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lse/mecenat/app/HttpInterface$Response;->mContentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lse/mecenat/app/HttpInterface$Response;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lse/mecenat/app/HttpInterface$Response;->mResponseCode:I

    return v0
.end method

.method public getSingleHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v1, p0, Lse/mecenat/app/HttpInterface$Response;->mHeaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, "headerData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 106
    const-string v1, ""

    .line 109
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inpStream"    # Ljava/io/InputStream;

    .prologue
    .line 89
    iput-object p1, p0, Lse/mecenat/app/HttpInterface$Response;->mContent:Ljava/io/InputStream;

    .line 90
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lse/mecenat/app/HttpInterface$Response;->mContentEncoding:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lse/mecenat/app/HttpInterface$Response;->mContentType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lse/mecenat/app/HttpInterface$Response;->mHeaders:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lse/mecenat/app/HttpInterface$Response;->mRequestUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 116
    iput p1, p0, Lse/mecenat/app/HttpInterface$Response;->mResponseCode:I

    .line 117
    return-void
.end method
