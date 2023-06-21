.class public Lcom/kingroot/kinguser/awt;
.super Lcom/kingroot/kinguser/axs;
.source "SourceFile"


# instance fields
.field private aVd:Z

.field private aVe:Lcom/kingroot/kinguser/agg;

.field private aVf:Lcom/kingroot/kinguser/bid;

.field private aVg:Ljava/lang/String;

.field private aVh:Landroid/widget/AdapterView$OnItemClickListener;

.field private final aVi:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

.field private aVj:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axs;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v4, p0, Lcom/kingroot/kinguser/awt;->aVd:Z

    .line 205
    new-instance v0, Lcom/kingroot/kinguser/awt$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awt$1;-><init>(Lcom/kingroot/kinguser/awt;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awt;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    .line 510
    new-instance v0, Lcom/kingroot/kinguser/page/AboutPage$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/AboutPage$4;-><init>(Lcom/kingroot/kinguser/awt;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awt;->aVi:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    .line 601
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/awt$5;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/awt$5;-><init>(Lcom/kingroot/kinguser/awt;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awt;->aVj:Lcom/kingroot/kinguser/bed;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awt;->alr:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/kingroot/kinguser/agg;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/awt;->alr:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agg;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awt;->aVe:Lcom/kingroot/kinguser/agg;

    .line 86
    return-void
.end method

.method private Ts()V
    .locals 3

    .prologue
    .line 292
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://purifyapps.com/thanks"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/zh;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 296
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 297
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Tt()V
    .locals 15

    .prologue
    const/16 v14, 0x26

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVg:Ljava/lang/String;

    .line 311
    if-nez v0, :cond_0

    .line 312
    const-string v0, ""

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070305

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 318
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->dG()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 316
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const v2, 0x7f020160

    invoke-virtual {p0, v1, v0, v2}, Lcom/kingroot/kinguser/awt;->g(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 323
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    const/16 v1, 0x22

    .line 329
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07030f

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    move-object v0, p0

    move-object v6, v4

    .line 328
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 330
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 333
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acO()Z

    move-result v0

    .line 334
    if-eqz v0, :cond_3

    .line 336
    const/16 v1, 0x13

    .line 341
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f070308

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    move-object v0, p0

    move-object v6, v4

    .line 340
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 347
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 351
    const/16 v1, 0x29

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07001b

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    move-object v0, p0

    move-object v6, v4

    .line 351
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 356
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/awt;->ka(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    const/16 v1, 0x2b

    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0703ce

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    move-object v0, p0

    move-object v6, v4

    .line 362
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 365
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 368
    const/16 v1, 0x2c

    .line 370
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0703cf

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    move-object v0, p0

    move-object v6, v4

    .line 369
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 372
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 375
    const/16 v1, 0x2a

    .line 377
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07000e

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    move-object v0, p0

    move-object v6, v4

    .line 376
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 379
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 422
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070516

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/awt;->aG(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void

    .line 326
    :cond_2
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 338
    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_1

    .line 382
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 383
    const/16 v7, 0x25

    .line 385
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, p0

    move-object v11, v4

    move v12, v5

    move-object v13, v4

    .line 384
    invoke-virtual/range {v6 .. v13}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 390
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 392
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 394
    const/16 v7, 0x27

    .line 396
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 397
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, p0

    move-object v11, v4

    move v12, v5

    move-object v13, v4

    .line 395
    invoke-virtual/range {v6 .. v13}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 400
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 402
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 406
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 407
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, p0

    move v7, v14

    move-object v11, v4

    move v12, v5

    move-object v13, v4

    .line 405
    invoke-virtual/range {v6 .. v13}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 411
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    .line 416
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 417
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, p0

    move v7, v14

    move-object v11, v4

    move v12, v5

    move-object v13, v4

    .line 415
    invoke-virtual/range {v6 .. v13}, Lcom/kingroot/kinguser/awt;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 419
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->UF()V

    goto/16 :goto_2
.end method

.method private Tu()Z
    .locals 4

    .prologue
    .line 443
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07021e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 447
    :goto_0
    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 472
    :goto_1
    return v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    const/4 v0, 0x0

    goto :goto_0

    .line 451
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/bid;

    iget-object v2, p0, Lcom/kingroot/kinguser/awt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    .line 452
    iget-object v1, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 454
    iget-object v1, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703bf

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->iY(I)V

    .line 459
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->acV()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/awt$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/awt$2;-><init>(Lcom/kingroot/kinguser/awt;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bie$b;)V

    .line 472
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private Tv()V
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->Tt()V

    .line 484
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 490
    return-void
.end method

.method private Tx()V
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingroot/kinguser/awt$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/awt$4;-><init>(Lcom/kingroot/kinguser/awt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 598
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 599
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->vy()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->Ts()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/awt;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVj:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/awt;)Lcom/kingroot/kinguser/bid;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    return-object v0
.end method

.method private dG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->io()Ljava/lang/String;

    move-result-object v0

    .line 432
    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/awt;)Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVi:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    return-object v0
.end method

.method public static synthetic f(Lcom/kingroot/kinguser/awt;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/kingroot/kinguser/awt;->aVd:Z

    return v0
.end method

.method public static synthetic g(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->Tx()V

    return-void
.end method

.method private vd()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 480
    :cond_0
    return-void
.end method

.method private vy()V
    .locals 2

    .prologue
    .line 500
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingroot/kinguser/awt$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/awt$3;-><init>(Lcom/kingroot/kinguser/awt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 506
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 508
    return-void
.end method


# virtual methods
.method public Tw()V
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 495
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->a(Landroid/os/Message;)V

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 145
    :pswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->Tv()V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->Tu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const v0, 0x7f0703bf

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->bE(I)V

    goto :goto_0

    .line 155
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/su"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->eo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/kingroot/kinguser/awt;->aVg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iput-object v0, p0, Lcom/kingroot/kinguser/awt;->aVg:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->Tv()V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVe:Lcom/kingroot/kinguser/agg;

    return-object v0
.end method

.method protected getDivider()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 122
    const-wide/32 v0, 0x7f0201c1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/awt;->Y(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->oI()V

    .line 197
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->Tt()V

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->aVe:Lcom/kingroot/kinguser/agg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agg;->notifyDataSetChanged()V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/awt;->Vd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/awt;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/awt;->U(J)V

    .line 202
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 118
    const v0, 0x7f0f0087

    return v0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/kingroot/kinguser/bey;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awt;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070302

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/awt;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bey;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/kingroot/kinguser/awt;->vd()V

    .line 108
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onStart()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/awt;->aVd:Z

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/awt;->aVd:Z

    .line 102
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onStop()V

    .line 103
    return-void
.end method
