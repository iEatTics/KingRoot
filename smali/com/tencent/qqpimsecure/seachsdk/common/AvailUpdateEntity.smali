.class public Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;
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
            "Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adZ:Ljava/lang/String;

.field public aha:Z

.field public bNN:Ljava/lang/String;

.field public bOA:Ljava/lang/String;

.field public bOB:J

.field public bOC:Ljava/lang/String;

.field public bOD:Ljava/lang/String;

.field public bOE:J

.field public bOF:Ljava/lang/String;

.field public bOG:Ljava/lang/String;

.field public bOH:Ljava/lang/String;

.field public bOI:I

.field private bOt:Ljava/lang/Object;

.field public bOu:Ljava/lang/String;

.field public bOv:Ljava/lang/String;

.field public bOw:I

.field public bOx:Ljava/lang/String;

.field public bOy:I

.field public bOz:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mFileId:I

.field public mProductId:I

.field public mPublishTime:Ljava/lang/String;

.field public mSize:J

.field public mSoftId:I

.field public mType:I

.field public mUpdateUseMd5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity$1;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity$1;-><init>()V

    .line 169
    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mProductId:I

    .line 54
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mFileId:I

    .line 55
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSoftId:I

    .line 56
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOI:I

    .line 57
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mType:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mAppName:Ljava/lang/String;

    .line 64
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSize:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOv:Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOw:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bNN:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->aha:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOx:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOA:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOz:Ljava/lang/String;

    .line 73
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOC:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mPublishTime:Ljava/lang/String;

    .line 76
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOF:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOG:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mUpdateUseMd5:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOH:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOt:Ljava/lang/Object;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->aiA()Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    move-result-object v0

    .line 96
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mAppName:Ljava/lang/String;

    .line 98
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    .line 100
    iget-wide v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSize:J

    .line 102
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOv:Ljava/lang/String;

    .line 104
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersionCode:I

    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOw:I

    .line 106
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bNN:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->newest_version:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOx:Ljava/lang/String;

    .line 113
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    .line 115
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOz:Ljava/lang/String;

    .line 117
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOA:Ljava/lang/String;

    .line 119
    iget v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->filesize:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    .line 121
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    const-wide/16 v4, 0x64

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 122
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    .line 125
    :cond_0
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strSource:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOC:Ljava/lang/String;

    .line 128
    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->aiC()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 130
    :cond_1
    iput-object p3, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    .line 131
    :cond_2
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mPublishTime:Ljava/lang/String;

    .line 132
    iget-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileSizeByte:J

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    .line 133
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOF:Ljava/lang/String;

    .line 134
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->apkFileMd5:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOG:Ljava/lang/String;

    .line 135
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->channelId:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOH:Ljava/lang/String;

    .line 136
    iget v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iProductID:I

    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mProductId:I

    .line 137
    iget v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iFileID:I

    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mFileId:I

    .line 138
    iget v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iSoftID:I

    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSoftId:I

    .line 139
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOI:I

    .line 140
    return-void
.end method

.method public aig()Z
    .locals 4

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bNN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->aha:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mPublishTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mUpdateUseMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mFileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSoftId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
