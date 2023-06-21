.class public final Lcom/kingroot/kinguser/boy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/boy$1;,
        Lcom/kingroot/kinguser/boy$a;
    }
.end annotation


# instance fields
.field private bFS:Lcom/kingroot/kinguser/bpi;

.field private volatile bFT:Lcom/kingroot/kinguser/boq;

.field private bFU:Ljava/util/Vector;

.field private bFV:Ljava/util/Vector;

.field private bFW:Ljava/util/concurrent/LinkedBlockingQueue;

.field private e:I

.field private volatile f:Z


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bpi;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    iput-object v0, p0, Lcom/kingroot/kinguser/boy;->bFT:Lcom/kingroot/kinguser/boq;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/boy;->bFV:Ljava/util/Vector;

    iput v1, p0, Lcom/kingroot/kinguser/boy;->e:I

    iput-boolean v1, p0, Lcom/kingroot/kinguser/boy;->f:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/boy;->bFW:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/kingroot/kinguser/boq;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFT:Lcom/kingroot/kinguser/boq;

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFT:Lcom/kingroot/kinguser/boq;

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFT:Lcom/kingroot/kinguser/boq;

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFT:Lcom/kingroot/kinguser/boq;

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFG:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/kingroot/kinguser/boy;->bFT:Lcom/kingroot/kinguser/boq;

    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/boy$1;->bFX:[I

    invoke-virtual {p1}, Lcom/kingroot/kinguser/boq;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bFZ:Lcom/kingroot/kinguser/boy$a;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGa:Lcom/kingroot/kinguser/boy$a;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGc:Lcom/kingroot/kinguser/boy$a;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGf:Lcom/kingroot/kinguser/boy$a;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGe:Lcom/kingroot/kinguser/boy$a;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGd:Lcom/kingroot/kinguser/boy$a;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGg:Lcom/kingroot/kinguser/boy$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFV:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/boo;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFV:Ljava/util/Vector;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFV:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFV:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public final a(Lcom/kingroot/kinguser/boy$a;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGg:Lcom/kingroot/kinguser/boy$a;

    if-ne p1, v0, :cond_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFW:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/bpc;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bpc;-><init>(Lcom/kingroot/kinguser/boy;Lcom/kingroot/kinguser/boy$a;)V

    invoke-static {}, Lcom/kingroot/kinguser/boi;->agB()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public final agO()Lcom/kingroot/kinguser/boq;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFT:Lcom/kingroot/kinguser/boq;

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFW:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/kingroot/kinguser/boq;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boq;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kingroot/kinguser/boy;->f:Z

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/boy;->bFW:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boy$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    sget-object v1, Lcom/kingroot/kinguser/boy$1;->bFY:[I

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy$a;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    packed-switch v1, :pswitch_data_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    const-string v1, "DownloadTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "loopInform finish on command:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-boolean v3, p0, Lcom/kingroot/kinguser/boy;->f:Z

    return-void

    :pswitch_0
    move v1, v3

    goto :goto_0

    :pswitch_1
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bot;->h(Lcom/kingroot/kinguser/bom;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/boo;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/boo;->h(Lcom/kingroot/kinguser/bom;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v1

    move v2, v3

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v2, :cond_0

    const-string v0, "DownloadTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "loopInform finish on command:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v3

    goto :goto_0

    :pswitch_2
    :try_start_7
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bot;->l(Lcom/kingroot/kinguser/bom;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/boo;

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/boo;->l(Lcom/kingroot/kinguser/bom;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v2

    throw v1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    move v4, v3

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_5
    if-eqz v4, :cond_d

    const-string v0, "DownloadTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "loopInform finish on command:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v1, v3

    goto/16 :goto_0

    :pswitch_3
    :try_start_b
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bot;->i(Lcom/kingroot/kinguser/bom;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/boo;

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/boo;->i(Lcom/kingroot/kinguser/bom;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v2

    throw v1
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_6
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move v1, v3

    goto/16 :goto_0

    :pswitch_4
    :try_start_f
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bot;->j(Lcom/kingroot/kinguser/bom;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/boo;

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/boo;->j(Lcom/kingroot/kinguser/bom;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v1

    :try_start_11
    monitor-exit v2

    throw v1
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catch_1
    move-exception v1

    move v2, v4

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_3

    :cond_8
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move v1, v4

    goto/16 :goto_0

    :pswitch_5
    :try_start_13
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bot;->k(Lcom/kingroot/kinguser/bom;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    monitor-enter v2
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/boo;

    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/boo;->k(Lcom/kingroot/kinguser/bom;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v1

    :try_start_15
    monitor-exit v2

    throw v1
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_6
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_5

    :cond_a
    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move v1, v4

    goto/16 :goto_0

    :pswitch_6
    :try_start_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    monitor-enter v2
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFU:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/boo;

    if-eqz v1, :cond_b

    iget-object v8, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-interface {v1, v8}, Lcom/kingroot/kinguser/boo;->m(Lcom/kingroot/kinguser/bom;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v1

    :try_start_19
    monitor-exit v2

    throw v1
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :cond_c
    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    long-to-int v1, v6

    iput v1, p0, Lcom/kingroot/kinguser/boy;->e:I

    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpi;->cC()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    iget-object v1, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    long-to-int v2, v6

    iput v2, v1, Lcom/kingroot/kinguser/bpi;->F:I

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/boy;->bFS:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bot;->m(Lcom/kingroot/kinguser/bom;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    move v1, v4

    goto/16 :goto_0

    :pswitch_7
    move v1, v4

    goto/16 :goto_0

    :cond_d
    throw v0

    :catchall_8
    move-exception v0

    move v4, v3

    goto/16 :goto_5

    :catchall_9
    move-exception v0

    move v4, v2

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move v2, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/boy;->f:Z

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/boy;->e:I

    return v0
.end method
