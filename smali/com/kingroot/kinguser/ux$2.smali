.class final Lcom/kingroot/kinguser/ux$2;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 3

    .prologue
    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 426
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 431
    invoke-static {}, Lcom/kingroot/kinguser/wb;->ng()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    invoke-static {v0}, Lcom/kingroot/kinguser/aav;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {v0}, Lcom/kingroot/kinguser/aav;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ux;->g(Ljava/util/ArrayList;)Z

    .line 445
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wb;->S(J)V

    .line 446
    return-void

    .line 439
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ux;->g(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/wb;->W(Z)V

    goto :goto_1
.end method
