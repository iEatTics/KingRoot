.class public Lcom/kingroot/kinguser/bsk;
.super Lcom/kingroot/kinguser/bsj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bsk$a;
    }
.end annotation


# instance fields
.field private Ys:J

.field private aGQ:Ljava/lang/String;

.field private bLL:Lorg/apache/http/client/methods/HttpGet;

.field private bLM:Ljava/lang/String;

.field private bLN:Ljava/lang/String;

.field private bLO:Ljava/lang/String;

.field private bLP:I

.field private bLQ:Z

.field private bLR:J

.field private bLS:Z

.field private mContext:Landroid/content/Context;

.field private mIsCanceled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/bsj;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLL:Lorg/apache/http/client/methods/HttpGet;

    .line 39
    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLO:Ljava/lang/String;

    .line 43
    iput v3, p0, Lcom/kingroot/kinguser/bsk;->bLP:I

    .line 45
    iput-boolean v3, p0, Lcom/kingroot/kinguser/bsk;->bLQ:Z

    .line 46
    iput-boolean v3, p0, Lcom/kingroot/kinguser/bsk;->mIsCanceled:Z

    .line 48
    iput-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    .line 49
    iput-wide v6, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    .line 50
    iput-boolean v3, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/bsk;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/bsk;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/String;

    .line 71
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    .line 70
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bsm;->b(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v0

    .line 72
    if-ne v0, v4, :cond_1

    .line 73
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLQ:Z

    .line 74
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLQ:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/bsn;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    .line 85
    :goto_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLL:Lorg/apache/http/client/methods/HttpGet;

    .line 93
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpEntity;Landroid/os/Bundle;Z)I
    .locals 13

    .prologue
    .line 332
    .line 333
    const/4 v2, 0x0

    .line 334
    const/4 v1, 0x0

    .line 336
    const/16 v0, 0x2000

    new-array v5, v0, [B

    .line 338
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    .line 339
    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v4, v6

    .line 341
    const/16 v0, 0x64

    if-ne v4, v0, :cond_2

    .line 342
    const/4 v0, 0x0

    .line 406
    if-eqz v1, :cond_0

    .line 407
    const-string v3, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 417
    const-string v1, "HttpBase"

    const-string v3, "fos closing file"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 428
    :cond_1
    :goto_1
    return v0

    .line 410
    :catch_0
    move-exception v1

    .line 412
    const-string v3, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    :catch_1
    move-exception v1

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 345
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 348
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 351
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    if-eqz p3, :cond_4

    :try_start_4
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 356
    :goto_2
    const/4 v1, 0x0

    move v2, v4

    .line 357
    :goto_3
    :try_start_5
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v4, -0x1

    if-ne v6, v4, :cond_5

    .line 373
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 375
    const-string v2, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mTotalSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCompletedSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", httpEntity.getContentLength(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    int-to-long v4, v1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    const/4 v1, 0x0

    .line 406
    :goto_4
    if-eqz v0, :cond_c

    .line 407
    const-string v2, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16

    move v0, v1

    .line 416
    :goto_5
    if-eqz v3, :cond_1

    .line 417
    const-string v1, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 420
    :catch_2
    move-exception v1

    .line 421
    const/16 v0, -0x1b58

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 353
    :cond_4
    :try_start_8
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_17
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    goto :goto_2

    .line 358
    :cond_5
    :try_start_9
    iget-boolean v4, p0, Lcom/kingroot/kinguser/bsk;->mIsCanceled:Z
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_20
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_18
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v4, :cond_8

    .line 359
    const/16 v1, -0x138b

    .line 406
    if-eqz v0, :cond_6

    .line 407
    const-string v2, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 416
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 417
    const-string v0, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_7
    :goto_7
    move v0, v1

    .line 360
    goto/16 :goto_1

    .line 410
    :catch_3
    move-exception v0

    .line 412
    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 420
    :catch_4
    move-exception v0

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 362
    :cond_8
    :try_start_c
    iget-wide v8, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    .line 363
    add-int v4, v1, v6

    .line 365
    iget-wide v8, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    div-long/2addr v8, v10

    long-to-int v1, v8

    .line 366
    if-eq v1, v2, :cond_12

    .line 368
    const-string v2, "key_progress"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p2}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    .line 371
    :goto_8
    const/4 v2, 0x0

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_20
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_18
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move v2, v1

    move v1, v4

    goto/16 :goto_3

    .line 378
    :cond_9
    const/4 v1, -0x7

    goto/16 :goto_4

    .line 379
    :catch_5
    move-exception v0

    .line 380
    :goto_9
    const/16 v3, -0x1b59

    .line 381
    :try_start_d
    const-string v4, "HttpBase"

    const-string v5, "file not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 406
    if-eqz v1, :cond_11

    .line 407
    const-string v0, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    move v0, v3

    .line 416
    :goto_a
    if-eqz v2, :cond_1

    .line 417
    const-string v1, "HttpBase"

    const-string v3, "fos closing file"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_1

    .line 420
    :catch_6
    move-exception v1

    .line 421
    const/16 v0, -0x1b58

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 410
    :catch_7
    move-exception v1

    .line 411
    const/16 v0, -0x1b58

    .line 412
    const-string v3, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 384
    :catch_8
    move-exception v0

    move-object v3, v2

    .line 385
    :goto_b
    const/16 v2, -0x13be

    .line 386
    :try_start_10
    const-string v4, "HttpBase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "socket error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 406
    if-eqz v1, :cond_10

    .line 407
    const-string v0, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    move v0, v2

    .line 416
    :goto_c
    if-eqz v3, :cond_1

    .line 417
    const-string v1, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_1

    .line 420
    :catch_9
    move-exception v1

    .line 421
    const/16 v0, -0x1b58

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 410
    :catch_a
    move-exception v1

    .line 411
    const/16 v0, -0x1b58

    .line 412
    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 389
    :catch_b
    move-exception v0

    move-object v3, v2

    .line 390
    :goto_d
    const/16 v2, -0x13bf

    .line 391
    :try_start_13
    const-string v4, "HttpBase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "socket timeout error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 406
    if-eqz v1, :cond_f

    .line 407
    const-string v0, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    move v0, v2

    .line 416
    :goto_e
    if-eqz v3, :cond_1

    .line 417
    const-string v1, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    goto/16 :goto_1

    .line 420
    :catch_c
    move-exception v1

    .line 421
    const/16 v0, -0x1b58

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 410
    :catch_d
    move-exception v1

    .line 411
    const/16 v0, -0x1b58

    .line 412
    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 394
    :catch_e
    move-exception v0

    move-object v3, v2

    .line 395
    :goto_f
    const/16 v2, -0x13c0

    .line 396
    :try_start_16
    const-string v4, "HttpBase"

    const-string v5, "socket or file io error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 406
    if-eqz v1, :cond_e

    .line 407
    const-string v0, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    move v0, v2

    .line 416
    :goto_10
    if-eqz v3, :cond_1

    .line 417
    const-string v1, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    goto/16 :goto_1

    .line 420
    :catch_f
    move-exception v1

    .line 421
    const/16 v0, -0x1b58

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 410
    :catch_10
    move-exception v1

    .line 411
    const/16 v0, -0x1b58

    .line 412
    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 399
    :catch_11
    move-exception v0

    move-object v3, v2

    .line 400
    :goto_11
    const/16 v2, -0x1388

    .line 401
    :try_start_19
    const-string v4, "HttpBase"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v4, "HttpBase"

    const-string v5, "receive data error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 406
    if-eqz v1, :cond_d

    .line 407
    const-string v0, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    move v0, v2

    .line 416
    :goto_12
    if-eqz v3, :cond_1

    .line 417
    const-string v1, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    goto/16 :goto_1

    .line 420
    :catch_12
    move-exception v1

    .line 421
    const/16 v0, -0x1b58

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 410
    :catch_13
    move-exception v1

    .line 411
    const/16 v0, -0x1b58

    .line 412
    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 405
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 406
    :goto_13
    if-eqz v1, :cond_a

    .line 407
    const-string v2, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 416
    :cond_a
    :goto_14
    if-eqz v3, :cond_b

    .line 417
    const-string v1, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    .line 426
    :cond_b
    :goto_15
    throw v0

    .line 410
    :catch_14
    move-exception v1

    .line 412
    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 420
    :catch_15
    move-exception v1

    .line 422
    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 410
    :catch_16
    move-exception v0

    .line 411
    const/16 v1, -0x1b58

    .line 412
    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    move v0, v1

    goto/16 :goto_5

    .line 405
    :catchall_1
    move-exception v0

    goto :goto_13

    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_13

    .line 399
    :catch_17
    move-exception v0

    goto/16 :goto_11

    :catch_18
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_11

    .line 394
    :catch_19
    move-exception v0

    goto/16 :goto_f

    :catch_1a
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_f

    .line 389
    :catch_1b
    move-exception v0

    goto/16 :goto_d

    :catch_1c
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_d

    .line 384
    :catch_1d
    move-exception v0

    goto/16 :goto_b

    :catch_1e
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_b

    .line 379
    :catch_1f
    move-exception v0

    move-object v2, v3

    goto/16 :goto_9

    :catch_20
    move-exception v1

    move-object v2, v3

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_9

    :cond_d
    move v0, v2

    goto/16 :goto_12

    :cond_e
    move v0, v2

    goto/16 :goto_10

    :cond_f
    move v0, v2

    goto/16 :goto_e

    :cond_10
    move v0, v2

    goto/16 :goto_c

    :cond_11
    move v0, v3

    goto/16 :goto_a

    :cond_12
    move v1, v2

    goto/16 :goto_8
.end method

.method private eE(Z)I
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v6, -0x1b59

    const/4 v3, 0x0

    const/16 v0, -0x1b58

    .line 443
    .line 447
    const-string v2, "HttpGetFile"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v2, "HttpGetFile"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/bsk;->bLO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 456
    iget v4, p0, Lcom/kingroot/kinguser/bsk;->bLP:I

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/kingroot/kinguser/bsk;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    iget-object v4, p0, Lcom/kingroot/kinguser/bsk;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingroot/kinguser/bsk;->bLO:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 470
    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 471
    const/16 v3, 0x400

    :try_start_3
    new-array v3, v3, [B

    .line 473
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 497
    :goto_2
    if-eqz v4, :cond_0

    .line 499
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 506
    :cond_0
    :goto_3
    if-eqz v5, :cond_b

    .line 508
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    move v0, v1

    .line 516
    :goto_4
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 521
    :cond_1
    :goto_5
    return v0

    .line 459
    :cond_2
    :try_start_6
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bsk;->ahU()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 461
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 462
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    move-object v4, v3

    .line 483
    :goto_6
    :try_start_7
    const-string v5, "HttpBase"

    const-string v7, "file not found"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 497
    if-eqz v3, :cond_f

    .line 499
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move v1, v6

    .line 506
    :goto_7
    if-eqz v4, :cond_e

    .line 508
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move v0, v1

    .line 516
    :goto_8
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 464
    :cond_3
    :try_start_a
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 465
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 466
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 467
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 486
    :catch_1
    move-exception v1

    move-object v5, v3

    .line 487
    :goto_9
    const/16 v4, -0x1b90

    .line 488
    :try_start_b
    const-string v6, "HttpBase"

    const-string v7, "file io error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 497
    if-eqz v3, :cond_d

    .line 499
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    move v1, v4

    .line 506
    :goto_a
    if-eqz v5, :cond_c

    .line 508
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    move v0, v1

    .line 516
    :goto_b
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 474
    :cond_4
    const/4 v8, 0x0

    :try_start_e
    invoke-virtual {v5, v3, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_1

    .line 481
    :catch_2
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_6

    :cond_5
    move-object v4, v3

    move-object v5, v3

    move v1, v6

    goto/16 :goto_2

    .line 500
    :catch_3
    move-exception v1

    .line 502
    const-string v3, "HttpBase"

    const-string v5, "fis close file error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    goto :goto_7

    .line 509
    :catch_4
    move-exception v1

    .line 511
    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 500
    :catch_5
    move-exception v1

    .line 502
    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    goto :goto_a

    .line 509
    :catch_6
    move-exception v1

    .line 511
    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 491
    :catch_7
    move-exception v1

    move-object v2, v3

    move-object v5, v3

    .line 493
    :goto_c
    :try_start_f
    const-string v4, "HttpBase"

    const-string v6, "file op error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 497
    if-eqz v3, :cond_6

    .line 499
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 506
    :cond_6
    :goto_d
    if-eqz v5, :cond_7

    .line 508
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 516
    :cond_7
    :goto_e
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_5

    .line 500
    :catch_8
    move-exception v1

    .line 502
    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 509
    :catch_9
    move-exception v1

    .line 511
    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 496
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    .line 497
    :goto_f
    if-eqz v3, :cond_8

    .line 499
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 506
    :cond_8
    :goto_10
    if-eqz v5, :cond_9

    .line 508
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 516
    :cond_9
    :goto_11
    if-eqz p1, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 519
    :cond_a
    throw v0

    .line 500
    :catch_a
    move-exception v1

    .line 502
    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 509
    :catch_b
    move-exception v1

    .line 511
    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 500
    :catch_c
    move-exception v1

    .line 502
    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    goto/16 :goto_3

    .line 509
    :catch_d
    move-exception v1

    .line 511
    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 496
    :catchall_1
    move-exception v0

    move-object v5, v3

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v5, v4

    goto :goto_f

    .line 491
    :catch_e
    move-exception v1

    move-object v5, v3

    goto/16 :goto_c

    :catch_f
    move-exception v1

    goto/16 :goto_c

    :catch_10
    move-exception v1

    move-object v3, v4

    goto/16 :goto_c

    .line 486
    :catch_11
    move-exception v1

    move-object v2, v3

    move-object v5, v3

    goto/16 :goto_9

    :catch_12
    move-exception v1

    goto/16 :goto_9

    :catch_13
    move-exception v1

    move-object v3, v4

    goto/16 :goto_9

    .line 481
    :catch_14
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_6

    :catch_15
    move-exception v1

    move-object v4, v5

    goto/16 :goto_6

    :cond_b
    move v0, v1

    goto/16 :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_b

    :cond_d
    move v1, v4

    goto/16 :goto_a

    :cond_e
    move v0, v1

    goto/16 :goto_8

    :cond_f
    move v1, v6

    goto/16 :goto_7
.end method

.method private nd(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 154
    const/16 v2, -0x3e8

    .line 156
    const/4 v1, 0x0

    .line 158
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move v0, v2

    .line 165
    :goto_0
    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLL:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 167
    const/4 v0, 0x0

    .line 170
    :cond_0
    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v2, "HttpBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 162
    const/16 v0, -0x41d

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsk$a;)I
    .locals 11

    .prologue
    .line 183
    const/16 v3, -0xbb8

    .line 184
    const-string v4, ""

    .line 185
    const/4 v2, 0x0

    .line 186
    const/4 v1, 0x0

    .line 187
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bsk;->ahT()Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 193
    :try_start_1
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bsk;->nd(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    move v1, v3

    .line 300
    :goto_0
    if-eqz v2, :cond_0

    .line 301
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 304
    :cond_0
    if-eqz v0, :cond_1

    .line 308
    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, -0x7

    if-eq v1, v0, :cond_2

    .line 309
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "key_errorMsg"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "key_downSize"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "key_total"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "key_sdcardstatus"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bsi;->cG(J)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v2, "key_downType"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    :cond_2
    move v0, v1

    .line 319
    :goto_2
    return v0

    .line 196
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->mIsCanceled:Z

    if-eqz v0, :cond_4

    .line 197
    const/16 v3, -0xbbb

    move-object v0, v1

    move v1, v3

    .line 198
    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLL:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_5

    .line 202
    const/16 v3, -0xbed

    .line 203
    const-string v0, "HttpBase"

    const-string v6, "url == null"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move v1, v3

    .line 204
    goto :goto_0

    .line 208
    :cond_5
    const-string v0, "downloadfile"

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 214
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".tmp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    .line 215
    const-string v0, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mTempName: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLO:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 217
    iput-object p1, p0, Lcom/kingroot/kinguser/bsk;->bLO:Ljava/lang/String;

    .line 219
    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLL:Lorg/apache/http/client/methods/HttpGet;

    const-string v6, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bsk;->bLL:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 227
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 228
    const-string v6, "HttpBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "statusCode == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 229
    const/16 v6, 0xc8

    if-eq v0, v6, :cond_9

    const/16 v6, 0xce

    if-eq v0, v6, :cond_9

    .line 230
    rsub-int v3, v0, -0xbb8

    .line 232
    const/16 v6, 0x1a0

    if-eq v0, v6, :cond_9

    move-object v0, v1

    move v1, v3

    .line 233
    goto/16 :goto_0

    .line 212
    :cond_8
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p2, v0}, Lcom/kingroot/kinguser/bsi;->aW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object p1

    goto/16 :goto_3

    .line 236
    :cond_9
    :try_start_5
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->mIsCanceled:Z

    if-eqz v0, :cond_a

    .line 237
    const/16 v3, -0xbbb

    move-object v0, v1

    move v1, v3

    .line 238
    goto/16 :goto_0

    .line 241
    :cond_a
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 242
    if-nez v0, :cond_b

    .line 243
    const/16 v3, -0xfa0

    .line 244
    const-string v0, "HttpBase"

    const-string v6, "httpEntity == null"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move v1, v3

    .line 245
    goto/16 :goto_0

    .line 248
    :cond_b
    invoke-direct {p0, v0, v5, p3}, Lcom/kingroot/kinguser/bsk;->a(Lorg/apache/http/HttpEntity;Landroid/os/Bundle;Z)I

    move-result v3

    if-eqz v3, :cond_c

    move-object v0, v1

    move v1, v3

    .line 253
    goto/16 :goto_0

    .line 256
    :cond_c
    if-eqz p4, :cond_d

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kingroot/kinguser/bsk;->bLM:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/kingroot/kinguser/bsk;->bLN:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/kingroot/kinguser/bsk$a;->na(Ljava/lang/String;)Z

    move-result v0

    .line 258
    if-nez v0, :cond_d

    .line 259
    const/16 v3, -0x1b58

    move-object v0, v1

    move v1, v3

    .line 260
    goto/16 :goto_0

    .line 264
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bsk;->eE(Z)I
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v3

    if-eqz v3, :cond_e

    move-object v0, v1

    move v1, v3

    .line 265
    goto/16 :goto_0

    .line 268
    :cond_e
    const/4 v3, 0x0

    move-object v0, v1

    move v1, v3

    .line 271
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 272
    :goto_4
    const/16 v1, -0xbeb

    .line 273
    :try_start_6
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 274
    const-string v6, "HttpBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "protocol error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 300
    if-eqz v3, :cond_f

    .line 301
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 304
    :cond_f
    if-eqz v2, :cond_10

    .line 309
    :cond_10
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "key_errorMsg"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "key_downSize"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "key_total"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "key_sdcardstatus"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bsi;->cG(J)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v2, "key_downType"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_2

    .line 314
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 276
    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 277
    :goto_6
    const/16 v1, -0xbee

    .line 278
    :try_start_7
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 279
    const-string v6, "HttpBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "socket error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 300
    if-eqz v3, :cond_12

    .line 301
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 304
    :cond_12
    if-eqz v2, :cond_13

    .line 309
    :cond_13
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "key_errorMsg"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "key_downSize"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "key_total"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "key_sdcardstatus"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bsi;->cG(J)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v2, "key_downType"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_2

    .line 314
    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    .line 281
    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 282
    :goto_8
    const/16 v1, -0xbef

    .line 283
    :try_start_8
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 284
    const-string v6, "HttpBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "socket timeout error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 300
    if-eqz v3, :cond_15

    .line 301
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 304
    :cond_15
    if-eqz v2, :cond_16

    .line 309
    :cond_16
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "key_errorMsg"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "key_downSize"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "key_total"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "key_sdcardstatus"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bsi;->cG(J)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v2, "key_downType"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_9
    int-to-byte v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_2

    .line 314
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 286
    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 287
    :goto_a
    const/16 v1, -0xbf0

    .line 288
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 289
    const-string v6, "HttpBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "io error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 300
    if-eqz v3, :cond_18

    .line 301
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 304
    :cond_18
    if-eqz v2, :cond_19

    .line 309
    :cond_19
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "key_errorMsg"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "key_downSize"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "key_total"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "key_sdcardstatus"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bsi;->cG(J)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v2, "key_downType"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_b
    int-to-byte v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_2

    .line 314
    :cond_1a
    const/4 v0, 0x0

    goto :goto_b

    .line 294
    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 295
    :goto_c
    const/16 v1, -0xbb8

    .line 296
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 297
    const-string v6, "HttpBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 300
    if-eqz v3, :cond_1b

    .line 301
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 304
    :cond_1b
    if-eqz v2, :cond_1c

    .line 309
    :cond_1c
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "key_errorMsg"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "key_downSize"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "key_total"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "key_sdcardstatus"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bsi;->cG(J)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v2, "key_downType"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_d
    int-to-byte v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_2

    .line 314
    :cond_1d
    const/4 v0, 0x0

    goto :goto_d

    .line 299
    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v10

    .line 300
    :goto_e
    if-eqz v3, :cond_1e

    .line 301
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 304
    :cond_1e
    if-eqz v2, :cond_1f

    .line 308
    :cond_1f
    if-eqz v4, :cond_20

    const/4 v2, -0x7

    if-eq v4, v2, :cond_20

    .line 309
    const-string v2, "key_errcode"

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v2, "key_errorMsg"

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "key_downSize"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "key_total"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    long-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "key_sdcardstatus"

    iget-wide v2, p0, Lcom/kingroot/kinguser/bsk;->Ys:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bsk;->bLR:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bsi;->cG(J)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v2, "key_downType"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsk;->bLS:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_f
    int-to-byte v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/bsk;->a(ILandroid/os/Bundle;)V

    .line 317
    :cond_20
    throw v1

    .line 314
    :cond_21
    const/4 v0, 0x0

    goto :goto_f

    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 299
    :catchall_1
    move-exception v0

    move-object v10, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v10, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v10, v0

    move-object v0, v4

    move v4, v1

    move-object v1, v10

    goto :goto_e

    .line 294
    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_c

    .line 286
    :catch_7
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_a

    .line 281
    :catch_9
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_8

    :catch_a
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_8

    .line 276
    :catch_b
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_6

    .line 271
    :catch_d
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    :catch_e
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4
.end method

.method public ahU()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bsk;->bLO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kingroot/kinguser/bsk;->aGQ:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public nc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kingroot/kinguser/bsk;->bLO:Ljava/lang/String;

    .line 131
    return-void
.end method
