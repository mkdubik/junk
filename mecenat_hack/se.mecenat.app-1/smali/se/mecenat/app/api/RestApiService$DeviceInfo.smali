.class public Lse/mecenat/app/api/RestApiService$DeviceInfo;
.super Ljava/lang/Object;
.source "RestApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/mecenat/app/api/RestApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation


# instance fields
.field public DeviceToken:Ljava/lang/String;

.field public Platform:Ljava/lang/String;

.field public UId:Ljava/lang/String;

.field public Version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
