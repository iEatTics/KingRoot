.class public Lcom/kingroot/kinguser/bxz$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bxz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field Zk:Ljava/io/InputStream;

.field Zl:Ljava/io/ByteArrayOutputStream;

.field final synthetic bTE:Lcom/kingroot/kinguser/bxz;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bxz;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/kingroot/kinguser/bxz$a;->bTE:Lcom/kingroot/kinguser/bxz;

    .line 357
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 358
    iput-object p3, p0, Lcom/kingroot/kinguser/bxz$a;->Zk:Ljava/io/InputStream;

    .line 359
    iput-object p4, p0, Lcom/kingroot/kinguser/bxz$a;->Zl:Ljava/io/ByteArrayOutputStream;

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 365
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 367
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bxz$a;->Zk:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 368
    if-gez v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/bxz$a;->bTE:Lcom/kingroot/kinguser/bxz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bxz;->a(Lcom/kingroot/kinguser/bxz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :try_start_1
    const-string v0, ":RET=EOF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 371
    iget-object v2, p0, Lcom/kingroot/kinguser/bxz$a;->Zl:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/bxz$a;->Zl:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 373
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bxz$a;->bTE:Lcom/kingroot/kinguser/bxz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bxz;->b(Lcom/kingroot/kinguser/bxz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 375
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bxz$a;->bTE:Lcom/kingroot/kinguser/bxz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bxz;->b(Lcom/kingroot/kinguser/bxz;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 376
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    :goto_1
    return-void

    .line 373
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

    .line 389
    :catch_0
    move-exception v0

    goto :goto_1

    .line 376
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 379
    :cond_1
    if-lez v1, :cond_0

    .line 380
    iget-object v2, p0, Lcom/kingroot/kinguser/bxz$a;->bTE:Lcom/kingroot/kinguser/bxz;

    invoke-static {v2}, Lcom/kingroot/kinguser/bxz;->a(Lcom/kingroot/kinguser/bxz;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 381
    :try_start_8
    iget-object v3, p0, Lcom/kingroot/kinguser/bxz$a;->Zl:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 382
    iget-object v1, p0, Lcom/kingroot/kinguser/bxz$a;->Zl:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 383
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 384
    :try_start_9
    iget-object v1, p0, Lcom/kingroot/kinguser/bxz$a;->bTE:Lcom/kingroot/kinguser/bxz;

    invoke-static {v1}, Lcom/kingroot/kinguser/bxz;->b(Lcom/kingroot/kinguser/bxz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 385
    :try_start_a
    iget-object v2, p0, Lcom/kingroot/kinguser/bxz$a;->bTE:Lcom/kingroot/kinguser/bxz;

    invoke-static {v2}, Lcom/kingroot/kinguser/bxz;->b(Lcom/kingroot/kinguser/bxz;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 386
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

    .line 383
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
