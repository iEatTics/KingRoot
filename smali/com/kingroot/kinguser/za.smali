.class public Lcom/kingroot/kinguser/za;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 53
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 54
    return-void
.end method

.method public static c(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/za;->d(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 58
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 59
    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 34
    if-eqz p0, :cond_0

    .line 35
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .prologue
    .line 92
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 93
    const-wide/16 v0, 0x0

    .line 95
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 96
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 97
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 99
    :cond_0
    return-wide v0
.end method

.method public static d(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6

    .prologue
    .line 64
    const/16 v0, 0x1000

    new-array v2, v0, [C

    .line 65
    const-wide/16 v0, 0x0

    .line 67
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 68
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 69
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 71
    :cond_0
    return-wide v0
.end method

.method public static d(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 46
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/za;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 104
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 105
    const/4 v0, -0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static h(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 87
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/za;->b(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
