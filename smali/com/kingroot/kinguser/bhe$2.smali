.class final Lcom/kingroot/kinguser/bhe$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhe;->acn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 545
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int v3, v1, v0

    .line 550
    invoke-static {}, Lcom/kingroot/kinguser/wb;->ne()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    add-int/2addr v0, v3

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 553
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->X(Ljava/util/List;)V

    .line 556
    return-void

    :cond_1
    move v0, v1

    .line 549
    goto :goto_0

    :cond_2
    move v0, v1

    .line 550
    goto :goto_1
.end method
