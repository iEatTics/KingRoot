.class public Lcom/kingroot/kinguser/bxe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bTg:Ljava/lang/String;


# direct methods
.method public static cg(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    move v0, v1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bxe;->bTg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingroot/kinguser/bxe;->bTg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "biu"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_1
    const/4 v4, 0x0

    .line 48
    const/4 v3, 0x0

    .line 50
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTh:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 53
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTi:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 54
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTj:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 55
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTk:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 56
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTl:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 57
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTm:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 58
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTn:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 59
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTo:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 60
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTp:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 61
    sget-object v3, Lcom/kingroot/kinguser/bxf;->bTq:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 63
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 64
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 66
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/File;->setExecutable(Z)Z

    .line 68
    invoke-static {v0}, Lcom/kingroot/kinguser/bxy;->nz(Ljava/lang/String;)Lcom/kingroot/kinguser/bxz$b;

    move-result-object v3

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/bxy;->closeShell()V

    .line 75
    iget-object v5, v3, Lcom/kingroot/kinguser/bxz$b;->mStdOut:Ljava/lang/String;

    .line 78
    iget-object v6, v3, Lcom/kingroot/kinguser/bxz$b;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_5

    .line 79
    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v3, v6}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    .line 80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 83
    const-string v3, "88"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    .line 111
    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    if-eqz v2, :cond_9

    .line 119
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 121
    goto/16 :goto_0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turingmm"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "biu"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 86
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_3
    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    goto :goto_2

    .line 90
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    goto :goto_2

    .line 94
    :cond_5
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v4, v6, v7}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    .line 95
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    .line 97
    iget-object v3, v3, Lcom/kingroot/kinguser/bxz$b;->mStdErr:Ljava/lang/String;

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 99
    const-string v4, "7F45"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    goto :goto_2

    .line 102
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/bxe;->d(IZI)I

    move-result v1

    goto :goto_2

    .line 105
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/bxe;->d(IZI)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    goto :goto_2

    .line 120
    :catch_0
    move-exception v0

    move v0, v1

    .line 121
    goto/16 :goto_0

    .line 114
    :catch_1
    move-exception v0

    move v0, v1

    move-object v1, v3

    .line 117
    :goto_3
    if-eqz v1, :cond_0

    .line 119
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 120
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 117
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_8

    .line 119
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 123
    :cond_8
    :goto_5
    throw v0

    .line 120
    :catch_3
    move-exception v1

    goto :goto_5

    .line 117
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 114
    :catch_4
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private static d(IZI)I
    .locals 1

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    .line 136
    :goto_0
    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    goto :goto_0
.end method
