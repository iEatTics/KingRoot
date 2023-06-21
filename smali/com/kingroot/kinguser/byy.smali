.class public Lcom/kingroot/kinguser/byy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static P(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    const-string v0, ""

    .line 27
    const/4 v2, 0x0

    .line 29
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    invoke-static {v1}, Lcom/kingroot/kinguser/byy;->c(Ljava/io/Closeable;)V

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    if-eqz v1, :cond_0

    .line 36
    invoke-static {v1}, Lcom/kingroot/kinguser/byy;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 35
    :goto_1
    if-eqz v1, :cond_0

    .line 36
    invoke-static {v1}, Lcom/kingroot/kinguser/byy;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    .line 36
    invoke-static {v2}, Lcom/kingroot/kinguser/byy;->c(Ljava/io/Closeable;)V

    .line 38
    :cond_2
    throw v0

    .line 35
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 33
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static Q(Ljava/io/File;)[B
    .locals 7

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 75
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 77
    long-to-int v0, v2

    .line 78
    int-to-long v4, v0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v0, Ljava/io/IOException;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 85
    :cond_0
    :goto_1
    return-object v0

    .line 81
    :cond_1
    :try_start_4
    new-array v0, v0, [B

    .line 82
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 90
    :catch_1
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 90
    :catch_2
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_2

    .line 89
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 94
    :cond_2
    :goto_3
    throw v0

    .line 90
    :catch_3
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 87
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 84
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method

.method public static R(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 59
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    invoke-static {v0}, Lcom/kingroot/kinguser/byy;->c(Ljava/io/Closeable;)V

    .line 64
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 62
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/byy;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/byy;->c(Ljava/io/Closeable;)V

    .line 63
    throw v0

    .line 62
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 60
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static cy(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 150
    .line 154
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :try_start_2
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/bxt;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 157
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 160
    :goto_0
    invoke-static {v3}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 161
    invoke-static {v1}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 158
    return-object v0

    :cond_0
    :try_start_3
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 161
    invoke-static {v1}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 162
    throw v0

    .line 160
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

.method public static readFile(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/byy;->Q(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
