.class public abstract Lcom/kingroot/kinguser/zo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 88
    .line 91
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/zo;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    .line 102
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 102
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 102
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static f(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 119
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    .line 123
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 124
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 126
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 127
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 131
    return-void

    .line 129
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
