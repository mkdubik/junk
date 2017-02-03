.class public Lcom/google/android/gms/internal/zzcc;
.super Ljava/lang/Object;


# instance fields
.field private final zzvo:J

.field private final zzvp:Ljava/lang/String;

.field private final zzvq:Lcom/google/android/gms/internal/zzcc;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzcc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcc;->zzvo:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcc;->zzvp:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcc;->zzvq:Lcom/google/android/gms/internal/zzcc;

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcc;->zzvo:J

    return-wide v0
.end method

.method zzdj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcc;->zzvp:Ljava/lang/String;

    return-object v0
.end method

.method zzdk()Lcom/google/android/gms/internal/zzcc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcc;->zzvq:Lcom/google/android/gms/internal/zzcc;

    return-object v0
.end method
