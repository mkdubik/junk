.class Lcom/google/android/gms/tagmanager/zzcn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcn;->zzb(Lcom/google/android/gms/internal/zzqh$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRw:Lcom/google/android/gms/tagmanager/zzcn;

.field final synthetic zzaRx:Lcom/google/android/gms/internal/zzqh$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/internal/zzqh$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaRw:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaRx:Lcom/google/android/gms/internal/zzqh$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaRw:Lcom/google/android/gms/tagmanager/zzcn;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaRx:Lcom/google/android/gms/internal/zzqh$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcn;->zzc(Lcom/google/android/gms/internal/zzqh$zza;)Z

    return-void
.end method
