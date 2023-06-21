.class public final Lcom/kingroot/kinguser/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Y(Ljava/lang/String;)Lcom/kingroot/kinguser/fg;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 27
    .line 29
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/fg;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/fg;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 32
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/fg;->Z(Ljava/lang/String;)Lcom/kingroot/kinguser/fi;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 36
    :goto_1
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/kingroot/kinguser/fg;->shutdown()V

    move-object v0, v1

    .line 38
    goto :goto_0

    .line 34
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static Z(Ljava/lang/String;)Lcom/kingroot/kinguser/fi;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/fe;->b(Ljava/lang/String;Z)Lcom/kingroot/kinguser/fi;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/kingroot/kinguser/fj;)Lcom/kingroot/kinguser/fi;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 73
    .line 76
    :try_start_0
    const-string v0, "sh"

    invoke-static {v0}, Lcom/kingroot/kinguser/fe;->Y(Ljava/lang/String;)Lcom/kingroot/kinguser/fg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/fg;->a(Lcom/kingroot/kinguser/fj;)Lcom/kingroot/kinguser/fi;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 83
    :cond_0
    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0}, Lcom/kingroot/kinguser/fg;->shutdown()V

    move-object v0, v1

    .line 88
    :goto_0
    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/kingroot/kinguser/fi;

    iget-object v1, p0, Lcom/kingroot/kinguser/fj;->ag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/fi;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 83
    :goto_1
    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0}, Lcom/kingroot/kinguser/fg;->shutdown()V

    move-object v0, v1

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v1}, Lcom/kingroot/kinguser/fg;->shutdown()V

    :cond_2
    throw v0

    .line 83
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 80
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

.method public static b(Ljava/lang/String;Z)Lcom/kingroot/kinguser/fi;
    .locals 3

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const-wide/32 v0, 0x9c40

    .line 63
    :goto_0
    new-instance v2, Lcom/kingroot/kinguser/fj;

    invoke-direct {v2, p0, p0, v0, v1}, Lcom/kingroot/kinguser/fj;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/kingroot/kinguser/fe;->a(Lcom/kingroot/kinguser/fj;)Lcom/kingroot/kinguser/fi;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
