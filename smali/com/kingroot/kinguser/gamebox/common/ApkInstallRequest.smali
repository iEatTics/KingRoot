.class public Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
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
            "Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aNe:I

.field public aNf:Z

.field public apkMd5:Ljava/lang/String;

.field public apkPath:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public cid:I

.field public isUpdate:Z

.field public pkgName:Ljava/lang/String;

.field public reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNf:Z

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    .line 36
    iput-boolean v1, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->versionCode:I

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 31
    iput-boolean v1, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNf:Z

    .line 32
    iput v2, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    .line 36
    iput-boolean v2, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->versionCode:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->appName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    .line 91
    const-class v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNe:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNf:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v1, v2

    .line 94
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNf:Z

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    .line 36
    iput-boolean v1, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->versionCode:I

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    invoke-direct {v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->appName:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    .line 72
    return-object v0
.end method

.method public static a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Ljava/lang/String;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    invoke-direct {v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->appName:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 79
    iput-object p1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    .line 81
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    iput v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->versionCode:I

    .line 82
    const v1, 0x98967f

    iput v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    .line 83
    return-object v0
.end method

.method public static l(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    invoke-direct {v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->appName:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 61
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    .line 62
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    iput v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    .line 63
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNf:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v1, v2

    .line 112
    goto :goto_1
.end method
