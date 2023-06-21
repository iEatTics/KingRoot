.class public Lcom/kingroot/kinguser/pi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 7

    .prologue
    .line 30
    if-eqz p3, :cond_0

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/pk;->gk()Lcom/kingroot/kinguser/pk;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/pk;->b(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/pt;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 2

    .prologue
    .line 22
    if-eqz p2, :cond_0

    .line 23
    new-instance v0, Lcom/kingroot/kinguser/pf;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/pf;-><init>(Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;)V

    .line 24
    iget v1, p2, Lcom/kingroot/kinguser/pt;->zd:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/pf;->ay(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/kingroot/kinguser/pf;->a(Lcom/kingroot/kinguser/pt;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 27
    :cond_0
    return-void
.end method
