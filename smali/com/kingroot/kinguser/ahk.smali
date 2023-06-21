.class public Lcom/kingroot/kinguser/ahk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xh()V

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18728

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18923

    invoke-virtual {v0, v1, p0, p2, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    goto :goto_0
.end method

.method public static a(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xh()V

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x18729

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v3, v0, p1, v1}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static aJ(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x18723

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 97
    return-void

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public static al(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xh()V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18725

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    goto :goto_0
.end method

.method public static am(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahk;->xh()V

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18727

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    goto :goto_0
.end method

.method public static e(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18721

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 45
    return-void
.end method

.method public static f(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18722

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 56
    return-void
.end method

.method public static g(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18726

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 109
    return-void
.end method

.method public static h(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1872e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 167
    return-void
.end method

.method public static xg()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Ea()J

    move-result-wide v2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 24
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v6, 0x5265c00

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 25
    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/aks;->bh(J)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->ez(I)V

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Eb()I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static xh()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eb()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ez(I)V

    .line 34
    return-void
.end method
