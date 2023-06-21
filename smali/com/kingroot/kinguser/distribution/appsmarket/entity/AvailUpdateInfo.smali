.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkPath:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public fileId:I

.field public isSystem:Z

.field public oldVersion:Ljava/lang/String;

.field public oldVersionCode:I

.field public pkgName:Ljava/lang/String;

.field public productId:I

.field public publishTime:Ljava/lang/String;

.field public remoteDiffPkgSize:J

.field public remoteDiffPkgUrl:Ljava/lang/String;

.field public remoteFileUrl:Ljava/lang/String;

.field public remoteIconUrl:Ljava/lang/String;

.field public remoteNewFeature:Ljava/lang/String;

.field public remoteNewPkgMd5:Ljava/lang/String;

.field public remoteSize:J

.field public remoteSource:Ljava/lang/String;

.field public remoteVersion:Ljava/lang/String;

.field public remoteVersionCode:I

.field public simpleName:Ljava/lang/String;

.field public size:J

.field public softId:I

.field public sourceInt:I

.field public type:I

.field public updateUseMd5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->productId:I

    .line 39
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->fileId:I

    .line 40
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->softId:I

    .line 41
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->sourceInt:I

    .line 42
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->type:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->simpleName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->size:J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersion:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersionCode:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->apkPath:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->isSystem:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteFileUrl:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSize:J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSource:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewFeature:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->publishTime:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgUrl:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->updateUseMd5:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->channelId:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->productId:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->fileId:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->softId:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->sourceInt:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->type:I

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->productId:I

    .line 39
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->fileId:I

    .line 40
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->softId:I

    .line 41
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->sourceInt:I

    .line 42
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->type:I

    .line 45
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOu:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->simpleName:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    .line 48
    iget-wide v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSize:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->size:J

    .line 49
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOv:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersion:Ljava/lang/String;

    .line 50
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOw:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersionCode:I

    .line 51
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bNN:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->apkPath:Ljava/lang/String;

    .line 52
    iget-boolean v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->aha:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->isSystem:Z

    .line 53
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOx:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    .line 54
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    .line 55
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOz:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteFileUrl:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOA:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    .line 57
    iget-wide v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSize:J

    .line 58
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOC:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSource:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewFeature:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mPublishTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->publishTime:Ljava/lang/String;

    .line 61
    iget-wide v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    .line 62
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOF:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgUrl:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOG:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mUpdateUseMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->updateUseMd5:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOH:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->channelId:Ljava/lang/String;

    .line 66
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mProductId:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->productId:I

    .line 67
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mFileId:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->fileId:I

    .line 68
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSoftId:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->softId:I

    .line 69
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOI:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->sourceInt:I

    .line 70
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mType:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->type:I

    .line 71
    return-void
.end method

.method private id()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Ir()Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;
    .locals 6

    .prologue
    .line 74
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mAppName:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->simpleName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOu:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    .line 78
    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->size:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSize:J

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOv:Ljava/lang/String;

    .line 80
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersionCode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOw:I

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->apkPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bNN:Ljava/lang/String;

    .line 82
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->isSystem:Z

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->aha:Z

    .line 83
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOx:Ljava/lang/String;

    .line 84
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    .line 85
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteFileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOz:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOA:Ljava/lang/String;

    .line 87
    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSize:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    .line 88
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSource:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOC:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewFeature:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOD:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->publishTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mPublishTime:Ljava/lang/String;

    .line 91
    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    .line 92
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOF:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOG:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->updateUseMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mUpdateUseMd5:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOH:Ljava/lang/String;

    .line 96
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->productId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mProductId:I

    .line 97
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->fileId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mFileId:I

    .line 98
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->softId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSoftId:I

    .line 99
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->sourceInt:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOI:I

    .line 100
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->type:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mType:I

    .line 101
    return-object v0
.end method

.method public Is()Z
    .locals 4

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

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
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 183
    instance-of v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->id()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    invoke-direct {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->isSystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteFileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewFeature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->publishTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->updateUseMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->productId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->fileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->softId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->sourceInt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
