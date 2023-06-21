.class public Lcom/kingroot/kinguser/bgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static boZ:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bgr;->sLock:Ljava/lang/Object;

    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bgr;->boZ:Ljava/lang/String;

    return-void
.end method

.method public static iZ()Z
    .locals 3

    .prologue
    .line 25
    sget-object v1, Lcom/kingroot/kinguser/bgr;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    const-string v0, "mounted"

    sget-object v2, Lcom/kingroot/kinguser/bgr;->boZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static lp(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    sget-object v1, Lcom/kingroot/kinguser/bgr;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sput-object p0, Lcom/kingroot/kinguser/bgr;->boZ:Ljava/lang/String;

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
