.class public Lcom/kingroot/kinguser/ash;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aMM:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ash;->aMM:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 21
    :goto_0
    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ash;->aMM:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
