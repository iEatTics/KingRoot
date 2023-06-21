.class Lcom/kingroot/kinguser/atv$2;
.super Lcom/kingroot/kinguser/ati$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQq:Lcom/kingroot/kinguser/atv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atv;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/kingroot/kinguser/atv$2;->aQq:Lcom/kingroot/kinguser/atv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ati$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/kingroot/kinguser/bom;)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public e(Lcom/kingroot/kinguser/bom;)V
    .locals 8

    .prologue
    .line 309
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KI()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atv$2;->aQq:Lcom/kingroot/kinguser/atv;

    invoke-static {v0}, Lcom/kingroot/kinguser/atv;->a(Lcom/kingroot/kinguser/atv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/atv$a;

    .line 315
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bed;

    sget-object v4, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v5, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v6, 0x0

    new-instance v7, Lcom/kingroot/kinguser/atv$2$1;

    invoke-direct {v7, p0, v0, v1, p1}, Lcom/kingroot/kinguser/atv$2$1;-><init>(Lcom/kingroot/kinguser/atv$2;Lcom/kingroot/kinguser/atv$a;Ljava/lang/String;Lcom/kingroot/kinguser/bom;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 330
    invoke-static {}, Lcom/kingroot/kinguser/ati;->Pb()Lcom/kingroot/kinguser/ati;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati;->n(Lcom/kingroot/kinguser/bom;)V

    .line 331
    return-void
.end method
