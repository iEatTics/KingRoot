.class public final Lcom/kingroot/kinguser/abj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static P(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/abm;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 86
    .line 88
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Lcom/kingroot/kinguser/abm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abm;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    :try_start_1
    const-string v2, "id"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/abm;->f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 95
    :goto_1
    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    move-object v0, v1

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 101
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/abm;->f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :cond_1
    :goto_2
    return-object v0

    .line 91
    :cond_2
    :try_start_2
    new-instance v0, Lcom/kingroot/kinguser/abm;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/abm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 106
    :goto_3
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    move-object v0, v1

    .line 108
    goto :goto_2

    .line 94
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 104
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public static Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/abj;->d(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 201
    .line 205
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/abm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abm;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    invoke-static {v0}, Lcom/kingroot/kinguser/acp;->add(Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 208
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/abm;->f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 210
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 214
    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    move-object v0, v1

    .line 220
    :goto_0
    if-nez v0, :cond_1

    .line 221
    new-instance v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v1, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Cmd Exception"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/common/utils/system/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 214
    :goto_1
    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    move-object v0, v1

    .line 216
    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 216
    :cond_2
    throw v0

    .line 214
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 211
    :catch_1
    move-exception v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/abm;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 141
    if-nez p0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    :try_start_0
    const-string v1, "id"

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lcom/kingroot/kinguser/abm;->f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v2, "uid=0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    .line 268
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/abm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abm;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 270
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/abm;->f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 272
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abm;->R(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 276
    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    move-object v0, v1

    .line 282
    :goto_0
    if-nez v0, :cond_1

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    :cond_1
    return-object v0

    .line 273
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 276
    :goto_1
    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    move-object v0, v1

    .line 278
    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 277
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 278
    :cond_2
    throw v0

    .line 276
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 273
    :catch_1
    move-exception v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 3

    .prologue
    .line 190
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1d4c0

    .line 191
    :goto_0
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v2, p1, p1, v0, v1}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v2}, Lcom/kingroot/kinguser/abj;->a(Ljava/lang/String;Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static en(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/aav;->ql()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -v"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x7d0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    const-string v0, "sh"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/abj;->a(Ljava/lang/String;Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 39
    :goto_0
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v2, "kinguser_su"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 44
    :goto_1
    return v0

    .line 37
    :cond_0
    const-string v2, "sh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static eo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "sh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v3, "kinguser_su"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 60
    array-length v2, v1

    if-lez v2, :cond_0

    .line 61
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abj;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    return-object v0
.end method

.method public static eq(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 119
    .line 121
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/abm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abm;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 124
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/abm;->f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 129
    :goto_1
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    move-object v0, v1

    .line 131
    goto :goto_0

    .line 127
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static er(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    invoke-static {p0}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 166
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
