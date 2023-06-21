.class public Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
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
            "Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public apkMd5:Ljava/lang/String;

.field public apkUrl:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public appStatus:I

.field public cid:I

.field public describe:Ljava/lang/String;

.field public downloadCount:I

.field public fileSize:J

.field public iconUrl:Ljava/lang/String;

.field public isDiff:Z

.field public isUpdate:Z

.field public pkgName:Ljava/lang/String;

.field public progress:I

.field public reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public resumeDownloadTimes:I

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    .line 52
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->progress:I

    .line 70
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 75
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->resumeDownloadTimes:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    .line 88
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    .line 93
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    .line 97
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    .line 101
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    .line 160
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    .line 47
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    .line 52
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->progress:I

    .line 70
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 75
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->resumeDownloadTimes:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    .line 88
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    .line 93
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    .line 97
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    .line 101
    iput v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->progress:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->resumeDownloadTimes:I

    .line 174
    const-class v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    .line 180
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v1, v2

    .line 178
    goto :goto_1
.end method

.method public static a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->categoryId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Z)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    new-instance v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v3}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;-><init>()V

    .line 230
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    .line 231
    iget-boolean v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->updateUseMd5:Ljava/lang/String;

    :goto_1
    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    .line 233
    iget-boolean v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgUrl:Ljava/lang/String;

    :goto_2
    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    .line 235
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    :goto_3
    iput-wide v4, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    .line 236
    iput v2, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    .line 238
    const-string v0, ""

    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    .line 239
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    .line 241
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    iput v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    .line 242
    iput-boolean v1, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    .line 243
    const v0, 0x98967f

    iput v0, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    .line 244
    return-object v3

    :cond_0
    move v0, v2

    .line 230
    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    goto :goto_1

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteFileUrl:Ljava/lang/String;

    goto :goto_2

    .line 235
    :cond_3
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSize:J

    goto :goto_3
.end method

.method public static d(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 4

    .prologue
    .line 221
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    const-wide/16 v2, -0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;J)V

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method private id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    .line 142
    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    .line 143
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    .line 144
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 147
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    .line 148
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    .line 149
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    .line 150
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    .line 151
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    .line 153
    iget-boolean v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-eqz v1, :cond_0

    .line 154
    const v1, 0x98967f

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    .line 156
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->id()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->resumeDownloadTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return-void

    :cond_0
    move v0, v2

    .line 203
    goto :goto_0

    :cond_1
    move v1, v2

    .line 204
    goto :goto_1
.end method
