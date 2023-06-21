.class public Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$a;
.super Lcom/kingroot/kinguser/tz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/kingroot/kinguser/tz;-><init>()V

    return-void
.end method

.method private d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 346
    const-string v1, "MyWakelockTag"

    invoke-static {v7, v1}, Lcom/kingroot/kinguser/zk;->y(ILjava/lang/String;)V

    .line 349
    :try_start_0
    const-string v1, "quick_installer_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-nez v9, :cond_0

    .line 377
    const-string v1, "MyWakelockTag"

    invoke-static {v1}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-object v10

    .line 357
    :cond_0
    :try_start_1
    iget v1, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    if-eq v1, v7, :cond_1

    iget v1, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    if-nez v1, :cond_2

    .line 366
    :cond_1
    :goto_1
    iget-object v1, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apD:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    iget-object v1, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    iget-object v2, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apD:Ljava/lang/String;

    iget-object v4, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    iget v6, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    iget v8, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apF:I

    iget-object v9, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apI:Ljava/lang/String;

    invoke-virtual/range {v1 .. v9}, Lcom/kingroot/kinguser/ady;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    const-string v1, "MyWakelockTag"

    invoke-static {v1}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_2
    :try_start_2
    iget v1, v9, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    .line 361
    const/4 v7, 0x3

    goto :goto_1

    .line 363
    :cond_3
    const/4 v7, 0x2

    goto :goto_1

    .line 374
    :catch_0
    move-exception v1

    .line 377
    const-string v1, "MyWakelockTag"

    invoke-static {v1}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "MyWakelockTag"

    invoke-static {v2}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 337
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$a;->d(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$a;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected kr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const-string v0, "QuickInstallReportTask"

    return-object v0
.end method
