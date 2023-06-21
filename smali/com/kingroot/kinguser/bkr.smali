.class public Lcom/kingroot/kinguser/bkr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/kingroot/kinguser/bkr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bkr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/kingroot/loader/sdk/KlInfo;[B)I
    .locals 4

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/cn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cn;-><init>()V

    .line 168
    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 169
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, p1}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    .line 171
    const-string v2, "meripi"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cn;

    .line 173
    invoke-static {v0, p0}, Lcom/kingroot/kinguser/bkr;->b(Lcom/kingroot/kinguser/cn;Lcom/kingroot/loader/sdk/KlInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/16 v0, -0x12

    .line 186
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const/16 v0, -0x15

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/kingroot/kinguser/bkr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readWupObjectFromFile, err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    const/4 v0, -0x7

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/kingroot/kinguser/cn;Lcom/kingroot/loader/sdk/KlInfo;)Z
    .locals 1

    .prologue
    .line 222
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 224
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/cn;->id:I

    iput v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->me:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 226
    iget v0, p0, Lcom/kingroot/kinguser/cn;->kd:I

    iput v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 227
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mi:I

    iput v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    .line 228
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mj:I

    iput v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lX:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lW:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lY:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->mf:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 48
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 51
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "../"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\*"

    const-string v7, "/"

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    new-instance v2, Ljava/io/File;

    const/4 v4, 0x0

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 67
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :cond_3
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 80
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 81
    const/16 v0, 0x1000

    :try_start_4
    new-array v0, v0, [B

    .line 83
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_5

    .line 84
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 87
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 90
    :try_start_6
    invoke-static {v3}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    .line 91
    invoke-static {v2}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 98
    if-eqz v5, :cond_4

    .line 100
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    move v0, v1

    .line 88
    goto/16 :goto_0

    .line 90
    :cond_5
    :try_start_8
    invoke-static {v4}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    .line 91
    invoke-static {v2}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 94
    :catch_1
    move-exception v0

    move-object v3, v5

    .line 95
    :goto_5
    :try_start_9
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 98
    if-eqz v3, :cond_6

    .line 100
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_6
    :goto_6
    move v0, v1

    .line 96
    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_7
    :try_start_b
    invoke-static {v4}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    .line 91
    invoke-static {v2}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v5, :cond_7

    .line 100
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 101
    :cond_7
    :goto_9
    throw v0

    .line 98
    :cond_8
    if-eqz v5, :cond_9

    .line 100
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 105
    :cond_9
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 101
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_9

    .line 98
    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v5, v3

    goto :goto_8

    .line 94
    :catch_6
    move-exception v0

    goto :goto_5

    .line 90
    :catchall_4
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v4, v3

    goto :goto_7

    .line 86
    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 194
    :try_start_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    const/4 v2, 0x0

    const-class v3, Lcom/kingroot/loader/host/stub/KlActivity;

    .line 197
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, p0, p3, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    :cond_2
    sget-object v1, Lcom/kingroot/kinguser/bkr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPluginClassEntry | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    sget-object v2, Lcom/kingroot/kinguser/bkr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err when test plugin class entry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Lcom/kingroot/loader/sdk/KlInfo;)I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bkr;->mb(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 116
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/bkr;->a(Lcom/kingroot/loader/sdk/KlInfo;[B)I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private static mb(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :goto_0
    return-object v1

    .line 135
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    const-string v0, "assets/meripi.m"

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 137
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 140
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v5, v4

    .line 141
    new-array v0, v5, [B

    .line 142
    const/4 v4, 0x0

    .line 143
    :goto_1
    if-ge v4, v5, :cond_3

    .line 144
    sub-int v6, v5, v4

    invoke-virtual {v2, v0, v4, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    .line 145
    if-gez v6, :cond_2

    .line 154
    if-eqz v3, :cond_1

    .line 156
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 159
    :cond_1
    :goto_2
    invoke-static {v2}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 148
    :cond_2
    add-int/2addr v4, v6

    goto :goto_1

    .line 154
    :cond_3
    if-eqz v3, :cond_4

    .line 156
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    :cond_4
    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    :goto_4
    move-object v1, v0

    .line 162
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 151
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    if-eqz v3, :cond_5

    .line 156
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 159
    :cond_5
    :goto_6
    invoke-static {v2}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 160
    goto :goto_4

    .line 154
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_7
    if-eqz v3, :cond_6

    .line 156
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 159
    :cond_6
    :goto_8
    invoke-static {v1}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    throw v0

    .line 157
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_8

    .line 154
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 150
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_5
.end method
