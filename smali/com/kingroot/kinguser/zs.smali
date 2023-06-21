.class public final Lcom/kingroot/kinguser/zs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static J(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 6

    .prologue
    .line 27
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 28
    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aah;->G([B)[B

    move-result-object v3

    .line 33
    sget-object v4, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v4}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/kingroot/kinguser/aag;->decrypt([B[B)[B

    move-result-object v3

    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 41
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 39
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 36
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 6

    .prologue
    .line 51
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 52
    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/rs;->cv(Ljava/lang/String;)[B

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aah;->G([B)[B

    move-result-object v3

    .line 57
    sget-object v4, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v4}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/kingroot/kinguser/aag;->decrypt([B[B)[B

    move-result-object v3

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 65
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 63
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 60
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 5

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aah;->G([B)[B

    move-result-object v1

    .line 82
    sget-object v2, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v2}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/kingroot/kinguser/aag;->encrypt([B[B)[B

    move-result-object v1

    .line 83
    invoke-static {v1, p0}, Lcom/kingroot/kinguser/rs;->c([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 89
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 87
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 84
    :catch_1
    move-exception v1

    goto :goto_1
.end method
