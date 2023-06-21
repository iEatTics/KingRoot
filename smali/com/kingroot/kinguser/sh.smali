.class Lcom/kingroot/kinguser/sh;
.super Lcom/kingroot/kinguser/sf;
.source "SourceFile"


# instance fields
.field private GA:Ljava/util/Properties;

.field private GB:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/sf;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    .line 81
    new-instance v0, Lcom/kingroot/kinguser/sh$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/sh$1;-><init>(Lcom/kingroot/kinguser/sh;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/sh;->GB:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/sh;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    return-object v0
.end method

.method private jl()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/kingroot/kinguser/sh;->jk()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    .line 38
    iget-object v1, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 46
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 42
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 40
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private jm()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/sh;->GB:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->d(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/sh;->GB:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 116
    return-void
.end method


# virtual methods
.method public declared-synchronized getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    monitor-enter p0

    if-nez p1, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-object v0

    .line 73
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/sh;->jl()V

    .line 74
    iget-object v1, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/sh;->jl()V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/sh;->GA:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/sh;->jm()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
