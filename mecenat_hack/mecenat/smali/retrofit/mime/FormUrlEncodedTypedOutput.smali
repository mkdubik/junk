.class public final Lretrofit/mime/FormUrlEncodedTypedOutput;
.super Ljava/lang/Object;
.source "FormUrlEncodedTypedOutput.java"

# interfaces
.implements Lretrofit/mime/TypedOutput;


# instance fields
.field final content:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p1, v0, p2, v0}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public addField(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encodeName"    # Z
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "encodeValue"    # Z

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_0
    if-nez p3, :cond_1

    .line 35
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_1
    iget-object v1, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 38
    iget-object v1, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 41
    :cond_2
    if-eqz p2, :cond_3

    .line 42
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_3
    if-eqz p4, :cond_4

    .line 45
    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 48
    :cond_4
    iget-object v1, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 49
    iget-object v1, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    iget-object v1, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "application/x-www-form-urlencoded; charset=UTF-8"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lretrofit/mime/FormUrlEncodedTypedOutput;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 70
    return-void
.end method
