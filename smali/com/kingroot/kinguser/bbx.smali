.class public Lcom/kingroot/kinguser/bbx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static WW()V
    .locals 6

    .prologue
    .line 18
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bbx$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bbx$1;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 26
    return-void
.end method

.method private static declared-synchronized WX()V
    .locals 3

    .prologue
    .line 29
    const-class v1, Lcom/kingroot/kinguser/bbx;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/art;

    invoke-direct {v0}, Lcom/kingroot/kinguser/art;-><init>()V

    .line 30
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/art;->gp(I)Z

    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/kingroot/kinguser/art;->MH()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit v1

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/kingroot/kinguser/bbx;->WX()V

    return-void
.end method
