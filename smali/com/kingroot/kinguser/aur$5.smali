.class Lcom/kingroot/kinguser/aur$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aur;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aur;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 355
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v0}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aur;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v0}, Lcom/kingroot/kinguser/aur;->c(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/apx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apx;->Ma()V

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    .line 360
    invoke-static {v0}, Lcom/kingroot/kinguser/aur;->c(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/apx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apx;->Mb()Ljava/util/List;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v1}, Lcom/kingroot/kinguser/aur;->c(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/apx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/apx;->Md()Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v2}, Lcom/kingroot/kinguser/aur;->d(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/aui$b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/kingroot/kinguser/aui$b;->jk(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v1}, Lcom/kingroot/kinguser/aur;->c(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/apx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/apx;->Mc()Z

    move-result v1

    .line 365
    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v1}, Lcom/kingroot/kinguser/aur;->d(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/aui$b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/aui$b;->gO(I)V

    .line 373
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 375
    iget-object v1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v1}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aur;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/aqh;

    .line 376
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqh;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    .line 379
    goto :goto_2

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v1}, Lcom/kingroot/kinguser/aur;->d(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/aui$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/aui$b;->gO(I)V

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 381
    :cond_1
    if-nez v2, :cond_6

    .line 382
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v1}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aur;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MK()I

    move-result v0

    sub-int v0, v3, v0

    :goto_4
    move v3, v0

    .line 385
    goto :goto_1

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v0}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aur;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 389
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 394
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->vs()Z

    move-result v2

    if-nez v2, :cond_3

    .line 395
    iget-object v2, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/aur;->a(Lcom/kingroot/kinguser/aur;Lcom/kingroot/kinguser/aqh;)V

    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 397
    iget-object v2, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aur;Lcom/kingroot/kinguser/aqh;)V

    goto :goto_5

    .line 402
    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->My()Z

    move-result v2

    if-nez v2, :cond_4

    .line 404
    iget-object v2, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aur;Lcom/kingroot/kinguser/aqh;)V

    goto :goto_5

    .line 408
    :cond_4
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MK()I

    move-result v2

    add-int/2addr v3, v2

    .line 409
    iget-object v2, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/aur;->a(Lcom/kingroot/kinguser/aur;Lcom/kingroot/kinguser/aqh;)V

    .line 410
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    iget-object v1, p0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v1}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aur;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aur;->a(Lcom/kingroot/kinguser/aur;Ljava/util/List;)V

    .line 415
    new-instance v0, Lcom/kingroot/kinguser/aur$5$1;

    invoke-direct {v0, p0, v3}, Lcom/kingroot/kinguser/aur$5$1;-><init>(Lcom/kingroot/kinguser/aur$5;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 422
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    return-void

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_3
.end method
