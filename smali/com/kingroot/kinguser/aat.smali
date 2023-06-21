.class public Lcom/kingroot/kinguser/aat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bZ(I)J
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 81
    const-wide/16 v0, 0x0

    .line 86
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v2, 0x3e8

    invoke-direct {v3, v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 117
    :goto_0
    return-wide v0

    .line 99
    :cond_0
    :try_start_4
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    array-length v4, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v7, 0x11

    if-ge v4, v7, :cond_1

    .line 112
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 105
    :cond_1
    const/16 v4, 0xd

    :try_start_5
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v4, 0xe

    aget-object v4, v2, v4

    .line 106
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v4, 0xf

    aget-object v4, v2, v4

    .line 107
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v4, 0x10

    aget-object v2, v2, v4

    .line 108
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-wide v0

    add-long/2addr v0, v8

    .line 112
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    .line 110
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 112
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    :goto_2
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 112
    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    goto :goto_2

    .line 109
    :catch_1
    move-exception v2

    move-object v3, v4

    move-object v5, v6

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    goto :goto_1
.end method

.method public static pX()J
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 32
    const-wide/16 v0, 0x0

    .line 38
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v2, "/proc/stat"

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v2, 0x3e8

    invoke-direct {v6, v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 70
    :goto_0
    return-wide v0

    .line 51
    :cond_0
    :try_start_4
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 52
    array-length v4, v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v7, 0x9

    if-ge v4, v7, :cond_1

    .line 65
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 57
    :cond_1
    const/4 v4, 0x2

    :try_start_5
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v4, 0x3

    aget-object v4, v2, v4

    .line 58
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v4, 0x6

    aget-object v4, v2, v4

    .line 59
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v4, 0x7

    aget-object v4, v2, v4

    .line 60
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v4, 0x8

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-wide v0

    add-long/2addr v0, v8

    .line 65
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    .line 63
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 65
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    :goto_2
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 65
    :catchall_1
    move-exception v0

    move-object v5, v4

    move-object v6, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v4

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    goto :goto_2

    .line 62
    :catch_1
    move-exception v2

    move-object v5, v4

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    goto :goto_1
.end method

.method public static pY()I
    .locals 2

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/kingroot/kinguser/aat$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aat$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 142
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
