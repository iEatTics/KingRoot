.class public final Lcom/kingroot/kinguser/blv$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/blv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private bAA:Ljava/io/InputStream;

.field private bAB:Ljava/io/ByteArrayOutputStream;

.field private synthetic bAC:Lcom/kingroot/kinguser/blv;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/blv;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/kingroot/kinguser/blv$a;->bAC:Lcom/kingroot/kinguser/blv;

    .line 372
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 373
    iput-object p3, p0, Lcom/kingroot/kinguser/blv$a;->bAA:Ljava/io/InputStream;

    .line 374
    iput-object p4, p0, Lcom/kingroot/kinguser/blv$a;->bAB:Ljava/io/ByteArrayOutputStream;

    .line 375
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 380
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 382
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/blv$a;->bAA:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 383
    if-gez v1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/blv$a;->bAC:Lcom/kingroot/kinguser/blv;

    invoke-static {v0}, Lcom/kingroot/kinguser/blv;->a(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/blv;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 386
    iget-object v2, p0, Lcom/kingroot/kinguser/blv$a;->bAB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/blv$a;->bAB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 388
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/blv$a;->bAC:Lcom/kingroot/kinguser/blv;

    invoke-static {v0}, Lcom/kingroot/kinguser/blv;->b(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 390
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/blv$a;->bAC:Lcom/kingroot/kinguser/blv;

    invoke-static {v0}, Lcom/kingroot/kinguser/blv;->b(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 391
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 407
    :goto_1
    return-void

    .line 388
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0

    .line 407
    :catch_0
    move-exception v0

    goto :goto_1

    .line 391
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 392
    :cond_1
    if-lez v1, :cond_0

    .line 395
    iget-object v2, p0, Lcom/kingroot/kinguser/blv$a;->bAC:Lcom/kingroot/kinguser/blv;

    invoke-static {v2}, Lcom/kingroot/kinguser/blv;->a(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 396
    :try_start_5
    iget-object v3, p0, Lcom/kingroot/kinguser/blv$a;->bAB:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 397
    iget-object v1, p0, Lcom/kingroot/kinguser/blv$a;->bAB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 398
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 399
    :try_start_6
    iget-object v1, p0, Lcom/kingroot/kinguser/blv$a;->bAC:Lcom/kingroot/kinguser/blv;

    invoke-static {v1}, Lcom/kingroot/kinguser/blv;->b(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 400
    :try_start_7
    iget-object v2, p0, Lcom/kingroot/kinguser/blv$a;->bAC:Lcom/kingroot/kinguser/blv;

    invoke-static {v2}, Lcom/kingroot/kinguser/blv;->b(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1

    throw v0

    .line 398
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method
