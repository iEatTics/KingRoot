.class public Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/aom;
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final aGp:Lcom/kingroot/kinguser/aom$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/aom$a",
            "<",
            "Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;",
            "Lcom/kingroot/kinguser/di;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public apkMd5:Ljava/lang/String;

.field public apkUrl:Ljava/lang/String;

.field public categoryId:Ljava/lang/String;

.field public describe:Ljava/lang/String;

.field public fileId:I

.field public fileSize:I

.field public iconUrl:Ljava/lang/String;

.field public jumptype:I

.field public mainTitle:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public partnerId:I

.field public pkgName:Ljava/lang/String;

.field public position:I

.field public productId:I

.field public softId:I

.field public softTitle:Ljava/lang/String;

.field public softkey:Lcom/kingroot/kinguser/df;

.field public type:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 160
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->aGp:Lcom/kingroot/kinguser/aom$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->mainTitle:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->name:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->iconUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->describe:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileSize:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->type:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkMd5:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softTitle:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->jumptype:I

    .line 50
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->partnerId:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softkey:Lcom/kingroot/kinguser/df;

    .line 54
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->productId:I

    .line 56
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softId:I

    .line 58
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileId:I

    .line 60
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->position:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->categoryId:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->version:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->versionCode:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->mainTitle:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->iconUrl:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->describe:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileSize:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->type:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkMd5:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softTitle:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->jumptype:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->partnerId:I

    .line 79
    const-class v0, Lcom/kingroot/kinguser/df;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/df;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softkey:Lcom/kingroot/kinguser/df;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->productId:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softId:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileId:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->position:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->categoryId:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->version:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->versionCode:I

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/di;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->mainTitle:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->name:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->iconUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->describe:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileSize:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->type:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkMd5:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softTitle:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->jumptype:I

    .line 50
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->partnerId:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softkey:Lcom/kingroot/kinguser/df;

    .line 54
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->productId:I

    .line 56
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softId:I

    .line 58
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileId:I

    .line 60
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->position:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->categoryId:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->version:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->versionCode:I

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    iget-object v0, v0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->mainTitle:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->short_desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->describe:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->logourl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->iconUrl:Ljava/lang/String;

    .line 96
    iget v0, p1, Lcom/kingroot/kinguser/di;->filesize:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileSize:I

    .line 97
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->type:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    iget-object v0, v0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkMd5:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->subSoftTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softTitle:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->fileurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    .line 101
    iget v0, p1, Lcom/kingroot/kinguser/di;->jumptype:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->jumptype:I

    .line 102
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    iget v0, v0, Lcom/kingroot/kinguser/df;->partnerId:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->partnerId:I

    .line 103
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softkey:Lcom/kingroot/kinguser/df;

    .line 104
    iget v0, p1, Lcom/kingroot/kinguser/di;->iProductID:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->productId:I

    .line 105
    iget v0, p1, Lcom/kingroot/kinguser/di;->iSoftID:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softId:I

    .line 106
    iget v0, p1, Lcom/kingroot/kinguser/di;->iFileID:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileId:I

    .line 107
    iget v0, p1, Lcom/kingroot/kinguser/di;->position:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->position:I

    .line 108
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    iget-object v0, v0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->name:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    iget-object v0, v0, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->version:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    iget v0, v0, Lcom/kingroot/kinguser/df;->versioncode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->versionCode:I

    .line 113
    :cond_0
    return-void
.end method

.method public static at(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;-><init>(Landroid/os/Parcel;)V

    .line 117
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->mainTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->describe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->jumptype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->partnerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softkey:Lcom/kingroot/kinguser/df;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 140
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->productId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->softId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void
.end method
