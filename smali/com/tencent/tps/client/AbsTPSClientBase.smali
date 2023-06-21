.class public abstract Lcom/tencent/tps/client/AbsTPSClientBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AbsTPSClientBase"

.field private static volatile isInit:Z

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mShark:Lcom/tencent/tps/client/kr/ISharkForXMod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tps/client/AbsTPSClientBase;->isInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tps/client/kr/ISharkForXMod;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/tps/client/AbsTPSClientBase;->sContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/tencent/tps/client/AbsTPSClientBase;->mShark:Lcom/tencent/tps/client/kr/ISharkForXMod;

    .line 35
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/tencent/tps/client/AbsTPSClientBase;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized initialize()V
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/tencent/tps/client/AbsTPSClientBase;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/fb;->ae()V

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tps/client/AbsTPSClientBase;->mShark:Lcom/tencent/tps/client/kr/ISharkForXMod;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/fz;->a(Lcom/tencent/tps/client/kr/ISharkForXMod;)V

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/gi;->ae()V

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/gg;->au()Lcom/kingroot/kinguser/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gg;->start()V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tps/client/AbsTPSClientBase;->isInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(ZLjava/lang/String;I)V
    .locals 6

    .prologue
    .line 116
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 117
    :goto_0
    const-string v5, ""

    .line 118
    if-nez p3, :cond_0

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/ff;->G()Ljava/lang/String;

    move-result-object v5

    .line 121
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/ex;

    const/4 v3, 0x1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ex;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V

    .line 127
    return-void

    .line 116
    :cond_1
    const/16 v1, 0x4a38

    goto :goto_0
.end method

.method public final disableExploitMonitor()Z
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->e()Z

    move-result v0

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/AbsTPSClientBase;->a(ZLjava/lang/String;I)V

    .line 89
    return v0
.end method

.method public final enableExploitMonitor()Z
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->d()Z

    move-result v0

    .line 82
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/AbsTPSClientBase;->a(ZLjava/lang/String;I)V

    .line 83
    return v0
.end method

.method public final isExploitMonitorEnabled()Z
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->f()Z

    move-result v0

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/AbsTPSClientBase;->a(ZLjava/lang/String;I)V

    .line 95
    return v0
.end method

.method public abstract onExploitDenied(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTPSServiceStop()V
.end method

.method public final startTPSService(Lcom/tencent/tps/client/IRootShell;)Z
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/tps/client/AbsTPSClientBase;->initialize()V

    .line 51
    const-string v0, "105702"

    invoke-static {v0}, Lcom/kingroot/kinguser/fs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data-lib/tps"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tpsd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {p1, v0, v2}, Lcom/kingroot/kinguser/ff;->a(Lcom/tencent/tps/client/IRootShell;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "Unable to release TPSService to /data/data-lib/tps"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-interface {p1, v2}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/fv;->a(Lcom/tencent/tps/client/AbsTPSClientBase;)Z

    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/asec/lkjhg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/fv;->a(Lcom/tencent/tps/client/AbsTPSClientBase;)Z

    move-result v0

    .line 76
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/AbsTPSClientBase;->a(ZLjava/lang/String;I)V

    .line 77
    return v0
.end method

.method public final stopTPSService()Z
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->stopTPSService()Z

    move-result v0

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/AbsTPSClientBase;->a(ZLjava/lang/String;I)V

    .line 101
    return v0
.end method
