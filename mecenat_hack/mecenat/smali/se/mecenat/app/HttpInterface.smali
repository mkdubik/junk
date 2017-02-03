.class public interface abstract Lse/mecenat/app/HttpInterface;
.super Ljava/lang/Object;
.source "HttpInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/mecenat/app/HttpInterface$Response;
    }
.end annotation


# static fields
.field public static final CODE_NOT_MODIFIED:I = 0x130

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"


# virtual methods
.method public abstract getResponse(Ljava/lang/String;Ljava/lang/String;)Lse/mecenat/app/HttpInterface$Response;
.end method

.method public abstract requestUrl(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method
