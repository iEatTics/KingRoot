.class public Lcom/kingroot/kinguser/bvy;
.super Lcom/kingroot/kinguser/bvx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bvy$1;,
        Lcom/kingroot/kinguser/bvy$b;,
        Lcom/kingroot/kinguser/bvy$a;,
        Lcom/kingroot/kinguser/bvy$c;
    }
.end annotation


# static fields
.field private static bQL:Lcom/kingroot/kinguser/bvy;

.field private static f:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private bQM:Lcom/kingroot/kinguser/bvy$a;

.field private bQN:Lcom/kingroot/kinguser/bvy$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bvy;->bQL:Lcom/kingroot/kinguser/bvy;

    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/bvy;->f:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvx;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bvy;->b:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvy;)Lcom/kingroot/kinguser/bvy$a;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->bQM:Lcom/kingroot/kinguser/bvy$a;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvy;Lcom/kingroot/kinguser/bvy$a;)Lcom/kingroot/kinguser/bvy$a;
    .locals 0

    iput-object p1, p0, Lcom/kingroot/kinguser/bvy;->bQM:Lcom/kingroot/kinguser/bvy$a;

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->bQN:Lcom/kingroot/kinguser/bvy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bvy;->bQN:Lcom/kingroot/kinguser/bvy$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bvy;->bQN:Lcom/kingroot/kinguser/bvy$b;

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V
    .locals 4
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
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/kingroot/kinguser/bvy;->c()Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bvy;->bQM:Lcom/kingroot/kinguser/bvy$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/kingroot/kinguser/bvy$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingroot/kinguser/bvy$a;-><init>(Lcom/kingroot/kinguser/bvy;Lcom/kingroot/kinguser/bvy$1;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bvy;->bQM:Lcom/kingroot/kinguser/bvy$a;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "2000030"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "2000031"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/bvy;->bQM:Lcom/kingroot/kinguser/bvy$a;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/bvy;->bQM:Lcom/kingroot/kinguser/bvy$a;

    new-instance v2, Lcom/kingroot/kinguser/bvy$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p3, v3}, Lcom/kingroot/kinguser/bvy$c;-><init>(Lcom/kingroot/kinguser/bvy;Ljava/lang/Object;Lcom/kingroot/kinguser/bvy$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/bvy$a;->a(Ljava/lang/String;Lcom/kingroot/kinguser/bvy$c;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/securemodule/impl/SecureService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "2000010"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_scan_session"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "key_scan_pkgnames"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "key_scan_apkpaths"

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bvy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bvy;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must invoke \'register\' firstly!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static bR(Landroid/content/Context;)Lcom/kingroot/kinguser/bvy;
    .locals 2

    sget-object v0, Lcom/kingroot/kinguser/bvy;->bQL:Lcom/kingroot/kinguser/bvy;

    if-nez v0, :cond_1

    const-class v1, Lcom/kingroot/kinguser/bvy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bvy;->bQL:Lcom/kingroot/kinguser/bvy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kingroot/kinguser/bvy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bvy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/bvy;->bQL:Lcom/kingroot/kinguser/bvy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bvy;->bQL:Lcom/kingroot/kinguser/bvy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/kingroot/kinguser/bvy;->f:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/bvy;->f:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/kingroot/kinguser/bvy;->f:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/kingroot/kinguser/bvy;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bvy;)V
    .locals 0

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvy;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bng;)I
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, -0x6

    :try_start_0
    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bvy;->b:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bvy;->b:Z

    iget-object v1, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    const/16 v2, 0x2711

    iget-object v3, p1, Lcom/kingroot/kinguser/bng;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/ccu;->b(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    const/16 v2, 0x2712

    iget-object v3, p1, Lcom/kingroot/kinguser/bng;->versionName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/ccu;->b(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    const/16 v2, 0x2713

    iget v3, p1, Lcom/kingroot/kinguser/bng;->bDs:I

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/ccu;->d(Landroid/content/Context;II)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/bvu;Z)I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvy;->b()V

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->bQN:Lcom/kingroot/kinguser/bvy$b;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/kingroot/kinguser/bvy$b;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bvy$b;-><init>(Lcom/kingroot/kinguser/bvy;Lcom/kingroot/kinguser/bvu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvy;->bQN:Lcom/kingroot/kinguser/bvy$b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "2000024"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "2000025"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "2000027"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "2000026"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/bvy;->bQN:Lcom/kingroot/kinguser/bvy$b;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v0, "2000011"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/securemodule/impl/SecureService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "key_with_download_listener"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "key_auto_install"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/kingroot/kinguser/bvw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvy;->b()V

    invoke-direct {p0, v0, v0, p1}, Lcom/kingroot/kinguser/bvy;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/kingroot/kinguser/bvw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/bvw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvy;->b()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/kingroot/kinguser/bvy;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;Lcom/kingroot/kinguser/bvw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/bvw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvy;->b()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/kingroot/kinguser/bvy;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bQ(Landroid/content/Context;)I
    .locals 2

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvy;->b()V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.tencent.action.virus_scan"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isWeSecureInstalled()Z
    .locals 3

    invoke-direct {p0}, Lcom/kingroot/kinguser/bvy;->b()V

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy;->a:Landroid/content/Context;

    const-string v1, "com.tencent.qqpimsecure"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdb;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/securemodule/api/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "00B1208638DE0FCD3E920886D658DAF6"

    iget-object v2, v0, Lcom/tencent/securemodule/api/AppInfo;->certMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/tencent/securemodule/api/AppInfo;->versionCode:I

    const/16 v1, 0x4d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
