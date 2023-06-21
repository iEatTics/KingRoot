.class final Lcom/kingroot/kinguser/li;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x7c

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dR()Z
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v0

    .line 28
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static dS()Z
    .locals 10

    .prologue
    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/me;->ex()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/me;->ew()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/me;->eu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-static {v2, v4, v5}, Lcom/kingroot/kinguser/li;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    const/16 v7, 0x28

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/ly;->eo()Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ly$a;

    .line 52
    iget v1, v0, Lcom/kingroot/kinguser/ly$a;->minSdkVersion:I

    if-lt v7, v1, :cond_0

    iget v1, v0, Lcom/kingroot/kinguser/ly$a;->maxSdkVersion:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/kingroot/kinguser/ly$a;->maxSdkVersion:I

    if-ge v7, v1, :cond_0

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/kingroot/kinguser/ly$a;->vA:Ljava/lang/String;

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    :goto_0
    iget-object v3, v0, Lcom/kingroot/kinguser/ly$a;->aZ:Ljava/lang/String;

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    :goto_1
    iget-object v9, v0, Lcom/kingroot/kinguser/ly$a;->vz:Ljava/lang/String;

    .line 61
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v0, v5

    .line 58
    :goto_2
    invoke-static {v1, v3, v0}, Lcom/kingroot/kinguser/li;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 69
    :goto_3
    return v0

    .line 59
    :cond_2
    iget-object v1, v0, Lcom/kingroot/kinguser/ly$a;->vA:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_3
    iget-object v3, v0, Lcom/kingroot/kinguser/ly$a;->aZ:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_4
    iget-object v0, v0, Lcom/kingroot/kinguser/ly$a;->vz:Ljava/lang/String;

    goto :goto_2

    .line 69
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method
