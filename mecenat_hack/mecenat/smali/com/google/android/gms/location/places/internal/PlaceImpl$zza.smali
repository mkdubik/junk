.class public Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/PlaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mVersionCode:I

.field private zzaDh:Lcom/google/android/gms/maps/model/LatLng;

.field private zzaDj:Ljava/lang/String;

.field private zzaDk:Landroid/net/Uri;

.field private zzaEA:Ljava/lang/String;

.field private zzaEB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaEC:Z

.field private zzaEG:Landroid/os/Bundle;

.field private zzaEH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaEs:F

.field private zzaEt:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzaEu:Ljava/lang/String;

.field private zzaEv:Z

.field private zzaEw:F

.field private zzaEx:I

.field private zzaEy:J

.field private zzanu:Ljava/lang/String;

.field private zzwj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mVersionCode:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaDh:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEt:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public zzah(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEv:Z

    return-object p0
.end method

.method public zzai(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEC:Z

    return-object p0
.end method

.method public zzdB(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzwj:Ljava/lang/String;

    return-object p0
.end method

.method public zzdC(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public zzdD(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzanu:Ljava/lang/String;

    return-object p0
.end method

.method public zzdE(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaDj:Ljava/lang/String;

    return-object p0
.end method

.method public zzf(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEs:F

    return-object p0
.end method

.method public zzg(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEw:F

    return-object p0
.end method

.method public zzhj(I)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEx:I

    return-object p0
.end method

.method public zzl(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaDk:Landroid/net/Uri;

    return-object p0
.end method

.method public zzm(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEH:Ljava/util/List;

    return-object p0
.end method

.method public zzn(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEB:Ljava/util/List;

    return-object p0
.end method

.method public zzws()Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 31

    new-instance v5, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mVersionCode:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzwj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEH:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEG:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzanu:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaDj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEA:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEB:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaDh:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEs:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEt:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEu:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaDk:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEv:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEw:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEx:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEy:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEC:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzanu:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaDj:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEA:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaEB:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    move-result-object v27

    invoke-direct/range {v5 .. v27}, Lcom/google/android/gms/location/places/internal/PlaceImpl;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/location/places/internal/PlaceLocalization;)V

    return-object v5
.end method
