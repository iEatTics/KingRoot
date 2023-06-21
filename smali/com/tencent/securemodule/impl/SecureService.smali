.class public Lcom/tencent/securemodule/impl/SecureService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    iput-boolean v0, p0, Lcom/tencent/securemodule/impl/SecureService;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/securemodule/impl/SecureService;)I
    .locals 1

    iget v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    return v0
.end method

.method private a()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/securemodule/impl/SecureService;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/securemodule/impl/SecureService;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/securemodule/impl/SecureService;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/securemodule/impl/SecureService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SecureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCloudScan(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    new-instance v0, Lcom/kingroot/kinguser/ccv;

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ccv;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/tencent/securemodule/impl/SecureService$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/securemodule/impl/SecureService$3;-><init>(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/kingroot/kinguser/ccv;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/ccw;)V

    iget v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    const-string v0, "SecureService"

    const-string v1, "syncCloudScan() end"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "SecureService"

    const-string v1, "syncDownloadApk()"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/securemodule/impl/SecureService;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "SecureService"

    const-string v1, "syncDownloadApk() downloading, ignore"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/securemodule/impl/SecureService;->c:Z

    iget v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    if-eqz p2, :cond_1

    const-string v0, "2000024"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/securemodule/impl/SecureService;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/cda;

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cda;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/tencent/securemodule/impl/SecureService$2;

    invoke-direct {v1, p0, p2}, Lcom/tencent/securemodule/impl/SecureService$2;-><init>(Lcom/tencent/securemodule/impl/SecureService;Z)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cda;->a(Lcom/kingroot/kinguser/ccz$a;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cda;->a(I)V

    :cond_2
    invoke-virtual {v0, p1, v3}, Lcom/kingroot/kinguser/cda;->M(Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cda;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "2000027"

    invoke-direct {p0, v2, v1}, Lcom/tencent/securemodule/impl/SecureService;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    if-eqz p3, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    iget v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/securemodule/impl/SecureService;->b:I

    iput-boolean v3, p0, Lcom/tencent/securemodule/impl/SecureService;->c:Z

    const-string v0, "SecureService"

    const-string v1, "syncCloudScan() end"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/securemodule/impl/SecureService;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/securemodule/impl/SecureService;->a()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/securemodule/impl/SecureService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SecureService"

    const-string v1, "SecureService onCreate"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/securemodule/impl/SecureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    new-instance v0, Lcom/kingroot/kinguser/bng;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bng;-><init>()V

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    const/16 v2, 0x2711

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/ccu;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bng;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    const/16 v2, 0x2712

    const-string v3, "0.0.0"

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/ccu;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bng;->versionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    const/16 v2, 0x2713

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/ccu;->c(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bng;->bDs:I

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/ccy;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bng;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/securemodule/impl/SecureService$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/securemodule/impl/SecureService$1;-><init>(Lcom/tencent/securemodule/impl/SecureService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
