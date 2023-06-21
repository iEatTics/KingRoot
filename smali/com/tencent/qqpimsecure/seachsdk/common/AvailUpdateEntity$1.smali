.class Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bb(Landroid/os/Parcel;)Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 173
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mAppName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSize:J

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOv:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOw:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bNN:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->aha:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOx:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOz:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOA:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOC:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mPublishTime:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOF:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOG:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mUpdateUseMd5:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOH:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mProductId:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mFileId:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSoftId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOI:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mType:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOu:Ljava/lang/String;

    .line 200
    return-object v1

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity$1;->bb(Landroid/os/Parcel;)Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    move-result-object v0

    return-object v0
.end method

.method public km(I)[Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;
    .locals 1

    .prologue
    .line 204
    new-array v0, p1, [Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity$1;->km(I)[Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    move-result-object v0

    return-object v0
.end method
