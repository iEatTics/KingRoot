.class public Lcom/kingroot/kinguser/aim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final arL:Ljava/lang/String;

.field private static final arM:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aim;->arL:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aim;->arM:Ljava/lang/Object;

    return-void
.end method

.method private static A(Ljava/io/File;)Lcom/kingroot/kinguser/util/protect/DeviceStat;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 74
    :goto_0
    return-object v0

    .line 68
    :cond_1
    sget-object v2, Lcom/kingroot/kinguser/aim;->arM:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/kingroot/kinguser/util/protect/DeviceStat;

    if-eqz v3, :cond_2

    .line 71
    check-cast v0, Lcom/kingroot/kinguser/util/protect/DeviceStat;

    monitor-exit v2

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/aim;->arM:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 88
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static xV()Z
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/aim;->arL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/aim;->z(Ljava/io/File;)I

    move-result v0

    .line 49
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static z(Ljava/io/File;)I
    .locals 6

    .prologue
    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v1

    .line 28
    invoke-static {p0}, Lcom/kingroot/kinguser/aim;->A(Ljava/io/File;)Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acB()J

    move-result-wide v2

    .line 31
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 34
    invoke-static {v1, p0}, Lcom/kingroot/kinguser/aim;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/io/File;)V

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/util/List;)I

    move-result v0

    .line 40
    invoke-static {v1, p0}, Lcom/kingroot/kinguser/aim;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/io/File;)V

    goto :goto_0
.end method
