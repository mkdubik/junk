.class Lcom/google/android/gms/vision/MultiProcessor$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/MultiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzaVa:Lcom/google/android/gms/vision/Tracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Tracker",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzaVp:I

.field final synthetic zzaVq:Lcom/google/android/gms/vision/MultiProcessor;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/vision/MultiProcessor;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzaVq:Lcom/google/android/gms/vision/MultiProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzaVp:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/MultiProcessor;Lcom/google/android/gms/vision/MultiProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/MultiProcessor$zza;-><init>(Lcom/google/android/gms/vision/MultiProcessor;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/MultiProcessor$zza;)Lcom/google/android/gms/vision/Tracker;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzaVa:Lcom/google/android/gms/vision/Tracker;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/MultiProcessor$zza;Lcom/google/android/gms/vision/Tracker;)Lcom/google/android/gms/vision/Tracker;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzaVa:Lcom/google/android/gms/vision/Tracker;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/MultiProcessor$zza;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzaVp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzaVp:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/MultiProcessor$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzaVp:I

    return v0
.end method
