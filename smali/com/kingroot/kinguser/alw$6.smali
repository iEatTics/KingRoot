.class public Lcom/kingroot/kinguser/alw$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alw;->Hu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ayY:Lcom/kingroot/kinguser/alw;

.field public final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alw;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    iput-object p2, p0, Lcom/kingroot/kinguser/alw$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->a(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v1

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->b(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->c(Lcom/kingroot/kinguser/alw;)Ljava/util/Map;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;-><init>(Lcom/kingroot/kinguser/alw$6;Ljava/util/Map;)V

    invoke-interface {v3, v4, v5}, Lcom/kingroot/kinguser/ams;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 270
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aD(J)V

    .line 271
    return-void

    .line 266
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 267
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method
