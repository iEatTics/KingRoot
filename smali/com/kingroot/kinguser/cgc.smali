.class public Lcom/kingroot/kinguser/cgc;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private bVH:Lcom/kingroot/kinguser/bzk$a;

.field private bVi:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-wide p3, p0, Lcom/kingroot/kinguser/cgc;->bVi:J

    .line 30
    return-void
.end method

.method private amS()Lcom/kingroot/kinguser/bzk$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/cgc;->bVH:Lcom/kingroot/kinguser/bzk$a;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akk()Lcom/kingroot/kinguser/bzk$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cgc;->bVH:Lcom/kingroot/kinguser/bzk$a;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cgc;->bVH:Lcom/kingroot/kinguser/bzk$a;

    return-object v0
.end method


# virtual methods
.method public fs()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/kingroot/kinguser/cgc;->bVi:J

    return-wide v0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/kingroot/kinguser/cgc;->amS()Lcom/kingroot/kinguser/bzk$a;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/bzk$a;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 54
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/cgc;->amS()Lcom/kingroot/kinguser/bzk$a;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/bzk$a;->b(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cgc;->amS()Lcom/kingroot/kinguser/bzk$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/bzk$a;->a(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 42
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
