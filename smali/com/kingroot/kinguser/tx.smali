.class public abstract Lcom/kingroot/kinguser/tx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/tx$b;,
        Lcom/kingroot/kinguser/tx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile HR:Lcom/kingroot/kinguser/tx$a;

.field private final HS:Lcom/kingroot/kinguser/tx$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/tx$b",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/kingroot/kinguser/tx$a;->HV:Lcom/kingroot/kinguser/tx$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/tx;->HR:Lcom/kingroot/kinguser/tx$a;

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/tx$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/tx$1;-><init>(Lcom/kingroot/kinguser/tx;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/tx;->HS:Lcom/kingroot/kinguser/tx$b;

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/tx$2;

    iget-object v1, p0, Lcom/kingroot/kinguser/tx;->HS:Lcom/kingroot/kinguser/tx$b;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/tx$2;-><init>(Lcom/kingroot/kinguser/tx;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/tx;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/tx;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/tx;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tx;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/tx;->f(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/kingroot/kinguser/tx$a;->HX:Lcom/kingroot/kinguser/tx$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/tx;->HR:Lcom/kingroot/kinguser/tx$a;

    .line 149
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tx;->kn()V

    .line 150
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/tx;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract e(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)TResult;"
        }
    .end annotation
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public final g(Ljava/lang/Object;)Lcom/kingroot/kinguser/tx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)",
            "Lcom/kingroot/kinguser/tx",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/tx;->HR:Lcom/kingroot/kinguser/tx$a;

    sget-object v1, Lcom/kingroot/kinguser/tx$a;->HV:Lcom/kingroot/kinguser/tx$a;

    if-eq v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/kingroot/kinguser/tx$3;->HU:[I

    iget-object v1, p0, Lcom/kingroot/kinguser/tx;->HR:Lcom/kingroot/kinguser/tx$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/tx$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/tx$a;->HW:Lcom/kingroot/kinguser/tx$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/tx;->HR:Lcom/kingroot/kinguser/tx$a;

    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tx;->kl()V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/tx;->HS:Lcom/kingroot/kinguser/tx$b;

    iput-object p1, v0, Lcom/kingroot/kinguser/tx$b;->HZ:Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/tx;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/kingroot/kinguser/ub;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-object p0

    .line 122
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/tx;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected kl()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected km()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected kn()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
