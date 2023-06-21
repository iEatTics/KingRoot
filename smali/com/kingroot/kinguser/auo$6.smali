.class Lcom/kingroot/kinguser/auo$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->PR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auo;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/kingroot/kinguser/auo$6;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x3a98

    .line 299
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 300
    const/4 v1, 0x0

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$6;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->b(Lcom/kingroot/kinguser/auo;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    move-wide v2, v4

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 305
    :goto_0
    if-eqz v1, :cond_1

    .line 307
    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const/4 v0, 0x1

    :cond_0
    move v1, v0

    .line 316
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sub-long v2, v4, v2

    const-wide/16 v8, 0x0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$6;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->b(Lcom/kingroot/kinguser/auo;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$6;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->b(Lcom/kingroot/kinguser/auo;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1

    .line 323
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/auo$6$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/auo$6$1;-><init>(Lcom/kingroot/kinguser/auo$6;Z)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method
