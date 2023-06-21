.class final Lcom/kingroot/kinguser/bjb$a;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic bvB:Lcom/kingroot/kinguser/bjb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjb;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/wo$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 105
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjb;->b(Lcom/kingroot/kinguser/bjb;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 116
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;I)I

    .line 117
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;I)I

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bjb;->c(Lcom/kingroot/kinguser/wo$a;)V

    goto :goto_2

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bjb;->d(Lcom/kingroot/kinguser/wo$a;)V

    goto :goto_2

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$a;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;Lcom/kingroot/kinguser/wo$a;)V

    goto :goto_2

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
