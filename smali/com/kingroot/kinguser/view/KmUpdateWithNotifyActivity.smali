.class public Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

.field private aYM:Lcom/kingroot/kinguser/bid;

.field private aYO:Lcom/kingroot/kinguser/bid;

.field private aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field private aZp:Z

.field private aZq:J

.field private aZr:Z

.field private adL:Lcom/kingroot/kinguser/bed;

.field private aie:I

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mState:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    .line 59
    iput-boolean v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZp:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZq:J

    .line 61
    iput-boolean v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZr:Z

    .line 62
    iput v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aie:I

    .line 147
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$2;-><init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->adL:Lcom/kingroot/kinguser/bed;

    .line 189
    new-instance v0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;-><init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mHandler:Landroid/os/Handler;

    .line 265
    new-instance v0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;-><init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    return-void
.end method

.method private P(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, p2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private Uc()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 341
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ds()V

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18743

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 344
    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 346
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->em(I)V

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->hx(I)V

    .line 385
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->un()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 355
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187a9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 356
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ais;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->finish()V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 366
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->hx(I)V

    goto :goto_0

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    const-string v1, "kmPlugins.zip"

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 371
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 374
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yh()V

    .line 376
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0

    .line 380
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 381
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Ui()V

    goto :goto_0

    .line 383
    :cond_7
    iput v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    goto :goto_0
.end method

.method private Ud()V
    .locals 5

    .prologue
    .line 388
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 394
    :try_start_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 395
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    .line 399
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07018a

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 400
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 399
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 405
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07018b

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070188

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070189

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$6;-><init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 418
    return-void

    .line 397
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZq:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v0, v0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private Ug()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Lcom/kingroot/kinguser/big;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    .line 445
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070186

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070185

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$7;-><init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 464
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 465
    return-void
.end method

.method private Ui()V
    .locals 6

    .prologue
    .line 307
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->hx(I)V

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$5;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$5;-><init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 319
    return-void
.end method

.method private Ul()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v1, 0x7f07018e

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    .line 475
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Uc()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->P(ILjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tn()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, v2}, Lcom/kingroot/kinguser/adw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 178
    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->hx(I)V

    .line 186
    :goto_0
    return v2

    .line 180
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Ui()V

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->hx(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZp:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->init()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->hx(I)V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZp:Z

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Ul()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Ug()V

    return-void
.end method

.method static synthetic g(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Ud()V

    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hx(I)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aie:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adw;->cE(I)V

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adw;->cD(I)V

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/adw;->cC(I)V

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yj()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->td()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    iput v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adw;->eF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput v3, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    .line 131
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    if-eq v0, v2, :cond_1

    .line 132
    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->hx(I)V

    .line 135
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    if-eq v0, v3, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZq:J

    .line 141
    :cond_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZr:Z

    if-nez v0, :cond_3

    .line 142
    iput-boolean v4, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZr:Z

    .line 143
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Uc()V

    .line 145
    :cond_3
    return-void

    .line 127
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mState:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_notify_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aie:I

    .line 72
    :cond_0
    const v0, 0x7f030079

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->setContentView(I)V

    .line 73
    iput-object p0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mContext:Landroid/content/Context;

    .line 75
    const v0, 0x7f0f0198

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mTextView:Landroid/widget/TextView;

    .line 76
    iget v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aie:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07017f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    const v0, 0x7f0f018c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressColor(I)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v1, 0x7f02014c

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aZo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$1;-><init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sA()V

    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18850

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 97
    invoke-static {}, Lcom/kingroot/kinguser/bar;->VI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x0

    const-string v1, "com.kingstudio.purify"

    const-string v2, "&referrer=utm_source%3Dkrtopu"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aty;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->finish()V

    .line 101
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 431
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 432
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adw;->b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->adL:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 109
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->finish()V

    .line 439
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 440
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 441
    return-void
.end method
