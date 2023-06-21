.class public Lcom/kingroot/kinguser/awg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static SK()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 21
    const/4 v3, -0x1

    .line 23
    invoke-static {v6}, Lcom/kingroot/kinguser/aay;->ac(Z)Ljava/util/List;

    move-result-object v1

    .line 24
    const-string v0, ""

    .line 25
    const-string v5, ""

    .line 26
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/aay;->ak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 28
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_3

    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v0

    move v1, v2

    move v0, v2

    .line 38
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    invoke-static {v4}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v2

    move v2, v6

    .line 45
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qe()Z

    move-result v0

    .line 46
    if-eqz v0, :cond_0

    const/4 v6, 0x2

    .line 47
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/ady;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void

    .line 34
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    move v1, v6

    move-object v8, v0

    move v0, v3

    move-object v3, v8

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v1, v6

    move-object v8, v0

    move v0, v3

    move-object v3, v8

    goto :goto_0
.end method

.method public static declared-synchronized SL()V
    .locals 7

    .prologue
    .line 54
    const-class v1, Lcom/kingroot/kinguser/awg;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Do()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    monitor-exit v1

    return-void

    .line 58
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/awg$1;

    invoke-direct {v6}, Lcom/kingroot/kinguser/awg$1;-><init>()V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/awg;->SK()V

    return-void
.end method
