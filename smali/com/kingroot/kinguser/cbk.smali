.class Lcom/kingroot/kinguser/cbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field final synthetic bWJ:Lcom/kingroot/kinguser/cbi;


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 2

    .prologue
    .line 89
    instance-of v0, p5, Lcom/kingroot/kinguser/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/cbk;->bWJ:Lcom/kingroot/kinguser/cbi;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    check-cast p5, Lcom/kingroot/kinguser/d;

    .line 93
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    iget v0, p5, Lcom/kingroot/kinguser/d;->retCode:I

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/cbk;->bWJ:Lcom/kingroot/kinguser/cbi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cbi;->eG(Z)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cbk;->bWJ:Lcom/kingroot/kinguser/cbi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cbi;->eG(Z)V

    goto :goto_0
.end method
