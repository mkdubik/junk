.class public Lcom/slidingmenu/lib/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slidingmenu/lib/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/slidingmenu/lib/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBehindShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState$1;

    invoke-direct {v0}, Lcom/slidingmenu/lib/SlidingMenu$SavedState$1;-><init>()V

    .line 253
    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 252
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 266
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 267
    .local v0, "showing":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 268
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->mBehindShowing:Z

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 245
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->mBehindShowing:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 250
    return-void
.end method
