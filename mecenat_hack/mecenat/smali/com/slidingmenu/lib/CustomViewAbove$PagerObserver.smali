.class Lcom/slidingmenu/lib/CustomViewAbove$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slidingmenu/lib/CustomViewAbove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slidingmenu/lib/CustomViewAbove;


# direct methods
.method private constructor <init>(Lcom/slidingmenu/lib/CustomViewAbove;)V
    .locals 0

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove$PagerObserver;->this$0:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove$PagerObserver;->this$0:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->dataSetChanged()V

    .line 1663
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove$PagerObserver;->this$0:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->dataSetChanged()V

    .line 1667
    return-void
.end method
