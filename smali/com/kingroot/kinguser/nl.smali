.class public final Lcom/kingroot/kinguser/nl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ILjava/io/File;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 134
    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 139
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    :try_start_2
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 143
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 146
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 149
    return-void

    .line 146
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 146
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

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 208
    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 213
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 216
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 217
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 219
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 222
    return-void

    .line 219
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 219
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

.method public static b(Landroid/content/Context;ILjava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 158
    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 164
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 167
    :try_start_3
    invoke-static {v1, v3}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 169
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 170
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 172
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v4}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 176
    return-void

    .line 172
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 172
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 231
    .line 236
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 237
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 240
    :try_start_3
    invoke-static {v1, v3}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 241
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 242
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 244
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 245
    invoke-static {v4}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 248
    return-void

    .line 244
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 245
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 244
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_0
.end method

.method public static b([BLjava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 57
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 59
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 184
    .line 188
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 189
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :try_start_2
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 193
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 196
    :goto_0
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 194
    return-object v0

    :cond_0
    :try_start_3
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 196
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

.method public static bM(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 32
    .line 36
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 41
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    :goto_0
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 45
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 42
    return-object v0

    :cond_0
    :try_start_3
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 45
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 44
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
