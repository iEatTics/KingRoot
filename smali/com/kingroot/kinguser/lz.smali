.class public final Lcom/kingroot/kinguser/lz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static vB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/lz;->vB:Z

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/ks;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v3, "../"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ks;

    .line 109
    if-eqz v0, :cond_0

    .line 114
    iget-object v3, v0, Lcom/kingroot/kinguser/ks;->un:Ljava/lang/String;

    .line 116
    iget-boolean v0, v0, Lcom/kingroot/kinguser/ks;->uo:Z

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    .line 124
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/kingroot/kinguser/nk;->m(Ljava/io/File;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 125
    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 133
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    :try_start_3
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/nn;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 138
    :try_start_4
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 141
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 148
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    .line 88
    :catch_1
    move-exception v0

    .line 90
    const/4 v0, 0x0

    goto :goto_3

    .line 135
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 138
    :goto_4
    :try_start_5
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 138
    :catchall_1
    move-exception v0

    :goto_5
    :try_start_6
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 145
    :cond_2
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 138
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    .line 135
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method public static declared-synchronized eq()I
    .locals 3

    .prologue
    const/high16 v0, 0x1000000

    .line 30
    const-class v2, Lcom/kingroot/kinguser/lz;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/kingroot/kinguser/lz;->vB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 42
    :goto_0
    monitor-exit v2

    return v0

    .line 36
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/lz;->er()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 41
    :goto_1
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    :try_start_2
    sput-boolean v0, Lcom/kingroot/kinguser/lz;->vB:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 42
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    const v1, 0x100000c

    goto :goto_1

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static er()I
    .locals 5

    .prologue
    const/high16 v1, 0x1000000

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bw()Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/kl;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    const v0, 0x1000003

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bv()Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/lz;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/lz;->es()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 66
    goto :goto_0
.end method

.method private static es()I
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/nk;->bn(Ljava/lang/String;)Z

    move-result v1

    .line 156
    if-nez v1, :cond_0

    .line 158
    const v0, 0x1000004

    .line 180
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/nk;->bn(Ljava/lang/String;)Z

    move-result v1

    .line 162
    if-nez v1, :cond_1

    .line 164
    const v0, 0x1000006

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/nk;->bn(Ljava/lang/String;)Z

    move-result v1

    .line 168
    if-nez v1, :cond_2

    .line 170
    const v0, 0x1000005

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/nk;->bn(Ljava/lang/String;)Z

    move-result v0

    .line 174
    if-nez v0, :cond_3

    .line 176
    const v0, 0x1000007

    goto :goto_0

    .line 180
    :cond_3
    const/high16 v0, 0x1000000

    goto :goto_0
.end method
