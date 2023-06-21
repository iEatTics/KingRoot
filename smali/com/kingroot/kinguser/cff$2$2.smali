.class Lcom/kingroot/kinguser/cff$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caB:Lcom/kingroot/kinguser/cff$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff$2;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->s(Lcom/kingroot/kinguser/cff;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v2}, Lcom/kingroot/kinguser/cff;->s(Lcom/kingroot/kinguser/cff;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;Z)Z

    .line 432
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;Z)Z

    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 531
    :goto_0
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 439
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->j(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cez;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cff$2$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cff$2$2$1;-><init>(Lcom/kingroot/kinguser/cff$2$2;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cez;->a(Lcom/kingroot/kinguser/cez$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 525
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;Z)Z

    .line 526
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 529
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const v1, -0x36d6160e

    invoke-static {v0, v4, v5, v1}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZZI)V

    goto :goto_0

    .line 526
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
