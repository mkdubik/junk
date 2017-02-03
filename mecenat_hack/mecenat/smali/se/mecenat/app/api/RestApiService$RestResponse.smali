.class public Lse/mecenat/app/api/RestApiService$RestResponse;
.super Ljava/lang/Object;
.source "RestApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/api/RestApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestResponse"
.end annotation


# instance fields
.field public GeoDistanceMeter:I

.field public GeoIntervalMax:I

.field public GeoIntervalMin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
