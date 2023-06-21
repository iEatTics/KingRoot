.class public Lcom/kingroot/kinguser/axi;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private aCO:Landroid/widget/Button;

.field private final aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

.field private aYM:Lcom/kingroot/kinguser/bid;

.field private aYN:Lcom/kingroot/kinguser/bid;

.field private aYO:Lcom/kingroot/kinguser/bid;

.field private aYP:Lcom/kingcore/uilib/TextProgressBar;

.field private aYQ:Landroid/widget/ImageView;

.field private aYR:Landroid/graphics/Bitmap;

.field private aYS:Landroid/graphics/Bitmap;

.field private aYT:Ljava/lang/String;

.field private aYU:I

.field private aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aYW:Z

.field private aYX:Z

.field private final aYY:Ljava/lang/Runnable;

.field private aYZ:Lcom/kingroot/kinguser/baz$a;

.field private aZa:Lcom/kingroot/kinguser/bed;

.field private aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

.field private ahP:Landroid/widget/ImageView;

.field private asq:Lcom/kingroot/kinguser/tk;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 123
    const-string v0, "ku_pageExaminationRecommedAppPage"

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    const-string v0, "Optimi"

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYT:Ljava/lang/String;

    .line 92
    iput v4, p0, Lcom/kingroot/kinguser/axi;->aYU:I

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axi;->aYW:Z

    .line 96
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axi;->aYX:Z

    .line 97
    new-instance v0, Lcom/kingroot/kinguser/axi$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axi$1;-><init>(Lcom/kingroot/kinguser/axi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYY:Ljava/lang/Runnable;

    .line 366
    new-instance v0, Lcom/kingroot/kinguser/axi$11;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axi$11;-><init>(Lcom/kingroot/kinguser/axi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYZ:Lcom/kingroot/kinguser/baz$a;

    .line 408
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axi$12;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axi$12;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aZa:Lcom/kingroot/kinguser/bed;

    .line 538
    new-instance v0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$12;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$12;-><init>(Lcom/kingroot/kinguser/axi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    .line 603
    new-instance v0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;-><init>(Lcom/kingroot/kinguser/axi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 124
    iput-object p2, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 125
    iput-object p3, p0, Lcom/kingroot/kinguser/axi;->aYT:Ljava/lang/String;

    .line 126
    return-void
.end method

.method private P(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    invoke-virtual {v0, p1}, Lcom/kingcore/uilib/TextProgressBar;->setProgress(I)V

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextProgressBar;->setVisibility(I)V

    .line 397
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    invoke-virtual {v0, p2}, Lcom/kingcore/uilib/TextProgressBar;->setTextProgress(Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method

.method private Ua()V
    .locals 4

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 297
    const-string v0, "RootSafe"

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aYT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bB(J)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/axi;->aYU:I

    .line 303
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/kingroot/kinguser/axi;->aYT:Ljava/lang/String;

    .line 301
    invoke-static {v1, v2, v0, v3}, Lcom/kingroot/kinguser/apd;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_1
    :goto_1
    return-void

    .line 303
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private Ub()V
    .locals 6

    .prologue
    .line 325
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axi$10;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/axi$10;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 364
    return-void
.end method

.method private Uc()V
    .locals 2

    .prologue
    .line 405
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aZa:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 406
    return-void
.end method

.method private Ud()V
    .locals 6

    .prologue
    .line 446
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->fileSize:I

    if-gtz v0, :cond_0

    .line 453
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 457
    :goto_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 458
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 459
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 464
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 465
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 464
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 470
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axi$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axi$13;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 484
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axi$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axi$2;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 492
    return-void

    .line 455
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->fileSize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private Ue()V
    .locals 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 504
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700fb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 503
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0700fc

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axi$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axi$3;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    goto :goto_0
.end method

.method private Ug()V
    .locals 3

    .prologue
    .line 575
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    .line 576
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 578
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070074

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axi$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axi$4;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 589
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axi$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axi$5;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 601
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axi;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/axi;->aYS:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axi;Lcom/kingroot/kinguser/tk;)Lcom/kingroot/kinguser/tk;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/axi;->asq:Lcom/kingroot/kinguser/tk;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axi;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axi;->hx(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axi;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axi;->aYW:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axi;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/kingroot/kinguser/axi;->aYU:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axi;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/axi;->aYR:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/axi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/tk;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->asq:Lcom/kingroot/kinguser/tk;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/axi;->Uc()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYS:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->ahP:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYR:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/axi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYQ:Landroid/widget/ImageView;

    return-object v0
.end method

.method private hx(I)V
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    return-void
.end method

.method public static synthetic i(Lcom/kingroot/kinguser/axi;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/axi;->aYU:I

    return v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/axi;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYY:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/baz$a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYZ:Lcom/kingroot/kinguser/baz$a;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/axi;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axi;->aYW:Z

    return v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/axi;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/bid;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/axi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public Uf()V
    .locals 4

    .prologue
    .line 531
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axi;->hx(I)V

    .line 532
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/axi;->aYU:I

    iget-object v3, p0, Lcom/kingroot/kinguser/axi;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aoq;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    .line 536
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0x7f0700f9

    const-wide/16 v6, 0x3e8

    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 199
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700fd

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    const-string v0, ""

    invoke-direct {p0, v4, v0}, Lcom/kingroot/kinguser/axi;->P(ILjava/lang/String;)V

    .line 288
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700fd

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/axi;->Ug()V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/axi;->Ud()V

    goto :goto_0

    .line 221
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/axi;->hx(I)V

    goto :goto_0

    .line 225
    :pswitch_5
    new-instance v0, Lcom/kingroot/kinguser/axi$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axi$8;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-static {v0, v6, v7}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8, v9}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700fa

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-direct {p0}, Lcom/kingroot/kinguser/axi;->Ub()V

    goto :goto_0

    .line 245
    :pswitch_7
    invoke-direct {p0}, Lcom/kingroot/kinguser/axi;->Ua()V

    goto :goto_0

    .line 249
    :pswitch_8
    new-instance v0, Lcom/kingroot/kinguser/axi$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axi$9;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-static {v0, v6, v7}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8, v9}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 260
    :pswitch_9
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 265
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 266
    const/16 v0, 0x63

    .line 268
    :cond_0
    const-wide/32 v2, 0x7f0700f8

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axi;->P(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :pswitch_a
    invoke-direct {p0}, Lcom/kingroot/kinguser/axi;->Ue()V

    goto/16 :goto_0

    .line 276
    :pswitch_b
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axi;->aYX:Z

    goto/16 :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axi;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 143
    const v0, 0x7f0f018c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    .line 144
    const v0, 0x7f0f019d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->aYQ:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0f0075

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axi;->ahP:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0f0076

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    const v1, 0x7f0f019e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    const v2, 0x7f0f019f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    .line 150
    iget-object v2, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    new-instance v4, Lcom/kingroot/kinguser/axi$6;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axi$6;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/kingroot/kinguser/axi;->aCO:Landroid/widget/Button;

    const-wide/32 v4, 0x7f0700fd

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->functionDesc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/axi$7;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axi$7;-><init>(Lcom/kingroot/kinguser/axi;)V

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/util/List;Lcom/kingroot/kinguser/apv$b;)V

    .line 194
    return-object v3
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 112
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 563
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->ig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 564
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYS:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 568
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apv;->ig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 569
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYR:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 571
    :cond_4
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 572
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 117
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axi;->aYX:Z

    if-eqz v0, :cond_0

    .line 118
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axi;->hx(I)V

    .line 120
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/kingroot/kinguser/axi;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 525
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->b(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    .line 526
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 527
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 528
    return-void
.end method
