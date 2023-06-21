.class public Lcom/kingroot/kinguser/yw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static pe()V
    .locals 6

    .prologue
    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    const-string v1, "SERIAL_EXECUTOR"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aam;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    const-class v1, Landroid/os/AsyncTask;

    const-string v2, "setDefaultExecutor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/concurrent/Executor;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method
