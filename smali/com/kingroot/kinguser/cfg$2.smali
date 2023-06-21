.class Lcom/kingroot/kinguser/cfg$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfg;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 79
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->a(Lcom/kingroot/kinguser/cfg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    new-instance v1, Lcom/kingroot/kinguser/cfg$b;

    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/cfg$b;-><init>(Lcom/kingroot/kinguser/cfg;Lcom/kingroot/kinguser/cfg$1;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->b(Lcom/kingroot/kinguser/cfg;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->b(Lcom/kingroot/kinguser/cfg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfg$a;

    .line 83
    iget v4, v0, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/kingroot/kinguser/cfg$b;->a(Ljava/lang/Integer;Lcom/kingroot/kinguser/cfg$a;)V

    .line 84
    iget v4, v0, Lcom/kingroot/kinguser/cfg$a;->mFlag:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfg;->c(Lcom/kingroot/kinguser/cfg;)Ljava/util/TreeMap;

    move-result-object v4

    iget v5, v0, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 90
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->b(Lcom/kingroot/kinguser/cfg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$2;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->d(Lcom/kingroot/kinguser/cfg;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
