.class Lcom/google/android/gms/internal/zzew$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzew;->zzg(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzC:Lcom/google/android/gms/internal/zzew;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzew;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzew$1;->zzzC:Lcom/google/android/gms/internal/zzew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzew$1;->zzzC:Lcom/google/android/gms/internal/zzew;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzew;->zzn(Z)V

    return-void
.end method
