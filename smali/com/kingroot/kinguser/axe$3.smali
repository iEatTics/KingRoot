.class Lcom/kingroot/kinguser/axe$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXW:Lcom/kingroot/kinguser/axe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axe;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/kingroot/kinguser/axe$3;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 12
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 475
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 477
    :try_start_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 478
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    .line 479
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 480
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 486
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    const v7, 0x18911

    invoke-virtual {v3, v7}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 488
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v7, ""

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v7

    const v8, 0x1891c

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v3, v10}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 497
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v7, Lcom/kingroot/kinguser/ala$a;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Lcom/kingroot/kinguser/ala$a;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    invoke-static {v3, v7}, Lcom/kingroot/kinguser/ahg;->a(ILcom/kingroot/kinguser/ala$a;)Z

    move-result v7

    .line 499
    if-eqz v7, :cond_1

    .line 500
    add-int/lit8 v5, v5, 0x1

    .line 501
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    const v8, 0x18916

    invoke-virtual {v3, v8}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 502
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v8

    const v9, 0x1891c

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v3, v11}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 533
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 534
    const/4 v8, 0x4

    iput v8, v3, Landroid/os/Message;->what:I

    .line 535
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 536
    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput v1, v3, Landroid/os/Message;->arg2:I

    .line 537
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$3;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v1}, Lcom/kingroot/kinguser/axe;->k(Lcom/kingroot/kinguser/axe;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 540
    :catch_0
    move-exception v0

    move v0, v4

    move v1, v5

    .line 544
    :goto_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 545
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 546
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 547
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 548
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$3;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->k(Lcom/kingroot/kinguser/axe;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return-void

    .line 512
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/kingroot/kinguser/ala;->fa(I)Ljava/util/Collection;

    move-result-object v3

    .line 513
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v8

    const v9, 0x18917

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 514
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 515
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    const-string v9, ""

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 521
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    const-string v9, "input_method"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 522
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 523
    invoke-static {v3}, Lcom/kingroot/kinguser/ala;->j(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_4
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    const v9, 0x1891c

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v8, v11}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    goto/16 :goto_1

    .line 525
    :cond_2
    invoke-static {v3}, Lcom/kingroot/kinguser/ala;->i(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 536
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_4
    move v0, v4

    move v1, v5

    .line 542
    goto/16 :goto_3
.end method
