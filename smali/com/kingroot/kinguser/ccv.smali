.class public Lcom/kingroot/kinguser/ccv;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kingroot/kinguser/ccv;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/securemodule/api/AppInfo;I)Lsm/ao;
    .locals 8

    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lsm/ao;

    invoke-direct {v2}, Lsm/ao;-><init>()V

    iput p2, v2, Lsm/ao;->a:I

    iput-object v1, v2, Lsm/ao;->b:[B

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v0, v2, Lsm/ao;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->certMd5:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/cdf;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Lsm/ao;->d:[B

    iget-boolean v0, p1, Lcom/tencent/securemodule/api/AppInfo;->isUnInstalledApk:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lcom/kingroot/kinguser/cdb;->g(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lsm/ao;->s:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v4, v2, Lsm/ao;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lcom/kingroot/kinguser/cdb;->f(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-wide v4, p1, Lcom/tencent/securemodule/api/AppInfo;->fileSize:J

    iput-wide v4, v2, Lsm/ao;->e:J

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->softName:Ljava/lang/String;

    iput-object v0, v2, Lsm/ao;->f:Ljava/lang/String;

    iget v0, p1, Lcom/tencent/securemodule/api/AppInfo;->versionCode:I

    iput v0, v2, Lsm/ao;->g:I

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->versionName:Ljava/lang/String;

    iput-object v0, v2, Lsm/ao;->h:Ljava/lang/String;

    iput v6, v2, Lsm/ao;->i:I

    iget v0, p1, Lcom/tencent/securemodule/api/AppInfo;->appType:I

    if-ne v0, v7, :cond_3

    iget v0, v2, Lsm/ao;->i:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lsm/ao;->i:I

    :cond_3
    iget v0, v2, Lsm/ao;->i:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Lsm/ao;->i:I

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    const-string v3, "/data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    const-string v3, "/system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, v2, Lsm/ao;->i:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lsm/ao;->i:I

    :cond_4
    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/cdb;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lsm/ao;->j:Ljava/lang/String;

    iput v6, v2, Lsm/ao;->k:I

    iput v6, v2, Lsm/ao;->l:I

    iput v6, v2, Lsm/ao;->m:I

    iput-object v1, v2, Lsm/ao;->n:Ljava/util/ArrayList;

    iput v6, v2, Lsm/ao;->o:I

    iput-boolean v6, v2, Lsm/ao;->p:Z

    iput v6, v2, Lsm/ao;->q:I

    iput v6, v2, Lsm/ao;->r:I

    move-object v0, v2

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Lsm/ar;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Lsm/ar;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    const-string v0, "CloudScanEngine"

    const-string v1, "[virus_scan]correctNativeResults(), unknowAppInfos == null || unknowAppInfos == null"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    :cond_3
    const-string v0, "CloudScanEngine"

    const-string v1, "[virus_scan]correctNativeResults(), appInfos == null || resp == null"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lsm/ar;->a:Ljava/util/ArrayList;

    iget-object v2, p2, Lsm/ar;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    const-string v1, "CloudScanEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[virus_scan]correctNativeResults(), rspApkInfoList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_6

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cdo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v0, "empty"

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsm/aq;

    if-eqz v0, :cond_8

    iget v1, v0, Lsm/aq;->b:I

    if-eqz v1, :cond_8

    iget v1, v0, Lsm/aq;->a:I

    if-lt v1, v3, :cond_9

    const-string v1, "CloudScanEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[virus_scan]correctNativeResults(), invalid: rspApkInfo.nRefSeqNo >= nativeCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Lsm/aq;->a:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cdo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    new-instance v5, Lcom/tencent/securemodule/api/QScanResultEntity;

    invoke-direct {v5}, Lcom/tencent/securemodule/api/QScanResultEntity;-><init>()V

    iget v1, v0, Lsm/aq;->a:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/securemodule/api/AppInfo;

    iput-object v5, v1, Lcom/tencent/securemodule/api/AppInfo;->scanResultEntity:Lcom/tencent/securemodule/api/QScanResultEntity;

    iget v6, v0, Lsm/aq;->b:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    const-string v6, "CloudScanEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[virus_scan][checked] unknow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/tencent/securemodule/api/AppInfo;->softName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget v1, v0, Lsm/aq;->b:I

    iput v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->safeLevel:I

    iget v1, v0, Lsm/aq;->c:I

    iput v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->virusId:I

    iget v1, v0, Lsm/aq;->d:I

    iput v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->category:I

    iget v1, v0, Lsm/aq;->f:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    iput-boolean v10, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->isInPayList:Z

    iput-boolean v9, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->isInStealAccountList:Z

    :goto_4
    iget v1, v0, Lsm/aq;->h:I

    iput v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->product:I

    iget v1, v0, Lsm/aq;->i:I

    iput v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->official:I

    iget v1, v0, Lsm/aq;->c:I

    if-lez v1, :cond_e

    if-eqz v2, :cond_a

    iget v1, v0, Lsm/aq;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm/as;

    if-eqz v1, :cond_a

    iget-object v6, v1, Lsm/as;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->riskName:Ljava/lang/String;

    iget-object v1, v1, Lsm/as;->b:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->riskDescription:Ljava/lang/String;

    :cond_a
    :goto_5
    iget-object v1, v0, Lsm/aq;->n:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->officialPkgName:Ljava/lang/String;

    iget-object v1, v0, Lsm/aq;->o:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->officialCertMd5:Ljava/lang/String;

    iget v0, v0, Lsm/aq;->p:I

    iput v0, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->safeType:I

    goto/16 :goto_2

    :cond_b
    const-string v6, "CloudScanEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[virus_scan][checked] risk: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/tencent/securemodule/api/AppInfo;->softName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    iput-boolean v9, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->isInPayList:Z

    iget v1, v0, Lsm/aq;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_d

    iput-boolean v10, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->isInStealAccountList:Z

    goto :goto_4

    :cond_d
    iput-boolean v9, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->isInStealAccountList:Z

    goto :goto_4

    :cond_e
    iget-object v1, v0, Lsm/aq;->j:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->riskName:Ljava/lang/String;

    iget-object v1, v0, Lsm/aq;->k:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/securemodule/api/QScanResultEntity;->riskDescription:Ljava/lang/String;

    goto :goto_5
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/ccw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/ccw;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/ccv;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/ccw;[B)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/ccw;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/ccw;",
            "[B)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/kingroot/kinguser/ccv;->a:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/kingroot/kinguser/cdb;->i(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/kingroot/kinguser/ccw;->a()V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    :cond_1
    const-string v0, "CloudScanEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appInfos is null or empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3, v4, v5}, Lcom/kingroot/kinguser/ccw;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/kingroot/kinguser/ccv;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/kingroot/kinguser/cdb;->h(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/ccv;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cdb;->i(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    goto :goto_1

    :cond_5
    const-string v6, "CloudScanEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[virus_scan]cloudCheckV2, appInfos.size(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lsm/am;

    invoke-direct {v6}, Lsm/am;-><init>()V

    new-instance v7, Lsm/ap;

    invoke-direct {v7}, Lsm/ap;-><init>()V

    iput-object v7, v6, Lsm/am;->a:Lsm/ap;

    iget-object v7, v6, Lsm/am;->a:Lsm/ap;

    const/4 v8, 0x6

    iput v8, v7, Lsm/ap;->a:I

    iget-object v7, v6, Lsm/am;->a:Lsm/ap;

    iget-object v8, p0, Lcom/kingroot/kinguser/ccv;->a:Landroid/content/Context;

    const/16 v9, 0x2743

    invoke-static {v8, v9, v2}, Lcom/kingroot/kinguser/ccu;->c(Landroid/content/Context;II)I

    move-result v2

    iput v2, v7, Lsm/ap;->b:I

    iget-object v2, v6, Lsm/am;->a:Lsm/ap;

    iput v1, v2, Lsm/ap;->c:I

    iget-object v1, v6, Lsm/am;->a:Lsm/ap;

    iput v0, v1, Lsm/ap;->d:I

    iget-object v1, v6, Lsm/am;->a:Lsm/ap;

    iput v0, v1, Lsm/ap;->e:I

    iget-object v1, v6, Lsm/am;->a:Lsm/ap;

    const/4 v2, 0x0

    iput-object v2, v1, Lsm/ap;->f:[B

    iget-object v1, v6, Lsm/am;->a:Lsm/ap;

    iput v0, v1, Lsm/ap;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lsm/am;->b:Ljava/util/ArrayList;

    move v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/kingroot/kinguser/ccv;->a:Landroid/content/Context;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/ccv;->a(Landroid/content/Context;Lcom/tencent/securemodule/api/AppInfo;I)Lsm/ao;

    move-result-object v0

    iget-object v2, v6, Lsm/am;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/ccy;->akK()Lcom/kingroot/kinguser/ccy;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/kingroot/kinguser/ccy;->a(Lsm/am;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsm/ar;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lsm/ar;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/kingroot/kinguser/ccv;->a(Ljava/util/List;Lsm/ar;Ljava/util/List;Ljava/util/List;)V

    :cond_7
    :goto_4
    if-eqz p3, :cond_2

    invoke-virtual {p3, v4, v5}, Lcom/kingroot/kinguser/ccw;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "CloudScanEngine"

    const-string v1, "[virus_scan]cloudCheckV2, scVirusCheck.vecApkInfo is null, maybe because same as local result!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    if-eqz p3, :cond_7

    invoke-virtual {p3, v1}, Lcom/kingroot/kinguser/ccw;->a(I)V

    goto :goto_4

    :cond_a
    if-eqz p3, :cond_7

    invoke-virtual {p3, v1}, Lcom/kingroot/kinguser/ccw;->a(I)V

    goto :goto_4
.end method
