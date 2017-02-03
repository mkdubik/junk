.class final Lcom/slidingmenu/lib/CustomViewAbove$1;
.super Ljava/lang/Object;
.source "CustomViewAbove.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slidingmenu/lib/CustomViewAbove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;
    .param p2, "rhs"    # Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    .prologue
    .line 59
    iget v0, p1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    iget v1, p2, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 56
    check-cast p1, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    check-cast p2, Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/slidingmenu/lib/CustomViewAbove$1;->compare(Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;Lcom/slidingmenu/lib/CustomViewAbove$ItemInfo;)I

    move-result v0

    return v0
.end method
