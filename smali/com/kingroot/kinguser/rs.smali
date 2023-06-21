.class public final Lcom/kingroot/kinguser/rs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 790
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    :try_start_0
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v0

    .line 798
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 799
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 819
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    :try_start_0
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 823
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->cB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 824
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 832
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 828
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(ILjava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/rs;->d(ILjava/io/File;)V

    .line 139
    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->q(Ljava/io/File;)V

    .line 140
    return-void
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 762
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 763
    const-string v0, "0"

    .line 765
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 405
    const-class v4, Lcom/kingroot/kinguser/rs;

    monitor-enter v4

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    .line 409
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p2, p1

    .line 413
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 419
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 421
    invoke-static {v5}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    .line 423
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/zi;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 424
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 426
    const/16 v5, 0x2000

    :try_start_3
    new-array v5, v5, [B

    .line 429
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 430
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 440
    :goto_1
    :try_start_4
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 441
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 443
    :goto_2
    monitor-exit v4

    return-object v0

    .line 432
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 433
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 434
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 435
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 440
    :goto_3
    :try_start_6
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 441
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 440
    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_4
    :try_start_7
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 441
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 440
    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 437
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_1

    :cond_4
    move-object v2, v1

    move-object v3, v1

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/rs;->f(Ljava/lang/String;Ljava/io/File;)V

    .line 173
    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->q(Ljava/io/File;)V

    .line 174
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    const-class v0, Lcom/kingroot/kinguser/rs;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, p2}, Lcom/kingroot/kinguser/rs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(ILjava/io/File;)V
    .locals 0

    .prologue
    .line 184
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/rt;->c(ILjava/io/File;)V

    .line 185
    return-void
.end method

.method public static c([BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/rt;->c([BLjava/lang/String;)V

    .line 296
    return-void
.end method

.method public static cA(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 545
    .line 548
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 550
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 552
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 553
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 562
    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 563
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 565
    :goto_2
    const-string v0, ""

    :goto_3
    return-object v0

    .line 555
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 562
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 563
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_3

    .line 559
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 562
    :goto_4
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 563
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_2

    .line 562
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_5
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 563
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 562
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 559
    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    .line 557
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static cB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 842
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 844
    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kinguser/rt;->f(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 846
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 844
    return-object v1

    .line 846
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static cC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 857
    .line 860
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 861
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 862
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/rt;->f(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 864
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 865
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 862
    return-object v0

    .line 864
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 865
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 864
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public static cv(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 235
    invoke-static {p0}, Lcom/kingroot/kinguser/rt;->cv(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static cw(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/rt;->n(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static cx(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/rt;->n(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static cy(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 267
    invoke-static {p0}, Lcom/kingroot/kinguser/rt;->cy(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static cz(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 358
    invoke-static {p0}, Lcom/kingroot/kinguser/rt;->cz(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(ILjava/io/File;)V
    .locals 0

    .prologue
    .line 194
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/rt;->d(ILjava/io/File;)V

    .line 195
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 369
    invoke-static {p0}, Lcom/kingroot/kinguser/rt;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/rt;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 206
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 215
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/rt;->f(Ljava/lang/String;Ljava/io/File;)V

    .line 216
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 325
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/rt;->g(Ljava/lang/String;Ljava/io/File;)V

    .line 326
    return-void
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/kingroot/kinguser/rt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;I)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 676
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 711
    :goto_0
    return-object v0

    .line 683
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :try_start_1
    new-array v1, p1, [B

    .line 687
    :cond_1
    sub-int v4, p1, v0

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 688
    add-int/2addr v0, v4

    .line 689
    if-lt v0, p1, :cond_1

    move v4, v0

    .line 694
    :goto_1
    if-nez v4, :cond_2

    .line 708
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 695
    goto :goto_0

    .line 698
    :cond_2
    if-ge v4, p1, :cond_3

    .line 699
    :try_start_2
    new-array v0, v4, [B

    .line 700
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 708
    :goto_2
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 708
    :goto_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 711
    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 705
    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move v4, v0

    goto :goto_1
.end method

.method public static n(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/kingroot/kinguser/rs;->a(ILjava/io/File;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static p(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/kingroot/kinguser/rt;->p(Ljava/io/File;)J

    move-result-wide v0

    .line 46
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static q(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 0764 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 161
    return-void
.end method

.method public static r(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 380
    :cond_0
    return-void
.end method

.method public static s(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 736
    invoke-static {p0}, Lcom/kingroot/kinguser/rt;->s(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static t(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 740
    .line 743
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->h(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 748
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 751
    :goto_0
    return-object v0

    .line 745
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 748
    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 745
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/kingroot/kinguser/rs;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/rt;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method
