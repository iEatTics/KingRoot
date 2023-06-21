.class Lcom/kingroot/kinguser/apx$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aKi:Lcom/kingroot/kinguser/apx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apx;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 9
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 532
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 534
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->g(Lcom/kingroot/kinguser/apx;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 539
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 540
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 542
    :try_start_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_2
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->reset()V

    .line 550
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/apx$a;

    move-result-object v1

    .line 551
    if-eqz v1, :cond_3

    .line 552
    invoke-interface {v1}, Lcom/kingroot/kinguser/apx$a;->Mh()V

    .line 556
    :cond_3
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aeW()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Et()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 558
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aeV()V

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->e(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqj;

    .line 563
    iget-object v3, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    const/16 v4, 0x8

    invoke-static {v3, v4, v0, v5}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    goto :goto_2

    .line 570
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->c(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 571
    iget-object v3, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v3, v7, v0, v5}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    .line 573
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MJ()Z

    .line 574
    iget-object v3, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v3, v8, v0, v5}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    goto :goto_3

    .line 580
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 581
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MI()Z

    move-result v3

    if-nez v3, :cond_7

    .line 582
    iget-object v3, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    const/4 v4, 0x5

    invoke-static {v3, v4, v0, v5}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    goto :goto_4

    .line 587
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$4;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0, v6, v5, v5}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    .line 589
    if-eqz v1, :cond_0

    .line 590
    invoke-interface {v1}, Lcom/kingroot/kinguser/apx$a;->Mi()V

    goto/16 :goto_0

    .line 543
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
