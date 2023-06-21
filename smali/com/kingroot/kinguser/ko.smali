.class Lcom/kingroot/kinguser/ko;
.super Lcom/kingroot/kinguser/mg;
.source "SourceFile"


# instance fields
.field final synthetic ue:Lcom/kingroot/kinguser/kn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/kn;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/kingroot/kinguser/ko;->ue:Lcom/kingroot/kinguser/kn;

    invoke-direct {p0}, Lcom/kingroot/kinguser/mg;-><init>()V

    return-void
.end method

.method private dd()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lcom/kingroot/kinguser/jk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/jk;-><init>()V

    .line 473
    invoke-virtual {v0}, Lcom/kingroot/kinguser/jk;->cx()Landroid/util/SparseArray;

    move-result-object v0

    .line 475
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bK()Lcom/kingroot/kinguser/hg;

    move-result-object v1

    .line 478
    if-eqz v1, :cond_0

    .line 480
    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/hg;->a(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    .line 483
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mg$a;)V
    .locals 18

    .prologue
    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/kingroot/kinguser/ko;->dd()Landroid/util/SparseArray;

    move-result-object v16

    .line 416
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v15, v1

    .line 417
    :goto_0
    if-nez v15, :cond_1

    .line 469
    :goto_1
    return-void

    .line 416
    :cond_0
    const/4 v1, 0x0

    move v15, v1

    goto :goto_0

    .line 422
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/kingroot/kinguser/mg$a;->eC()Ljava/util/List;

    move-result-object v1

    .line 423
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/kq;

    .line 424
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingroot/kinguser/kq;

    .line 426
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bN()Z

    move-result v17

    .line 429
    const-class v1, Lcom/kingroot/kinguser/lm;

    invoke-static {v1}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/kingroot/kinguser/lm;

    .line 431
    const/4 v1, 0x0

    move v14, v1

    :goto_2
    if-ge v14, v15, :cond_7

    .line 432
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 433
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 436
    invoke-static {v4}, Lcom/kingroot/kinguser/lh;->af(I)Lcom/king/uranus/bd;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 431
    :cond_2
    :goto_3
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_2

    .line 443
    :cond_3
    if-lez v4, :cond_5

    .line 444
    invoke-interface {v13, v4}, Lcom/kingroot/kinguser/lm;->ai(I)I

    move-result v1

    .line 449
    :goto_4
    const/16 v5, 0x40

    if-ne v1, v5, :cond_4

    if-eqz v17, :cond_2

    .line 455
    :cond_4
    const/4 v5, 0x0

    .line 456
    const/4 v6, 0x0

    .line 457
    const/16 v7, 0x20

    if-ne v1, v7, :cond_6

    .line 458
    new-instance v1, Lcom/kingroot/kinguser/kj;

    invoke-direct/range {v1 .. v6}, Lcom/kingroot/kinguser/kj;-><init>(Lcom/kingroot/kinguser/kq;Ljava/lang/String;III)V

    .line 463
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ko;->ue:Lcom/kingroot/kinguser/kn;

    invoke-static {v3, v1}, Lcom/kingroot/kinguser/kn;->a(Lcom/kingroot/kinguser/kn;Lcom/kingroot/kinguser/jr;)Lcom/kingroot/kinguser/ha;

    goto :goto_3

    .line 446
    :cond_5
    invoke-interface {v13, v3}, Lcom/kingroot/kinguser/lm;->bc(Ljava/lang/String;)I

    move-result v1

    goto :goto_4

    .line 460
    :cond_6
    new-instance v7, Lcom/kingroot/kinguser/kj;

    move-object v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/kingroot/kinguser/kj;-><init>(Lcom/kingroot/kinguser/kq;Ljava/lang/String;III)V

    move-object v1, v7

    goto :goto_5

    .line 468
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/kl;->cZ()V

    goto :goto_1
.end method
