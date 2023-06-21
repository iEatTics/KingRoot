.class public Lcom/kingroot/kinguser/aqe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static MD()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MA()Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 25
    iget-object v4, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v4, v4, Lcom/kingroot/kinguser/aqi;

    if-eqz v4, :cond_0

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07010f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_1
    return-object v0

    .line 29
    :cond_0
    iget v4, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-eqz v4, :cond_1

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 30
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    if-lez v1, :cond_3

    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f090006

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v1, v4}, Lcom/kingroot/kinguser/zi;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 38
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07010b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
