.class public Lcom/kingroot/kinguser/bbl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 48
    const-string v0, "kingrootsdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public static varargs a(Ljava/io/File;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    array-length v2, p1

    .line 75
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 76
    aget-object v3, p1, v0

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static bm(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x3

    .line 88
    const-string v1, "key_index_last_get_dnn_wording"

    invoke-static {p0, v1}, Lcom/kingroot/kinguser/bbl;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 92
    const-string v2, "key_time_last_get_dnn_wording"

    invoke-static {p0, v2}, Lcom/kingroot/kinguser/bbl;->y(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    if-le v1, v0, :cond_2

    .line 102
    :goto_0
    const-string v1, "key_time_last_get_dnn_wording"

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    invoke-static {p0, v1, v2, v3}, Lcom/kingroot/kinguser/bbl;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 104
    const-string v1, "key_index_last_get_dnn_wording"

    invoke-static {p0, v1, v0}, Lcom/kingroot/kinguser/bbl;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 109
    :goto_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    const v0, 0x7f0701a3

    .line 117
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 112
    const v0, 0x7f0701a4

    goto :goto_2

    .line 114
    :cond_1
    const v0, 0x7f0701a5

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 54
    const-string v0, "kingrootsdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 41
    const-string v0, "kingrootsdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 43
    return-wide v0
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "kingrootsdk"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 61
    return v0
.end method
