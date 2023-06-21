.class public Lcom/kingroot/kinguser/bro;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static I(IZ)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahM()Lcom/kingroot/kinguser/bsg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/bsg;->J(IZ)V

    .line 44
    return-void
.end method

.method public static ap(II)V
    .locals 6

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateRequestTime() positionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahM()Lcom/kingroot/kinguser/bsg;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lcom/kingroot/kinguser/bsg;->j(IJ)V

    .line 24
    return-void
.end method

.method public static kf(I)Z
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahM()Lcom/kingroot/kinguser/bsg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bsg;->kh(I)J

    move-result-wide v0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static kg(I)Z
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahM()Lcom/kingroot/kinguser/bsg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bsg;->ki(I)Z

    move-result v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPreRequestResult() positionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 54
    return v0
.end method
