.class public Lcom/tencent/securemodule/api/AppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public apkPath:Ljava/lang/String;

.field public appType:I

.field public certMd5:Ljava/lang/String;

.field public fileSize:J

.field public isUnInstalledApk:Z

.field public pkgName:Ljava/lang/String;

.field public scanResultEntity:Lcom/tencent/securemodule/api/QScanResultEntity;

.field public softName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/securemodule/api/AppInfo;->isUnInstalledApk:Z

    return-void
.end method


# virtual methods
.method public Nx()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/securemodule/api/AppInfo;->scanResultEntity:Lcom/tencent/securemodule/api/QScanResultEntity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/tencent/securemodule/api/QScanResultEntity;->safeLevel:I

    goto :goto_0
.end method

.method public aiE()I
    .locals 5

    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/securemodule/api/AppInfo;->scanResultEntity:Lcom/tencent/securemodule/api/QScanResultEntity;

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->safeLevel:I

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v4, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->safeLevel:I

    if-ne v4, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v4, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->official:I

    if-eq v4, v0, :cond_1

    iget v0, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->category:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_4

    iget v0, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->safeLevel:I

    if-eqz v0, :cond_5

    iget-boolean v0, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->isInPayList:Z

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    iget v0, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->safeLevel:I

    if-ne v0, v2, :cond_6

    iget v0, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->virusId:I

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v0, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->safeLevel:I

    if-eqz v0, :cond_8

    iget-boolean v0, v3, Lcom/tencent/securemodule/api/QScanResultEntity;->isInStealAccountList:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    const/4 v0, 0x6

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public aiF()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/securemodule/api/AppInfo;->scanResultEntity:Lcom/tencent/securemodule/api/QScanResultEntity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/tencent/securemodule/api/QScanResultEntity;->riskDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/tencent/securemodule/api/QScanResultEntity;->riskDescription:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
