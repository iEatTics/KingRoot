.class public Lcom/kingroot/kinguser/arm;
.super Lcom/kingroot/kinguser/arl;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asg$b;


# instance fields
.field private aLS:J

.field private final aLT:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/arl;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/arm;->aLS:J

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/arm$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/arm$1;-><init>(Lcom/kingroot/kinguser/arm;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/arm;->aLT:Lcom/kingroot/kinguser/bed;

    return-void
.end method


# virtual methods
.method public LY()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/kingroot/kinguser/arl;->LY()V

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/asg;->NO()Lcom/kingroot/kinguser/asg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asg;->NQ()V

    .line 46
    return-void
.end method

.method protected MG()Z
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/arm;->aLT:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    monitor-enter p0

    .line 32
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/kingroot/kinguser/arm;->aLS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected MH()Z
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/asg;->NO()Lcom/kingroot/kinguser/asg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asg;->a(Landroid/content/pm/IPackageDataObserver;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public Nl()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Nm()J
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/asg;->NO()Lcom/kingroot/kinguser/asg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asg;->NQ()V

    .line 80
    iget-wide v0, p0, Lcom/kingroot/kinguser/arm;->aLS:J

    return-wide v0
.end method

.method public a(Lcom/kingroot/kinguser/asg$a;)V
    .locals 4

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/kingroot/kinguser/arm;->aLS:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/asg$a;->aML:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/arm;->aLS:J

    .line 63
    iget-wide v0, p0, Lcom/kingroot/kinguser/arm;->aLS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0

    .line 68
    :cond_0
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public go(I)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
