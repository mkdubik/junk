.class public Lcom/google/android/gms/drive/Permission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/Permission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private zzagY:Ljava/lang/String;

.field private zzagZ:I

.field private zzaha:Ljava/lang/String;

.field private zzahb:Ljava/lang/String;

.field private zzahc:I

.field private zzahd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "accountIdentifier"    # Ljava/lang/String;
    .param p3, "accountType"    # I
    .param p4, "accountDisplayName"    # Ljava/lang/String;
    .param p5, "photoLink"    # Ljava/lang/String;
    .param p6, "role"    # I
    .param p7, "isLinkRequired"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/Permission;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Permission;->zzagY:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/drive/Permission;->zzagZ:I

    iput-object p4, p0, Lcom/google/android/gms/drive/Permission;->zzaha:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/drive/Permission;->zzahb:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/drive/Permission;->zzahc:I

    iput-boolean p7, p0, Lcom/google/android/gms/drive/Permission;->zzahd:Z

    return-void
.end method

.method public static zzch(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzci(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    if-eq p1, p0, :cond_1

    check-cast p1, Lcom/google/android/gms/drive/Permission;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/drive/Permission;->zzagY:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/Permission;->zzagY:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzagZ:I

    iget v3, p1, Lcom/google/android/gms/drive/Permission;->zzagZ:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzahc:I

    iget v3, p1, Lcom/google/android/gms/drive/Permission;->zzahc:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/drive/Permission;->zzahd:Z

    iget-boolean v3, p1, Lcom/google/android/gms/drive/Permission;->zzahd:Z

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzahc:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzci(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzahc:I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/drive/Permission;->zzagY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzagZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzahc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/drive/Permission;->zzahd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzh;->zza(Lcom/google/android/gms/drive/Permission;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzagZ:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzch(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzagY:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzqs()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzagZ:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzch(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzagZ:I

    goto :goto_0
.end method

.method public zzqt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzaha:Ljava/lang/String;

    return-object v0
.end method

.method public zzqu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzahb:Ljava/lang/String;

    return-object v0
.end method

.method public zzqv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/Permission;->zzahd:Z

    return v0
.end method
