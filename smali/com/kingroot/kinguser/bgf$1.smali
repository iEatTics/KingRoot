.class Lcom/kingroot/kinguser/bgf$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bgf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic boK:Lcom/kingroot/kinguser/bgf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgf;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    .line 71
    iget-object v1, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    monitor-enter v1

    .line 72
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    iget-object v2, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v2}, Lcom/kingroot/kinguser/bgf;->a(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v4}, Lcom/kingroot/kinguser/bgf;->b(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bgf;->a(Lcom/kingroot/kinguser/bgf;J)J

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgf;->a(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->onFinish()V

    .line 92
    :cond_0
    :goto_0
    monitor-exit v1

    .line 93
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgf;->a(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgf;->b(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bgf$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v2}, Lcom/kingroot/kinguser/bgf;->a(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/bgf$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 81
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    iget-object v2, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v2}, Lcom/kingroot/kinguser/bgf;->a(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v6, 0x64

    iget-object v5, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    .line 82
    invoke-static {v5}, Lcom/kingroot/kinguser/bgf;->c(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v8

    iget-object v5, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v5}, Lcom/kingroot/kinguser/bgf;->a(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    mul-long/2addr v6, v8

    iget-object v5, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    invoke-static {v5}, Lcom/kingroot/kinguser/bgf;->c(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v8

    div-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 83
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 81
    invoke-virtual {v0, v2, v3, v4}, Lcom/kingroot/kinguser/bgf;->g(JI)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bgf$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bgf$1;->boK:Lcom/kingroot/kinguser/bgf;

    .line 87
    invoke-static {v2}, Lcom/kingroot/kinguser/bgf;->b(Lcom/kingroot/kinguser/bgf;)J

    move-result-wide v2

    .line 86
    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/bgf$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 89
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method
