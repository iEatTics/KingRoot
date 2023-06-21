.class public final Lcom/kingroot/kinguser/acu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(JJJ)Z
    .locals 2

    .prologue
    .line 118
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-lez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ci(I)J
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 144
    .line 145
    const-wide/16 v0, 0x0

    .line 150
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x3e8

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 173
    :goto_0
    return-wide v0

    .line 159
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 160
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 161
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 163
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 164
    const/16 v6, 0x15

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-wide v0

    .line 168
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 173
    :goto_1
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v4, v3

    .line 168
    :goto_2
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    :goto_3
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 168
    :catchall_1
    move-exception v0

    move-object v5, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, v3

    move-object v3, v4

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_3

    .line 165
    :catch_1
    move-exception v4

    move-object v4, v3

    goto :goto_2

    :catch_2
    move-exception v5

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_2
.end method

.method public static g(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string p0, "yyyy-MM-dd HH:mm:ss"

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(JJ)Z
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static se()J
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 182
    const-wide/16 v0, 0x0

    .line 187
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/proc/uptime"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x3e8

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 190
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 214
    :goto_0
    return-wide v0

    .line 196
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 197
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 198
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 200
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 201
    array-length v6, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 209
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 204
    :cond_1
    const/4 v6, 0x0

    :try_start_5
    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-wide v0

    .line 205
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    .line 209
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v4, v3

    .line 209
    :goto_1
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_2
    invoke-static {v5}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 209
    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 206
    :catch_1
    move-exception v4

    move-object v4, v3

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_1
.end method
