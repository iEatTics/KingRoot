.class public Lcom/kingroot/kinguser/bhm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final arM:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bhm;->arM:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lcom/kingroot/kinguser/bhm;->arM:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bhl;->lF(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static lG(Ljava/lang/String;)Lcom/kingroot/kinguser/util/protect/DeviceStat;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 35
    invoke-static {p0}, Lcom/kingroot/kinguser/bhl;->lF(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    sget-object v2, Lcom/kingroot/kinguser/bhm;->arM:Ljava/lang/Object;

    monitor-enter v2

    .line 38
    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/kingroot/kinguser/util/protect/DeviceStat;

    if-eqz v2, :cond_0

    .line 42
    check-cast v0, Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 44
    :goto_1
    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    .line 44
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static lH(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-static {p0}, Lcom/kingroot/kinguser/bhm;->lG(Ljava/lang/String;)Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v2

    .line 51
    if-nez v1, :cond_1

    .line 53
    invoke-static {p0, v2}, Lcom/kingroot/kinguser/bhm;->a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acB()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 58
    invoke-static {p0, v2}, Lcom/kingroot/kinguser/bhm;->a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/util/List;)I

    move-result v0

    .line 63
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 65
    :cond_3
    invoke-static {p0, v2}, Lcom/kingroot/kinguser/bhm;->a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    goto :goto_0
.end method
