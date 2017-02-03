.class public final Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/UsageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzJZ:Ljava/lang/String;

.field private zzPP:Lcom/google/android/gms/appdatasearch/DocumentId;

.field private zzPQ:J

.field private zzPR:I

.field private zzPS:Lcom/google/android/gms/appdatasearch/DocumentContents;

.field private zzPT:Z

.field private zzPU:I

.field private zzPV:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPQ:J

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPR:I

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPU:I

    iput-boolean v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPT:Z

    iput v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPV:I

    return-void
.end method


# virtual methods
.method public zzO(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPT:Z

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPS:Lcom/google/android/gms/appdatasearch/DocumentContents;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPP:Lcom/google/android/gms/appdatasearch/DocumentId;

    return-object p0
.end method

.method public zzam(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPR:I

    return-object p0
.end method

.method public zzan(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPV:I

    return-object p0
.end method

.method public zzlf()Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 11

    new-instance v0, Lcom/google/android/gms/appdatasearch/UsageInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPP:Lcom/google/android/gms/appdatasearch/DocumentId;

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPQ:J

    iget v4, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPR:I

    iget-object v5, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzJZ:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPS:Lcom/google/android/gms/appdatasearch/DocumentContents;

    iget-boolean v7, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPT:Z

    iget v8, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPU:I

    iget v9, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPV:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZIILcom/google/android/gms/appdatasearch/UsageInfo$1;)V

    return-object v0
.end method

.method public zzw(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzPQ:J

    return-object p0
.end method
