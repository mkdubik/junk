.class public Lcom/google/android/gms/internal/zzrl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final zzbbp:Lcom/google/android/gms/internal/zzrm;

.field public final zzbbq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrm;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrm;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl$zza;->zzbbp:Lcom/google/android/gms/internal/zzrm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrl$zza;->zzbbq:Ljava/util/List;

    return-void
.end method
