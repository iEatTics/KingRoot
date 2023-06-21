.class public Lcom/kingroot/kinguser/oq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kingroot/kinguser/q;)V
    .locals 4

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    new-instance v3, Lcom/kingroot/kinguser/or;

    invoke-direct {v3}, Lcom/kingroot/kinguser/or;-><init>()V

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    goto :goto_0
.end method
