.class public Lcom/kingroot/kinguser/cco;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bXa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public o(IJ)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-static {p1}, Lcom/kingroot/kinguser/cfd;->lg(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/kingroot/kinguser/cfd;->lh(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cco;->bXa:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/cco;->bXa:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mVipIdents|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/cco;->bXa:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
