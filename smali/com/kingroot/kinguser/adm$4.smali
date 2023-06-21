.class Lcom/kingroot/kinguser/adm$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adm;->sJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adc:Lcom/kingroot/kinguser/adm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adm;)V
    .locals 0

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/kingroot/kinguser/adm$4;->adc:Lcom/kingroot/kinguser/adm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v6, 0x0

    .line 1650
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1654
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fu()J

    move-result-wide v0

    .line 1655
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->Fc()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x36ee800

    .line 1656
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fv()V

    .line 1660
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188b0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1664
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1665
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ff()J

    move-result-wide v0

    .line 1666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v4, v8

    .line 1665
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1689
    :cond_1
    :goto_0
    return-void

    .line 1671
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/kingroot/kinguser/agy;->ah(J)Ljava/util/List;

    move-result-object v0

    .line 1673
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1679
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    .line 1680
    iget v3, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1681
    add-int/lit8 v6, v6, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 1685
    goto :goto_1

    .line 1682
    :cond_3
    iget v0, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    if-nez v0, :cond_5

    .line 1683
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_2

    .line 1686
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bu(J)V

    .line 1687
    iget-object v0, p0, Lcom/kingroot/kinguser/adm$4;->adc:Lcom/kingroot/kinguser/adm;

    invoke-virtual {v0, v6, v1}, Lcom/kingroot/kinguser/adm;->F(II)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
