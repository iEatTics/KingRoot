.class public Lcom/kingroot/kinguser/axc;
.super Lcom/kingroot/kinguser/axs;
.source "SourceFile"


# instance fields
.field private aVh:Landroid/widget/AdapterView$OnItemClickListener;

.field private aXl:Lcom/kingroot/kinguser/aks;

.field private aXm:Lcom/kingroot/kinguser/agg;

.field private aXn:Z

.field private aXo:Z

.field private aXp:Lcom/kingroot/kinguser/big;

.field private aXq:Lcom/kingroot/kinguser/bim;

.field private aXr:Lcom/kingroot/kinguser/bil;

.field private aXs:Lcom/kingroot/kinguser/bed;

.field private aXt:Lcom/kingroot/kinguser/bed;

.field private aXu:Lcom/kingroot/kinguser/bid;

.field private aXv:Lcom/kingroot/kinguser/bid;

.field private aXw:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axs;-><init>(Landroid/content/Context;)V

    .line 87
    iput-boolean v4, p0, Lcom/kingroot/kinguser/axc;->aXn:Z

    .line 88
    iput-boolean v4, p0, Lcom/kingroot/kinguser/axc;->aXo:Z

    .line 354
    new-instance v0, Lcom/kingroot/kinguser/axc$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axc$8;-><init>(Lcom/kingroot/kinguser/axc;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    .line 501
    iput-object v5, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    .line 502
    iput-object v5, p0, Lcom/kingroot/kinguser/axc;->aXq:Lcom/kingroot/kinguser/bim;

    .line 564
    iput-object v5, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    .line 659
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axc$13;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axc$13;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXs:Lcom/kingroot/kinguser/bed;

    .line 678
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axc$14;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axc$14;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXt:Lcom/kingroot/kinguser/bed;

    .line 721
    iput-object v5, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    .line 753
    iput-object v5, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    .line 794
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axc$6;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axc$6;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXw:Lcom/kingroot/kinguser/bed;

    .line 146
    return-void
.end method

.method private TF()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f070178

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axc;->ka(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 209
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WS()Z

    move-result v5

    .line 210
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXl:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v1

    .line 212
    :goto_0
    new-instance v6, Lcom/kingroot/kinguser/axc$1;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/axc$1;-><init>(Lcom/kingroot/kinguser/axc;)V

    .line 243
    const v2, 0x7f020176

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f07030e

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    .line 243
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/axc;->a(IILjava/lang/String;ZZLcom/kingroot/kinguser/agg$a;)V

    .line 249
    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 254
    new-instance v10, Lcom/kingroot/kinguser/axc$7;

    invoke-direct {v10, p0}, Lcom/kingroot/kinguser/axc$7;-><init>(Lcom/kingroot/kinguser/axc;)V

    .line 261
    const/4 v6, 0x2

    const v7, 0x7f02017a

    .line 263
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07030b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXl:Lcom/kingroot/kinguser/aks;

    .line 264
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BW()Z

    move-result v9

    move-object v5, p0

    .line 261
    invoke-virtual/range {v5 .. v10}, Lcom/kingroot/kinguser/axc;->a(IILjava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V

    .line 270
    :cond_0
    if-eqz v4, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 272
    const/16 v6, 0x23

    const v7, 0x7f020178

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070309

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    move-object v5, p0

    move-object v10, v13

    move-object v12, v13

    .line 272
    invoke-virtual/range {v5 .. v12}, Lcom/kingroot/kinguser/axc;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 282
    :cond_1
    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 284
    const/16 v6, 0x24

    const v7, 0x7f020179

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    move-object v5, p0

    move-object v10, v13

    move-object v12, v13

    .line 284
    invoke-virtual/range {v5 .. v12}, Lcom/kingroot/kinguser/axc;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 294
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bat;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 298
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07031a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axc;->ka(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 302
    const/16 v6, 0x14

    const v7, 0x7f02017c

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070313

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    move-object v5, p0

    move-object v10, v13

    move-object v12, v13

    .line 302
    invoke-virtual/range {v5 .. v12}, Lcom/kingroot/kinguser/axc;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 310
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070107

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axc;->ka(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 314
    const/16 v6, 0x28

    const v7, 0x7f020177

    .line 316
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070105

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    move-object v5, p0

    move-object v10, v13

    move-object v12, v13

    .line 314
    invoke-virtual/range {v5 .. v12}, Lcom/kingroot/kinguser/axc;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 319
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 321
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070315

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axc;->ka(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 327
    const/16 v6, 0xa

    const v7, 0x7f02017b

    .line 329
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07030d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    move-object v5, p0

    move-object v10, v13

    move-object v12, v13

    .line 327
    invoke-virtual/range {v5 .. v12}, Lcom/kingroot/kinguser/axc;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 336
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->UF()V

    .line 337
    return-void

    :cond_4
    move v4, v11

    .line 210
    goto/16 :goto_0
.end method

.method private TG()V
    .locals 3

    .prologue
    .line 506
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18770

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 508
    new-instance v0, Lcom/kingroot/kinguser/big;

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    .line 509
    new-instance v0, Lcom/kingroot/kinguser/bim;

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bim;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXq:Lcom/kingroot/kinguser/bim;

    .line 510
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->show()V

    .line 512
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setIcon(I)V

    .line 513
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703a1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setTitleText(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setTitleColor(I)V

    .line 515
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lK(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lL(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    const v1, 0x7f03013f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/big;->al(II)V

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    const v2, 0x7f0e001a

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/big;->a(Lcom/kingroot/kinguser/bid$a;I)V

    .line 519
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    new-instance v1, Lcom/kingroot/kinguser/axc$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$9;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    new-instance v1, Lcom/kingroot/kinguser/axc$10;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$10;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 562
    return-void
.end method

.method private TH()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 568
    iput-boolean v0, p0, Lcom/kingroot/kinguser/axc;->aXn:Z

    .line 569
    iput-boolean v0, p0, Lcom/kingroot/kinguser/axc;->aXo:Z

    .line 571
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->aXs:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    .line 572
    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Lcom/kingroot/kinguser/bil;

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    .line 575
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bil;->show()V

    .line 576
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703a2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->setTitleText(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->iZ(I)V

    .line 578
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bil;->ef(Z)V

    .line 580
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/axc;->ds(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method private TI()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->iZ(I)V

    .line 614
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703a5

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->lK(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703a6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->lL(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703a4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->d(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    new-instance v1, Lcom/kingroot/kinguser/axc$11;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$11;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 636
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    new-instance v1, Lcom/kingroot/kinguser/axc$12;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$12;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 656
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187f0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method

.method private TJ()V
    .locals 3

    .prologue
    .line 724
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    .line 725
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 727
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07039f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070397

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070398

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07039e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$a;)V

    .line 732
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axc$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$2;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 743
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXu:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axc$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$3;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 748
    return-void
.end method

.method private TK()V
    .locals 3

    .prologue
    .line 756
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    .line 757
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 759
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07039c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070399

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07039a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07039b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$a;)V

    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axc$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$4;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 770
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXv:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axc$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$5;-><init>(Lcom/kingroot/kinguser/axc;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 779
    return-void
.end method

.method private TL()V
    .locals 3

    .prologue
    .line 782
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->aXw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    .line 783
    if-eqz v0, :cond_0

    .line 785
    new-instance v0, Lcom/kingroot/kinguser/bif;

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bif;-><init>(Landroid/content/Context;)V

    .line 786
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->show()V

    .line 787
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->iZ(I)V

    .line 788
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07039f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->setTitleText(Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07039d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->d(Ljava/lang/CharSequence;)V

    .line 790
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->ef(Z)V

    .line 792
    :cond_0
    return-void
.end method

.method private Tv()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->TF()V

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXm:Lcom/kingroot/kinguser/agg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agg;->notifyDataSetChanged()V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/aks;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXl:Lcom/kingroot/kinguser/aks;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axc;Lcom/kingroot/kinguser/bil;)Lcom/kingroot/kinguser/bil;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axc;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axc;->aXn:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axc;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->TG()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axc;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axc;->ds(Z)V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXq:Lcom/kingroot/kinguser/bim;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axc;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->TH()V

    return-void
.end method

.method private ds(Z)V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 594
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 596
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 597
    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axc;->aXo:Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXt:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axc;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axc;->aXo:Z

    return v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/axc;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axc;->aXn:Z

    return v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/axc;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->TL()V

    return-void
.end method

.method private vd()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bil;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXr:Lcom/kingroot/kinguser/bil;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bil;->dismiss()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXp:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->dismiss()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXq:Lcom/kingroot/kinguser/bim;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXq:Lcom/kingroot/kinguser/bim;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bim;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXq:Lcom/kingroot/kinguser/bim;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bim;->dismiss()V

    .line 106
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->a(Landroid/os/Message;)V

    .line 461
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 489
    :goto_0
    :pswitch_0
    return-void

    .line 463
    :pswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->Tv()V

    goto :goto_0

    .line 467
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 472
    :pswitch_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->TJ()V

    goto :goto_0

    .line 477
    :pswitch_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->TK()V

    goto :goto_0

    .line 482
    :pswitch_5
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->TI()V

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public cp(J)V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->alr:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Lcom/kingroot/kinguser/agg;

    iget-object v1, p0, Lcom/kingroot/kinguser/axc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/axc;->alr:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agg;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXm:Lcom/kingroot/kinguser/agg;

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aXm:Lcom/kingroot/kinguser/agg;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->i(Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->Tv()V

    .line 181
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->oI()V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axc;->aXl:Lcom/kingroot/kinguser/aks;

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axc;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/axc;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 173
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axc;->cp(J)V

    .line 174
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/kingroot/kinguser/bey;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070304

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axc;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bey;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->onCreate(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/kingroot/kinguser/axc;->vd()V

    .line 123
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onDestroy()V

    .line 124
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onResume()V

    .line 129
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onStart()V

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onStop()V

    .line 116
    return-void
.end method
