.class final Lcom/kingroot/kinguser/jz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static tw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/jz;->tw:Z

    return-void
.end method

.method static declared-synchronized F()Z
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/kingroot/kinguser/jz;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/kingroot/kinguser/jz;->tw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 15
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/iy;->cp()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized cN()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/kingroot/kinguser/jz;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/kingroot/kinguser/jz;->tw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
