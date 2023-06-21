.class public Lcom/kingroot/kinguser/afr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static e(Ljava/lang/Throwable;)Z
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.concurrent.TimeoutException: android.os.BinderProxy.finalize() timed out after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/afr$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/afr$2;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/kingroot/kinguser/afr;->e(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic jK()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/afr;->vr()V

    return-void
.end method

.method public static vq()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/kingroot/kinguser/afr$1;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/afr$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 39
    return-void
.end method

.method private static vr()V
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/afr$3;

    invoke-direct {v5}, Lcom/kingroot/kinguser/afr$3;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 82
    return-void
.end method
