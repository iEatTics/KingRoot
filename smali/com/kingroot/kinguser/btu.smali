.class public Lcom/kingroot/kinguser/btu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bNN:Ljava/lang/String;

.field private final bNO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/btu;->bNN:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/kingroot/kinguser/btu;->bNO:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v3, 0x0

    .line 27
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/kingroot/kinguser/btu;->bNN:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/kingroot/kinguser/btu;->bNN:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 71
    if-eqz v2, :cond_0

    .line 73
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 81
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 97
    :cond_2
    :goto_2
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 90
    :catch_2
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 34
    :cond_3
    :try_start_5
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_a

    .line 36
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 37
    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/btu;->bNO:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 39
    const/16 v0, 0x400

    :try_start_7
    new-array v0, v0, [B

    .line 41
    :goto_3
    const/4 v2, 0x0

    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v2

    if-ne v2, v6, :cond_7

    .line 71
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 73
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 79
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 81
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 87
    :cond_6
    :goto_6
    if-eqz v1, :cond_2

    .line 89
    :try_start_a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 90
    :catch_3
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 42
    :cond_7
    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    .line 67
    :catch_4
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    .line 69
    :goto_7
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 71
    if-eqz v3, :cond_8

    .line 73
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 79
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 81
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 87
    :cond_9
    :goto_9
    if-eqz v1, :cond_2

    .line 89
    :try_start_f
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_2

    .line 90
    :catch_5
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 47
    :cond_a
    :try_start_10
    const-string v0, "META-INF\\MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_e

    .line 49
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 50
    :try_start_11
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/btu;->bNO:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 52
    const/16 v0, 0x400

    :try_start_12
    new-array v0, v0, [B

    .line 54
    :goto_a
    const/4 v2, 0x0

    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v6, :cond_4

    .line 55
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_a

    .line 67
    :catch_6
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_7

    .line 74
    :catch_7
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 82
    :catch_8
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 70
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    .line 71
    :goto_b
    if-eqz v4, :cond_b

    .line 73
    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 79
    :cond_b
    :goto_c
    if-eqz v2, :cond_c

    .line 81
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 87
    :cond_c
    :goto_d
    if-eqz v1, :cond_d

    .line 89
    :try_start_15
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 95
    :cond_d
    :goto_e
    throw v0

    .line 74
    :catch_9
    move-exception v3

    .line 76
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 82
    :catch_a
    move-exception v2

    .line 84
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 90
    :catch_b
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 74
    :catch_c
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 82
    :catch_d
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 70
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v2, v3

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v4, v3

    goto :goto_b

    .line 67
    :catch_e
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_7

    :catch_f
    move-exception v0

    move-object v3, v2

    goto/16 :goto_7

    :catch_10
    move-exception v0

    move-object v3, v4

    goto/16 :goto_7

    :catch_11
    move-exception v0

    move-object v3, v4

    goto/16 :goto_7

    :cond_e
    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_4
.end method
