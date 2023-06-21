.class public Lcom/kingroot/kinguser/bci;
.super Lcom/kingroot/kinguser/py;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bci$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

.field private aZq:J

.field private aZx:Lcom/kingroot/kinguser/bed;

.field private bgo:Landroid/widget/Button;

.field private bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field bgq:Landroid/widget/TextView;

.field private bgr:Lcom/kingroot/kinguser/bci$a;

.field private mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KMGuideBottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bci;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/py;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bci;->aZq:J

    .line 200
    new-instance v0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;-><init>(Lcom/kingroot/kinguser/bci;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bci;->aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    .line 427
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bci$8;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bci$8;-><init>(Lcom/kingroot/kinguser/bci;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bci;->aZx:Lcom/kingroot/kinguser/bed;

    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/bci;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/kingroot/kinguser/bci$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bci$a;-><init>(Lcom/kingroot/kinguser/bci;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bci;->bgr:Lcom/kingroot/kinguser/bci$a;

    .line 61
    return-void
.end method

.method private Uc()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 257
    iget v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bci;->hx(I)V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->un()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 267
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bci;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ais;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 275
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bci;->hx(I)V

    goto :goto_0

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bci;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kmPlugins.zip"

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 280
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yh()V

    goto :goto_0

    .line 284
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 285
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Ui()V

    goto :goto_0

    .line 287
    :cond_7
    iput v2, p0, Lcom/kingroot/kinguser/bci;->mState:I

    goto :goto_0
.end method

.method private Ud()V
    .locals 6

    .prologue
    .line 344
    new-instance v2, Lcom/kingroot/kinguser/bid;

    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bid;->show()V

    .line 350
    :try_start_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/bci;->aZq:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 351
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    .line 355
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07018a

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 356
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 355
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f07018b

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070188

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070189

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 366
    new-instance v0, Lcom/kingroot/kinguser/bci$5;

    invoke-direct {v0, p0, v2}, Lcom/kingroot/kinguser/bci$5;-><init>(Lcom/kingroot/kinguser/bci;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 373
    new-instance v0, Lcom/kingroot/kinguser/bci$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bci$6;-><init>(Lcom/kingroot/kinguser/bci;)V

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 380
    return-void

    .line 353
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/kingroot/kinguser/bci;->aZq:J

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v0, v0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private Ug()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Lcom/kingroot/kinguser/big;

    iget-object v1, p0, Lcom/kingroot/kinguser/bci;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->show()V

    .line 318
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070186

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setTitleText(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lK(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070185

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lL(Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/kingroot/kinguser/bci$3;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bci$3;-><init>(Lcom/kingroot/kinguser/bci;Lcom/kingroot/kinguser/big;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 329
    new-instance v1, Lcom/kingroot/kinguser/bci$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bci$4;-><init>(Lcom/kingroot/kinguser/bci;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 340
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 341
    return-void
.end method

.method private Ui()V
    .locals 6

    .prologue
    .line 384
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bci;->hx(I)V

    .line 385
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bci$7;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/bci$7;-><init>(Lcom/kingroot/kinguser/bci;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 404
    return-void
.end method

.method private Uj()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 439
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->td()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    .line 440
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yj()Ljava/lang/String;

    move-result-object v0

    .line 444
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingroot/kinguser/bci;->mState:I

    .line 445
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adw;->eF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iput v2, p0, Lcom/kingroot/kinguser/bci;->mState:I

    .line 450
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bci;->hx(I)V

    .line 452
    iget v0, p0, Lcom/kingroot/kinguser/bci;->mState:I

    if-eq v0, v2, :cond_1

    iget-wide v0, p0, Lcom/kingroot/kinguser/bci;->aZq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 454
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bci;->aZq:J

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Uc()V

    .line 458
    return-void
.end method

.method private Ul()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v1, 0x7f070291

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bci;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 425
    return-void
.end method

.method private Xo()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const v1, 0x7f070293

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bci;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgo:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bci;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/kingroot/kinguser/bci;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tn()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->te()I

    move-result v1

    .line 301
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, v1}, Lcom/kingroot/kinguser/adw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 303
    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/bci;->hx(I)V

    .line 311
    :goto_0
    return v3

    .line 305
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Ui()V

    goto :goto_0

    .line 308
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bci;->hx(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bci;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bci;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bci;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Xo()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bci;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->aZx:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bci;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bci;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bci;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bci;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bci;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Ul()V

    return-void
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/bci;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bci;->hx(I)V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Ug()V

    return-void
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Ud()V

    return-void
.end method

.method public static synthetic h(Lcom/kingroot/kinguser/bci;)Lcom/kingroot/kinguser/bci$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgr:Lcom/kingroot/kinguser/bci$a;

    return-object v0
.end method

.method private hx(I)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgr:Lcom/kingroot/kinguser/bci$a;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bci$a;->sendEmptyMessage(I)Z

    .line 250
    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bci;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/bci;->Uj()V

    return-void
.end method


# virtual methods
.method public Xn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgo:Landroid/widget/Button;

    return-object v0
.end method

.method protected gy()Landroid/view/View;
    .locals 5

    .prologue
    .line 65
    const v0, 0x7f03011e

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bci;->aA(I)Landroid/view/View;

    move-result-object v1

    .line 67
    const v0, 0x7f0f01d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bci;->bgo:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0f0314

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 69
    const v0, 0x7f0f0315

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bci;->bgq:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0078

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressColor(I)V

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amt;->Hl()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 75
    iget-object v2, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0704b0

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/kingroot/kinguser/bci;->bgq:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v3, Lcom/kingroot/kinguser/bci$1;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/bci$1;-><init>(Lcom/kingroot/kinguser/bci;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-virtual {v2, v3}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :goto_0
    return-object v1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bci;->bgp:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v2, Lcom/kingroot/kinguser/bci$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bci$2;-><init>(Lcom/kingroot/kinguser/bci;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
