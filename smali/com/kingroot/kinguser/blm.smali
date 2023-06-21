.class public final Lcom/kingroot/kinguser/blm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bzU:Ljava/lang/String;

.field private static bzV:Landroid/content/Context;

.field private static bzW:Ljava/lang/String;

.field private static bzX:Ljava/lang/String;

.field private static bzY:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "krsdk-b"

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzU:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    const-string v0, "w.g"

    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blm;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 167
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    const-string v0, ""

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/blm;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmv;->U([B)[B

    move-result-object v0

    .line 170
    new-instance v2, Lcom/kingroot/kinguser/bmv;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bmv;-><init>()V

    .line 171
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmv;->a([B[B)[B

    move-result-object v0

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 173
    invoke-static {v0, p0}, Lcom/kingroot/kinguser/bmu;->b([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 178
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 175
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 174
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    sput-object p0, Lcom/kingroot/kinguser/blm;->bzV:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-stock-conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzU:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzV:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzW:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/bmu;->aga()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    .line 66
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzW:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzW:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/blm;->me(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    .line 72
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blm;->b(Ljava/lang/String;Ljava/util/Properties;)V

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    .line 94
    :cond_2
    return-void

    .line 81
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/blm;->me(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    .line 86
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzW:Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blm;->b(Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    const-string v0, "w.g.n"

    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blm;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    const-string v0, "w.b.n"

    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blm;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const-string v0, "s.i"

    invoke-static {v0}, Lcom/kingroot/kinguser/blm;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzV:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmn;->bD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    const-string v0, ""

    goto :goto_0

    .line 105
    :cond_2
    const-string v1, "00000000000001"

    if-eq v0, v1, :cond_0

    .line 106
    const-string v1, "s.i"

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/blm;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "w.g"

    invoke-static {v0}, Lcom/kingroot/kinguser/blm;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 182
    const-class v1, Lcom/kingroot/kinguser/blm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 184
    const-string v2, "Ku"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Str:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "w.g.n"

    invoke-static {v0}, Lcom/kingroot/kinguser/blm;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "w.b.n"

    invoke-static {v0}, Lcom/kingroot/kinguser/blm;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 7

    .prologue
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 207
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 208
    shl-int/lit8 v3, v0, 0x3

    array-length v4, v2

    rem-int/2addr v3, v4

    .line 209
    aget-object v4, v2, v3

    .line 210
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 218
    :catch_1
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static me(Ljava/lang/String;)Ljava/util/Properties;
    .locals 5

    .prologue
    .line 142
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 143
    const/4 v2, 0x0

    .line 145
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/blt$a;->mg(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/blm;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bmv;->U([B)[B

    move-result-object v1

    .line 147
    new-instance v4, Lcom/kingroot/kinguser/bmv;

    invoke-direct {v4}, Lcom/kingroot/kinguser/bmv;-><init>()V

    .line 148
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bmv;->b([B[B)[B

    move-result-object v0

    .line 149
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 156
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 152
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 151
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 190
    const-class v1, Lcom/kingroot/kinguser/blm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzW:Ljava/lang/String;

    sget-object v2, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/blm;->b(Ljava/lang/String;Ljava/util/Properties;)V

    .line 194
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bmu;->aga()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/kingroot/kinguser/blm;->bzU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    .line 199
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/kingroot/kinguser/blm;->bzX:Ljava/lang/String;

    sget-object v2, Lcom/kingroot/kinguser/blm;->bzY:Ljava/util/Properties;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/blm;->b(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_1
    monitor-exit v1

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
