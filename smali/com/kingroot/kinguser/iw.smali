.class public final Lcom/kingroot/kinguser/iw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aE(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 24
    .line 26
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/ix;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ix;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    const-string v2, "id"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/ix;->a(Ljava/lang/String;J)Lcom/kingroot/kinguser/ix$b;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 29
    :goto_0
    if-nez v2, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix;->shutdown()V

    move-object v0, v1

    .line 34
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 35
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/ix;->a(Ljava/lang/String;J)Lcom/kingroot/kinguser/ix$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    :cond_1
    :goto_1
    return-object v0

    .line 28
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 39
    :goto_2
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix;->shutdown()V

    move-object v0, v1

    .line 41
    goto :goto_1

    .line 38
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static aF(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 52
    .line 54
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/ix;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ix;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 57
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/ix;->a(Ljava/lang/String;J)Lcom/kingroot/kinguser/ix$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 61
    :goto_1
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix;->shutdown()V

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 60
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static c(Lcom/kingroot/kinguser/ix;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    :try_start_0
    const-string v1, "id"

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lcom/kingroot/kinguser/ix;->a(Ljava/lang/String;J)Lcom/kingroot/kinguser/ix$b;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    const-string v2, "uid=0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method
