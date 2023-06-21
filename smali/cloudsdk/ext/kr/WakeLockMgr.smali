.class public final Lcloudsdk/ext/kr/WakeLockMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcloudsdk/ext/kr/WakeLockMgr$ILockOperation;
    }
.end annotation


# static fields
.field private static Y:I

.field private static Z:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcloudsdk/ext/kr/WakeLockMgr;->Y:I

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lock(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 31
    const-class v1, Lcloudsdk/ext/kr/WakeLockMgr;

    monitor-enter v1

    .line 33
    :try_start_0
    sget v0, Lcloudsdk/ext/kr/WakeLockMgr;->Y:I

    add-int/lit8 v0, v0, 0x1

    .line 38
    sput v0, Lcloudsdk/ext/kr/WakeLockMgr;->Y:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    monitor-exit v1

    .line 59
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 41
    :try_start_1
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v2, 0x20000001

    const-string v3, ""

    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    sget-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static varargs lockTask(Landroid/content/Context;Lcloudsdk/ext/kr/WakeLockMgr$ILockOperation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcloudsdk/ext/kr/WakeLockMgr$ILockOperation",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-static {p0}, Lcloudsdk/ext/kr/WakeLockMgr;->lock(Landroid/content/Context;)V

    .line 99
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcloudsdk/ext/kr/WakeLockMgr$ILockOperation;->execute(Ljava/util/List;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 102
    invoke-static {}, Lcloudsdk/ext/kr/WakeLockMgr;->release()V

    .line 99
    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    invoke-static {}, Lcloudsdk/ext/kr/WakeLockMgr;->release()V

    throw v0
.end method

.method public static release()V
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcloudsdk/ext/kr/WakeLockMgr;

    monitor-enter v1

    .line 68
    :try_start_0
    sget v0, Lcloudsdk/ext/kr/WakeLockMgr;->Y:I

    if-lez v0, :cond_0

    .line 69
    sget v0, Lcloudsdk/ext/kr/WakeLockMgr;->Y:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcloudsdk/ext/kr/WakeLockMgr;->Y:I

    .line 75
    :cond_0
    sget v0, Lcloudsdk/ext/kr/WakeLockMgr;->Y:I

    if-lez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_1
    :try_start_1
    sget-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcloudsdk/ext/kr/WakeLockMgr;->Z:Landroid/os/PowerManager$WakeLock;

    .line 86
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
