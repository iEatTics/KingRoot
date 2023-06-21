.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;
.super Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkPath:Ljava/lang/String;

.field public isImportantVersion:Z

.field public isSystem:Z

.field public oldVersion:Ljava/lang/String;

.field public oldVersionCode:I

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

.field public updateUseMd5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method public static ai(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;
    .locals 6

    .prologue
    .line 47
    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    invoke-direct {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->simpleName:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->simpleName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->pkgName:Ljava/lang/String;

    .line 51
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->size:J

    iput-wide v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->size:J

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->oldVersion:Ljava/lang/String;

    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->oldVersionCode:I

    iput v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->oldVersionCode:I

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->apkPath:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->apkPath:Ljava/lang/String;

    .line 55
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->isSystem:Z

    iput-boolean v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isSystem:Z

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteVersion:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    iput v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteVersionCode:I

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteFileUrl:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteFileUrl:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteIconUrl:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->iconUrl:Ljava/lang/String;

    .line 61
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSize:J

    iput-wide v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteSize:J

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSource:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteSource:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewFeature:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteNewFeature:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->publishTime:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->publishTime:Ljava/lang/String;

    .line 65
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    iput-wide v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgUrl:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgUrl:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteNewPkgMd5:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->updateUseMd5:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->updateUseMd5:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->channelId:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->channelId:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isUpdate:Z

    .line 71
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->Is()Z

    move-result v0

    iput-boolean v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isDiff:Z

    .line 72
    iget v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    if-nez v0, :cond_0

    .line 73
    iget-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteFileUrl:Ljava/lang/String;

    :goto_0
    iput-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->apkUrl:Ljava/lang/String;

    .line 74
    iget-wide v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    :goto_1
    iput-wide v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->fileSize:J

    .line 76
    :cond_0
    invoke-static {v2}, Lcom/kingroot/kinguser/anf;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isImportantVersion:Z

    .line 77
    const v0, 0x98967f

    iput v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->categoryId:I

    .line 78
    return-object v2

    .line 73
    :cond_1
    iget-object v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgUrl:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_2
    iget-wide v0, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteSize:J

    goto :goto_1
.end method


# virtual methods
.method public c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    .line 117
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgUrl:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteNewPkgMd5:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->updateUseMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->updateUseMd5:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isDiff:Z

    .line 121
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteFileUrl:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->apkUrl:Ljava/lang/String;

    .line 124
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x9

    return v0
.end method
