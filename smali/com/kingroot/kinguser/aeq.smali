.class public Lcom/kingroot/kinguser/aeq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static T(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/jce/wup/UniAttribute;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 190
    new-instance v3, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 192
    const/4 v0, 0x0

    .line 194
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/zi;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 196
    :try_start_1
    invoke-static {v0}, Lcom/kingroot/kinguser/aen;->i(Ljava/io/InputStream;)Lcom/kingroot/kinguser/aen;

    .line 198
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 199
    new-array v5, v4, [B

    move v2, v1

    .line 202
    :goto_0
    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    .line 203
    sub-int v2, v4, v1

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 207
    :cond_0
    if-lez v1, :cond_3

    .line 209
    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v1

    .line 210
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 211
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 212
    invoke-virtual {v3, p1}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 214
    :cond_1
    invoke-virtual {v3, v1}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 224
    :goto_1
    return-object v3

    .line 217
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can not decoding empty data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    :catch_0
    move-exception v1

    .line 222
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 86
    .line 87
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object p2

    .line 90
    :cond_1
    invoke-static {p0, p3}, Lcom/kingroot/kinguser/aeq;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/jce/wup/UniAttribute;

    move-result-object v0

    .line 92
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_1
    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 58
    .line 59
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object p4

    .line 65
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2, p5}, Lcom/kingroot/kinguser/aeq;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/jce/wup/UniAttribute;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p3, p4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_1
    if-eqz v0, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    move-object v0, p4

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/jce/wup/UniAttribute;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 149
    invoke-static {p0, p1, p2}, Lcom/kingroot/kinguser/aeq;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const/4 v2, 0x0

    .line 156
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/aen;->i(Ljava/io/InputStream;)Lcom/kingroot/kinguser/aen;

    .line 160
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 161
    new-array v5, v4, [B

    move v2, v3

    .line 164
    :goto_1
    if-ltz v3, :cond_1

    add-int/2addr v2, v3

    if-ge v2, v4, :cond_1

    .line 165
    sub-int v3, v4, v2

    invoke-virtual {v1, v5, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    goto :goto_1

    .line 169
    :cond_1
    if-lez v2, :cond_3

    .line 171
    sget-object v2, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v2}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v2

    .line 172
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 173
    invoke-virtual {v0, p3}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 177
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can not decoding empty data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :catch_0
    move-exception v2

    .line 182
    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 179
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 236
    const-class v1, Lcom/kingroot/kinguser/aeq;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 243
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit v1

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
