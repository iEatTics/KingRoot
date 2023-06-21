.class public Lcom/kingroot/kinguser/axk;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

.field private aYM:Lcom/kingroot/kinguser/bid;

.field private aYO:Lcom/kingroot/kinguser/bid;

.field private aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field private aZp:Z

.field private aZq:J

.field private aZr:Z

.field private aZs:Landroid/widget/ImageView;

.field private aZt:Landroid/widget/ImageView;

.field private aZu:Lcom/kingcore/uilib/RotateCircle;

.field private aZv:Lcom/kingcore/uilib/RotateCircle;

.field private aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aZx:Lcom/kingroot/kinguser/bed;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string v0, "ku_pageKmUpdatePage"

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iput-boolean v2, p0, Lcom/kingroot/kinguser/axk;->aZp:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axk;->aZq:J

    .line 54
    iput-boolean v2, p0, Lcom/kingroot/kinguser/axk;->aZr:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    .line 240
    new-instance v0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/KmUpdatePage$3;-><init>(Lcom/kingroot/kinguser/axk;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    .line 431
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axk$7;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axk$7;-><init>(Lcom/kingroot/kinguser/axk;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aZx:Lcom/kingroot/kinguser/bed;

    .line 78
    return-void
.end method

.method private P(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, p2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private Uc()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 300
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1873d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 301
    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 303
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->em(I)V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axk;->hx(I)V

    .line 344
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->un()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 313
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187a9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 314
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ais;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 325
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axk;->hx(I)V

    goto :goto_0

    .line 328
    :cond_4
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kmPlugins.zip"

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/axk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 330
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 333
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yh()V

    .line 335
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0

    .line 339
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 340
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ui()V

    goto :goto_0

    .line 342
    :cond_7
    iput v2, p0, Lcom/kingroot/kinguser/axk;->mState:I

    goto :goto_0
.end method

.method private Ud()V
    .locals 5

    .prologue
    .line 347
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/axk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 353
    :try_start_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/axk;->aZq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 354
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    .line 358
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07018a

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 359
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 358
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07018b

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070188

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070189

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axk$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axk$3;-><init>(Lcom/kingroot/kinguser/axk;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axk$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axk$4;-><init>(Lcom/kingroot/kinguser/axk;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 384
    return-void

    .line 356
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/kingroot/kinguser/axk;->aZq:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v0, v0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private Ug()V
    .locals 3

    .prologue
    .line 401
    new-instance v0, Lcom/kingroot/kinguser/big;

    iget-object v1, p0, Lcom/kingroot/kinguser/axk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070186

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070185

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axk$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axk$5;-><init>(Lcom/kingroot/kinguser/axk;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axk$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axk$6;-><init>(Lcom/kingroot/kinguser/axk;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 428
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 429
    return-void
.end method

.method private Ui()V
    .locals 6

    .prologue
    .line 222
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axk;->hx(I)V

    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axk$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/axk$2;-><init>(Lcom/kingroot/kinguser/axk;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 234
    return-void
.end method

.method private Uj()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 443
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yj()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->td()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/axk;->mState:I

    .line 445
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iput v2, p0, Lcom/kingroot/kinguser/axk;->mState:I

    .line 448
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adw;->eF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iput v3, p0, Lcom/kingroot/kinguser/axk;->mState:I

    .line 454
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    if-eq v0, v2, :cond_1

    .line 455
    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axk;->hx(I)V

    .line 458
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    if-eq v0, v3, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/axk;->aZq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 460
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axk;->aZq:J

    .line 464
    :cond_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axk;->aZr:Z

    if-nez v0, :cond_3

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axk;->aZr:Z

    .line 466
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Uc()V

    .line 468
    :cond_3
    return-void
.end method

.method private Uk()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x5dc

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZs:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZu:Lcom/kingcore/uilib/RotateCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotateCircle;->gX()V

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZv:Lcom/kingcore/uilib/RotateCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotateCircle;->gX()V

    .line 477
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 479
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v2, -0x3c4c8000    # -359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 481
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 482
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 483
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 484
    iget-object v2, p0, Lcom/kingroot/kinguser/axk;->aZs:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 486
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 488
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 489
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 490
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 491
    iget-object v1, p0, Lcom/kingroot/kinguser/axk;->aZt:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 493
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZv:Lcom/kingcore/uilib/RotateCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotateCircle;->gD()V

    .line 494
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZu:Lcom/kingcore/uilib/RotateCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotateCircle;->gD()V

    .line 495
    return-void
.end method

.method private Ul()V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const-wide/32 v2, 0x7f07018e

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axk;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    .line 505
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axk;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Uc()V

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axk;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axk;->hx(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tn()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->te()I

    move-result v1

    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, v1}, Lcom/kingroot/kinguser/adw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 210
    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/axk;->hx(I)V

    .line 218
    :goto_0
    return v3

    .line 212
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ui()V

    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axk;->hx(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/axk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axk;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axk;->aZp:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axk;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/kingroot/kinguser/axk;->mState:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axk;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ul()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axk;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Uj()V

    return-void
.end method

.method private hx(I)V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 8

    .prologue
    const v3, 0x7f02014c

    const/4 v2, 0x1

    const-wide/32 v6, 0x7f070183

    const/16 v1, 0x60

    const/4 v4, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/kingroot/kinguser/axk;->mState:I

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ul()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Uk()V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Uk()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/axk;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axk;->aZp:Z

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 135
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/axk;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/axk;->P(ILjava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ul()V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->mContext:Landroid/content/Context;

    const-wide/32 v2, 0x7f070182

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axk;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    :pswitch_3
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yh()V

    .line 155
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :pswitch_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ul()V

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->mContext:Landroid/content/Context;

    const-wide/32 v2, 0x7f070182

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axk;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 174
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    iget v0, v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;->BH:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 181
    if-le v0, v1, :cond_3

    move v0, v1

    .line 183
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/axk;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axk;->P(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :pswitch_6
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ug()V

    goto/16 :goto_0

    .line 190
    :pswitch_7
    invoke-direct {p0}, Lcom/kingroot/kinguser/axk;->Ud()V

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected oG()Landroid/view/View;
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030149

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    const v0, 0x7f0f0359

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aZs:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0f035b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aZt:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0f035c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/RotateCircle;

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aZu:Lcom/kingcore/uilib/RotateCircle;

    .line 93
    const v0, 0x7f0f035d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/RotateCircle;

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aZv:Lcom/kingcore/uilib/RotateCircle;

    .line 95
    const v0, 0x7f0f018c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0078

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressColor(I)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v2, 0x7f02014c

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v2, Lcom/kingroot/kinguser/axk$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axk$1;-><init>(Lcom/kingroot/kinguser/axk;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 66
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070177

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axk;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/axk;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 397
    :cond_1
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 398
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axk;->aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adw;->b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axk;->aZx:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 74
    return-void
.end method
