.class Lcom/kingroot/kinguser/abm$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field Zk:Ljava/io/InputStream;

.field Zl:Ljava/io/ByteArrayOutputStream;

.field final synthetic Zm:Lcom/kingroot/kinguser/abm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abm;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/kingroot/kinguser/abm$a;->Zm:Lcom/kingroot/kinguser/abm;

    .line 419
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 420
    iput-object p3, p0, Lcom/kingroot/kinguser/abm$a;->Zk:Ljava/io/InputStream;

    .line 421
    iput-object p4, p0, Lcom/kingroot/kinguser/abm$a;->Zl:Ljava/io/ByteArrayOutputStream;

    .line 422
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 427
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 429
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/abm$a;->Zk:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 430
    if-gez v1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/abm$a;->Zm:Lcom/kingroot/kinguser/abm;

    invoke-static {v0}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :try_start_1
    const-string v0, ":RET=EOF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 433
    iget-object v2, p0, Lcom/kingroot/kinguser/abm$a;->Zl:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/abm$a;->Zl:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 435
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/abm$a;->Zm:Lcom/kingroot/kinguser/abm;

    invoke-static {v0}, Lcom/kingroot/kinguser/abm;->c(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 437
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/abm$a;->Zm:Lcom/kingroot/kinguser/abm;

    invoke-static {v0}, Lcom/kingroot/kinguser/abm;->c(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 438
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 454
    :goto_1
    return-void

    .line 435
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 451
    :catch_0
    move-exception v0

    goto :goto_1

    .line 438
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 441
    :cond_1
    if-lez v1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/kingroot/kinguser/abm$a;->Zm:Lcom/kingroot/kinguser/abm;

    invoke-static {v2}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 443
    :try_start_8
    iget-object v3, p0, Lcom/kingroot/kinguser/abm$a;->Zl:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 444
    iget-object v1, p0, Lcom/kingroot/kinguser/abm$a;->Zl:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 445
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 446
    :try_start_9
    iget-object v1, p0, Lcom/kingroot/kinguser/abm$a;->Zm:Lcom/kingroot/kinguser/abm;

    invoke-static {v1}, Lcom/kingroot/kinguser/abm;->c(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 447
    :try_start_a
    iget-object v2, p0, Lcom/kingroot/kinguser/abm$a;->Zm:Lcom/kingroot/kinguser/abm;

    invoke-static {v2}, Lcom/kingroot/kinguser/abm;->c(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 448
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 445
    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
.end method
