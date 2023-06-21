.class final Lcom/kingroot/kinguser/bpc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic bFZ:Lcom/kingroot/kinguser/boy$a;

.field private synthetic bGw:Lcom/kingroot/kinguser/boy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/boy;Lcom/kingroot/kinguser/boy$a;)V
    .locals 0

    iput-object p1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    iput-object p2, p0, Lcom/kingroot/kinguser/bpc;->bFZ:Lcom/kingroot/kinguser/boy$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/kingroot/kinguser/boy$1;->bFY:[I

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bFZ:Lcom/kingroot/kinguser/boy$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/boy$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v1}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bot;->b(Lcom/kingroot/kinguser/bom;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boo;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v3}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/boo;->b(Lcom/kingroot/kinguser/bom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v1}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bot;->a(Lcom/kingroot/kinguser/bom;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boo;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v3}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/boo;->a(Lcom/kingroot/kinguser/bom;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v1}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bot;->c(Lcom/kingroot/kinguser/bom;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boo;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v3}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/boo;->c(Lcom/kingroot/kinguser/bom;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v1}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bot;->d(Lcom/kingroot/kinguser/bom;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boo;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v3}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/boo;->d(Lcom/kingroot/kinguser/bom;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v1}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bot;->f(Lcom/kingroot/kinguser/bom;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boo;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v3}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/boo;->f(Lcom/kingroot/kinguser/bom;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v1}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bot;->g(Lcom/kingroot/kinguser/bom;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boo;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v3}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/boo;->g(Lcom/kingroot/kinguser/bom;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_b
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v1}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bot;->e(Lcom/kingroot/kinguser/bom;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v0}, Lcom/kingroot/kinguser/boy;->b(Lcom/kingroot/kinguser/boy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boo;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/kingroot/kinguser/bpc;->bGw:Lcom/kingroot/kinguser/boy;

    invoke-static {v3}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy;)Lcom/kingroot/kinguser/bpi;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/boo;->e(Lcom/kingroot/kinguser/bom;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_d
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto/16 :goto_0

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
