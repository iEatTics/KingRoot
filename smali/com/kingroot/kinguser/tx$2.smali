.class Lcom/kingroot/kinguser/tx$2;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic HT:Lcom/kingroot/kinguser/tx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tx;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/tx$2;->HT:Lcom/kingroot/kinguser/tx;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tx$2;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/tx$2;->HT:Lcom/kingroot/kinguser/tx;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/tx;->a(Lcom/kingroot/kinguser/tx;Ljava/lang/Object;)V

    .line 72
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :catch_1
    move-exception v0

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/tx$2;->HT:Lcom/kingroot/kinguser/tx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tx;->km()V

    goto :goto_1

    .line 67
    :catch_2
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :catch_3
    move-exception v1

    goto :goto_0
.end method
