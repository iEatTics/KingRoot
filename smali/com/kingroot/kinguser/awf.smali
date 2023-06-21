.class public Lcom/kingroot/kinguser/awf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kingroot/kinguser/dt;)V
    .locals 7

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/ds;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ds;-><init>()V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iput-object v1, v0, Lcom/kingroot/kinguser/ds;->listDownSoftItems:Ljava/util/ArrayList;

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/awf$1;

    invoke-direct {v6, v0}, Lcom/kingroot/kinguser/awf$1;-><init>(Lcom/kingroot/kinguser/ds;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method
