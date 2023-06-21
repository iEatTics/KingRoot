.class public final Lcom/kingroot/kinguser/bnl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ae(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    const-string v1, ""

    .line 34
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-string v1, ""

    .line 50
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 51
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static aj(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 80
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    const-string v0, ""

    goto :goto_0
.end method

.method public static eq(Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 96
    .line 98
    if-eqz p0, :cond_2

    .line 99
    const-string v1, "/sys/block/mmcblk0/device/"

    .line 100
    const-string v0, "MMC"

    .line 108
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "cid"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 119
    if-eqz v4, :cond_0

    .line 121
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 128
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 134
    :cond_1
    :goto_2
    return-object v0

    .line 102
    :cond_2
    const-string v1, "/sys/block/mmcblk1/device/"

    .line 103
    const-string v0, "SD"

    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 119
    :cond_4
    if-eqz v4, :cond_5

    .line 121
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 126
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 128
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 134
    :cond_6
    :goto_4
    const-string v0, ""

    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 119
    :goto_5
    if-eqz v3, :cond_7

    .line 121
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 126
    :cond_7
    :goto_6
    if-eqz v0, :cond_6

    .line 128
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 129
    :catch_1
    move-exception v0

    goto :goto_4

    .line 119
    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_7
    if-eqz v4, :cond_8

    .line 121
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 126
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 128
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 133
    :cond_9
    :goto_9
    throw v0

    .line 122
    :catch_2
    move-exception v1

    goto :goto_1

    .line 129
    :catch_3
    move-exception v1

    goto :goto_2

    .line 122
    :catch_4
    move-exception v0

    goto :goto_3

    .line 129
    :catch_5
    move-exception v0

    goto :goto_4

    .line 122
    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_8

    .line 129
    :catch_8
    move-exception v1

    goto :goto_9

    .line 119
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 117
    :catch_9
    move-exception v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    goto :goto_5
.end method
