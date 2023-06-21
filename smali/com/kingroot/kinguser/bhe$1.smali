.class final Lcom/kingroot/kinguser/bhe$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhe;->acm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 524
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 525
    invoke-static {}, Lcom/kingroot/kinguser/bas;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/aiu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aiu;-><init>()V

    .line 528
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiu;->yu()Ljava/util/List;

    move-result-object v1

    .line 529
    invoke-static {v3}, Lcom/kingroot/kinguser/bhe;->eb(Z)Ljava/util/List;

    move-result-object v2

    .line 530
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aiu;->aL(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bhe;->l(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 533
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bas;->g(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
