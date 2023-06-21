.class public Lcom/kingroot/kinguser/bsh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bsh$a;
    }
.end annotation


# static fields
.field private static bLx:Lcom/kingroot/kinguser/bsh;

.field private static bLy:Landroid/os/Handler;


# instance fields
.field private bLz:Lcom/kingroot/kinguser/bsk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/kingroot/kinguser/bsh;->bLy:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/bsk;

    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bre;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bsk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bsh;->bLz:Lcom/kingroot/kinguser/bsk;

    .line 42
    return-void
.end method

.method public static ahR()Lcom/kingroot/kinguser/bsh;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/kingroot/kinguser/bsh;->bLx:Lcom/kingroot/kinguser/bsh;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/kingroot/kinguser/bsh;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bsh;->bLx:Lcom/kingroot/kinguser/bsh;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/bsh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsh;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bsh;->bLx:Lcom/kingroot/kinguser/bsh;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bsh;->bLx:Lcom/kingroot/kinguser/bsh;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V
    .locals 8

    .prologue
    .line 56
    new-instance v0, Lcom/kingroot/kinguser/bsh$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/bsh$1;-><init>(Lcom/kingroot/kinguser/bsh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V

    .line 62
    sget-object v1, Lcom/kingroot/kinguser/bsh;->bLy:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bsh;->bLz:Lcom/kingroot/kinguser/bsk;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bsk;->hV(Ljava/lang/String;)V

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bsh;->bLz:Lcom/kingroot/kinguser/bsk;

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bsk;->nc(Ljava/lang/String;)V

    .line 78
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 79
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    new-instance v0, Lcom/kingroot/kinguser/bsh$2;

    invoke-direct {v0, p0, p4}, Lcom/kingroot/kinguser/bsh$2;-><init>(Lcom/kingroot/kinguser/bsh;Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/bsh;->bLz:Lcom/kingroot/kinguser/bsk;

    invoke-virtual {v1, p4, p3, p5, v0}, Lcom/kingroot/kinguser/bsk;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsk$a;)I

    move-result v0

    .line 95
    if-eqz p6, :cond_0

    .line 96
    invoke-interface {p6, v0}, Lcom/kingroot/kinguser/bsh$a;->onFinish(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "FileDownloaderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[downloadSplashImage]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_4
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bsh;->bLz:Lcom/kingroot/kinguser/bsk;

    invoke-virtual {v0, p4}, Lcom/kingroot/kinguser/bsk;->nc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
