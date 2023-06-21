.class public Lcom/kingroot/kinguser/gw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/gw$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static qE:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/gw;->a:I

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Lcom/kingroot/kinguser/gw$a;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kingroot/kinguser/gw$a",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/gw;->a()V

    .line 90
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/kingroot/kinguser/gw$a;->e(Ljava/util/List;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/gw;->b()V

    .line 90
    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/kingroot/kinguser/gw;->b()V

    throw v0
.end method

.method private static a()V
    .locals 4

    .prologue
    .line 24
    const-class v1, Lcom/kingroot/kinguser/gw;

    monitor-enter v1

    .line 26
    :try_start_0
    sget v0, Lcom/kingroot/kinguser/gw;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kingroot/kinguser/gw;->a:I

    .line 31
    sget v0, Lcom/kingroot/kinguser/gw;->a:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    monitor-exit v1

    .line 52
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 35
    const v2, 0x20000001

    .line 38
    :try_start_1
    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v3, "k_framework_wk_mgr"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    sget-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/kingroot/kinguser/gw;

    monitor-enter v1

    .line 60
    :try_start_0
    sget v0, Lcom/kingroot/kinguser/gw;->a:I

    if-lez v0, :cond_0

    .line 61
    sget v0, Lcom/kingroot/kinguser/gw;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/kingroot/kinguser/gw;->a:I

    .line 67
    :cond_0
    sget v0, Lcom/kingroot/kinguser/gw;->a:I

    if-lez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/kingroot/kinguser/gw;->qE:Landroid/os/PowerManager$WakeLock;

    .line 77
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_1
.end method
