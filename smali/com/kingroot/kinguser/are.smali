.class public Lcom/kingroot/kinguser/are;
.super Lcom/kingroot/kinguser/aqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aqy",
        "<",
        "Lcom/kingroot/kinguser/arl;",
        ">;"
    }
.end annotation


# instance fields
.field private final aLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqy;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    .line 25
    return-void
.end method

.method private Nj()V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 114
    invoke-virtual {p0}, Lcom/kingroot/kinguser/are;->ML()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aqh;->bV(J)V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public MK()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public My()Z
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/kingroot/kinguser/aqy;->My()Z

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iget-object v1, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqb;

    .line 51
    invoke-interface {v0}, Lcom/kingroot/kinguser/aqb;->My()Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v0, v0, Lcom/kingroot/kinguser/aqi;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected Nb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Nc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Nf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public Nk()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bV(J)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/aqy;->bV(J)V

    .line 109
    invoke-direct {p0}, Lcom/kingroot/kinguser/are;->Nj()V

    .line 110
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public l(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingroot/kinguser/aqh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v1, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/are;->aLL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/are;->Nj()V

    .line 35
    return-void

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
