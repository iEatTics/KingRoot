.class Lcom/kingroot/kinguser/adm$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adm$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic add:Lcom/kingroot/kinguser/adm$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adm$3;)V
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/kingroot/kinguser/adm$3$1;->add:Lcom/kingroot/kinguser/adm$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1595
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/aix;->aP(Z)I

    move-result v0

    .line 1597
    if-nez v0, :cond_0

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adm$3$1;->add:Lcom/kingroot/kinguser/adm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/adm$3;->adc:Lcom/kingroot/kinguser/adm;

    invoke-static {v0}, Lcom/kingroot/kinguser/adm;->b(Lcom/kingroot/kinguser/adm;)I

    move-result v0

    .line 1600
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->El()Z

    move-result v1

    .line 1601
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1602
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187df

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1603
    iget-object v0, p0, Lcom/kingroot/kinguser/adm$3$1;->add:Lcom/kingroot/kinguser/adm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/adm$3;->adc:Lcom/kingroot/kinguser/adm;

    invoke-static {v0}, Lcom/kingroot/kinguser/adm;->c(Lcom/kingroot/kinguser/adm;)V

    .line 1604
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Em()V

    .line 1616
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1605
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/kingroot/kinguser/adm$3$1;->add:Lcom/kingroot/kinguser/adm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/adm$3;->adc:Lcom/kingroot/kinguser/adm;

    invoke-static {v0}, Lcom/kingroot/kinguser/adm;->c(Lcom/kingroot/kinguser/adm;)V

    .line 1608
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fx()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1611
    :catch_0
    move-exception v0

    goto :goto_0
.end method
