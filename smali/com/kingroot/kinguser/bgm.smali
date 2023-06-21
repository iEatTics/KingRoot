.class public Lcom/kingroot/kinguser/bgm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 34
    :cond_2
    :try_start_0
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/File;->setReadable(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 50
    :try_start_1
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/File;->setReadable(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 40
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/File;->setReadable(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 50
    :try_start_3
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/File;->setReadable(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 52
    :catch_1
    move-exception v1

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 50
    :try_start_4
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/File;->setReadable(Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 54
    :cond_4
    :goto_3
    throw v0

    .line 52
    :catch_2
    move-exception v1

    goto :goto_3

    .line 43
    :catch_3
    move-exception v1

    goto :goto_2

    .line 52
    :catch_4
    move-exception v1

    goto :goto_1
.end method
