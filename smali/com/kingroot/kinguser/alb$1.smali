.class final Lcom/kingroot/kinguser/alb$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 254
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 255
    const/4 v0, -0x1

    .line 256
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 257
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 263
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 264
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akr;->BN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    if-nez v0, :cond_3

    .line 272
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_3
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/alb;->GK()Lcom/kingroot/kinguser/alb;

    move-result-object v1

    .line 280
    sget-object v2, Lcom/kingroot/kinguser/bho;->bqT:Ljava/lang/Object;

    monitor-enter v2

    .line 281
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alb;->fc(I)Z

    move-result v0

    .line 282
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Lcom/kingroot/kinguser/avw;->Sm()Lcom/kingroot/kinguser/avw;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/kingroot/kinguser/avw;->Sn()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/alb;->syncProtectPackages(Ljava/util/List;)Z

    .line 286
    invoke-virtual {v0}, Lcom/kingroot/kinguser/avw;->So()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/alb;->syncMonitorPackages(Ljava/util/List;)Z

    .line 287
    invoke-virtual {v0}, Lcom/kingroot/kinguser/avw;->Sp()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alb;->af(Ljava/util/List;)Z

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
