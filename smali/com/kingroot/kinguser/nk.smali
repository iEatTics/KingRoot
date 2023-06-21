.class public final Lcom/kingroot/kinguser/nk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Checksum can\'t be computed on directories"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :try_start_1
    new-instance v1, Lcom/kingroot/kinguser/nq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/nq;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    :try_start_2
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 472
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 473
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 476
    return-object p1

    .line 472
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 473
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 472
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

.method public static a(ILjava/io/File;)V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/nk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/nl;->a(Landroid/content/Context;ILjava/io/File;)V

    .line 180
    return-void
.end method

.method public static b(ILjava/io/File;)V
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/kingroot/kinguser/nk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/nl;->b(Landroid/content/Context;ILjava/io/File;)V

    .line 190
    return-void
.end method

.method public static b([BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/nl;->b([BLjava/lang/String;)V

    .line 281
    return-void
.end method

.method public static bL(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/kingroot/kinguser/nk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/nl;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static bM(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 252
    invoke-static {p0}, Lcom/kingroot/kinguser/nl;->bM(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static bn(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/nk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/nl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 201
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/nk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/nl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 211
    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/nk;->o(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 48
    :goto_0
    return-wide v0

    .line 45
    :catch_0
    move-exception v0

    .line 48
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static n(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 441
    .line 444
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->e(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 448
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 451
    :goto_0
    return-object v0

    .line 446
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 448
    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 446
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static o(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 456
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/nk;->a(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;

    .line 457
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method
