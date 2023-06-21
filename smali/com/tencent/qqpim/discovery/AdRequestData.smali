.class public Lcom/tencent/qqpim/discovery/AdRequestData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqpim/discovery/AdRequestData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bJL:I

.field public bJM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public bJN:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bJO:Z

.field public bJP:Z

.field public bJp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/tencent/qqpim/discovery/AdRequestData$1;

    invoke-direct {v0}, Lcom/tencent/qqpim/discovery/AdRequestData$1;-><init>()V

    .line 82
    sput-object v0, Lcom/tencent/qqpim/discovery/AdRequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJN:Z

    .line 35
    iput-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    .line 40
    iput-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJN:Z

    .line 35
    iput-boolean v2, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    .line 40
    iput-boolean v2, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    .line 61
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJN:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eq v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eq v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    :cond_1
    move v0, v2

    .line 63
    goto :goto_1

    :cond_2
    move v1, v2

    .line 64
    goto :goto_2
.end method


# virtual methods
.method public ahx()Lcom/tencent/qqpim/discovery/AdRequestData;
    .locals 2

    .prologue
    .line 47
    new-instance v1, Lcom/tencent/qqpim/discovery/AdRequestData;

    invoke-direct {v1}, Lcom/tencent/qqpim/discovery/AdRequestData;-><init>()V

    .line 48
    iget v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    .line 49
    iget v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    .line 50
    iget-object v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    .line 51
    iget-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJN:Z

    iput-boolean v0, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJN:Z

    .line 52
    iget-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    iput-boolean v0, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    .line 53
    iget-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    iput-boolean v0, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    .line 54
    return-object v1
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/tencent/qqpim/discovery/AdRequestData;->ahx()Lcom/tencent/qqpim/discovery/AdRequestData;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const-string v1, "AdRequestData [positionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", advNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", positionFormatTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", autoLoadPicEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v1, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", mustMaterialPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v1, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", includePrepullAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 77
    iget-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJN:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-boolean v0, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v0, v2

    .line 78
    goto :goto_1

    :cond_2
    move v1, v2

    .line 79
    goto :goto_2
.end method
