.class public Lcom/kingroot/kinguser/bbd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Cp()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 130
    :try_start_2
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0

    .line 125
    :catch_1
    move-exception v1

    .line 128
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 130
    :try_start_3
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 131
    :catch_2
    move-exception v0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 130
    :try_start_4
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 131
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    goto :goto_2

    .line 128
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bbn;->M(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 189
    iget-object v1, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRs:Landroid/net/LocalSocket;

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRs:Landroid/net/LocalSocket;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/bbd;->a(Landroid/net/LocalSocket;Ljava/lang/String;)V

    .line 199
    :goto_0
    const-string v1, "s2"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "s1"

    .line 200
    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    .line 203
    const/4 v0, 0x3

    .line 205
    :cond_1
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 214
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-static {v3, v1, v0, v2}, Lcom/kingroot/kinguser/ady;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 215
    return-void

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/bbd;->aJ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_4
    const/4 v1, 0x2

    .line 208
    if-eqz p1, :cond_2

    .line 209
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public static aJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/bbd;->kn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    :cond_2
    :try_start_0
    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 47
    new-instance v2, Landroid/net/LocalSocketAddress;

    invoke-direct {v2, p0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 49
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 52
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 54
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Cp()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 66
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 66
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_4
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 67
    if-eqz v2, :cond_3

    .line 69
    :try_start_5
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 70
    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 66
    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 63
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static km(Ljava/lang/String;)Landroid/net/LocalSocket;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 104
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/bbd;->kn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_2
    :try_start_0
    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 91
    new-instance v2, Landroid/net/LocalSocketAddress;

    invoke-direct {v2, p0, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 93
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 97
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v0, v1

    .line 101
    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    goto :goto_2

    .line 95
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static kn(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 137
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/data/com.kingroot.kinguser/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 145
    const-string v2, "chmod 0771 /data/data/com.kingroot.kinguser/cache"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 148
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
