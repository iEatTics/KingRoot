.class public Lcom/kingroot/kinguser/bfd;
.super Lcom/kingroot/kinguser/bfa;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;


# instance fields
.field private aYM:Lcom/kingroot/kinguser/bid;

.field private aYN:Lcom/kingroot/kinguser/bid;

.field private aYU:I

.field private aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aYY:Ljava/lang/Runnable;

.field private aYZ:Lcom/kingroot/kinguser/baz$a;

.field private aZa:Lcom/kingroot/kinguser/bed;

.field private aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

.field private asq:Lcom/kingroot/kinguser/tk;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field protected bmd:Landroid/widget/ProgressBar;

.field private bme:Lcom/kingroot/kinguser/big;

.field private bmf:Lcom/kingroot/kinguser/bid;

.field private bmg:Lcom/kingroot/kinguser/bid;

.field private bmh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bmi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bmj:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field private bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

.field private bml:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfa;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput v4, p0, Lcom/kingroot/kinguser/bfd;->aYU:I

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmi:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmj:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/bfd$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bfd$1;-><init>(Lcom/kingroot/kinguser/bfd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYY:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/kingroot/kinguser/bfd$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bfd$10;-><init>(Lcom/kingroot/kinguser/bfd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/kingroot/kinguser/bfd$16;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bfd$16;-><init>(Lcom/kingroot/kinguser/bfd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bml:Ljava/lang/Runnable;

    .line 322
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bfd$18;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bfd$18;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->aZa:Lcom/kingroot/kinguser/bed;

    .line 412
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;-><init>(Lcom/kingroot/kinguser/bfd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 446
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$11;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$11;-><init>(Lcom/kingroot/kinguser/bfd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    .line 545
    new-instance v0, Lcom/kingroot/kinguser/bfd$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bfd$4;-><init>(Lcom/kingroot/kinguser/bfd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYZ:Lcom/kingroot/kinguser/baz$a;

    return-void
.end method

.method private Ua()V
    .locals 6

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->ZH()V

    .line 462
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bfd$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/bfd$2;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 493
    return-void
.end method

.method private Ub()V
    .locals 6

    .prologue
    .line 504
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bfd$3;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/bfd$3;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 543
    return-void
.end method

.method private Uc()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-ne v1, v2, :cond_2

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->hK(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bfd;->hx(I)V

    goto :goto_0

    .line 307
    :cond_2
    if-nez v0, :cond_3

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aZa:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 316
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188a1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    const-string v1, "Roottool"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    if-ne v1, v2, :cond_4

    .line 310
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aZa:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_1

    .line 312
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoq;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 313
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aZa:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_1
.end method

.method private Ud()V
    .locals 6

    .prologue
    .line 563
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188a2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 564
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    .line 565
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileSize:I

    if-gtz v0, :cond_0

    .line 571
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 575
    :goto_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 576
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 577
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 582
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 583
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 582
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 588
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$5;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 604
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$6;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 615
    return-void

    .line 573
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->fileSize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    goto :goto_0

    .line 579
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

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string v0, ""

    goto :goto_2
.end method

.method private Ue()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700fb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 197
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0700fc

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$14;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$14;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$15;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$15;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    goto :goto_0
.end method

.method private Ug()V
    .locals 3

    .prologue
    .line 618
    new-instance v0, Lcom/kingroot/kinguser/big;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    .line 619
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->show()V

    .line 621
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070074

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setTitleText(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lK(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lL(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    new-instance v1, Lcom/kingroot/kinguser/bfd$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$7;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 631
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    new-instance v1, Lcom/kingroot/kinguser/bfd$8;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$8;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 643
    return-void
.end method

.method private ZG()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->blR:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07035f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 255
    return-void
.end method

.method private ZH()V
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfd;->ZC()Lcom/kingroot/kinguser/bfc;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfc;->ZF()V

    .line 500
    :cond_0
    return-void
.end method

.method private ZI()V
    .locals 6

    .prologue
    .line 646
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    .line 647
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 648
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703de

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v5, v5, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->mainTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$9;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 660
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$11;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$11;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 668
    return-void
.end method

.method private ZJ()V
    .locals 6

    .prologue
    .line 671
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    .line 672
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 673
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703e0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703df

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v5, v5, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->mainTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$12;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$12;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 685
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bfd$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$13;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 697
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfd;Lcom/kingroot/kinguser/tk;)Lcom/kingroot/kinguser/tk;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd;->asq:Lcom/kingroot/kinguser/tk;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/bfd;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfd;->iu(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfd;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfd;->dM(Z)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bfd;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmi:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/bfd;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfd;->hx(I)V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bfd;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/kingroot/kinguser/bfd;->aYU:I

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/tk;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->asq:Lcom/kingroot/kinguser/tk;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->Ug()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bfd;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfd;->iv(I)V

    return-void
.end method

.method private dM(Z)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->blR:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070360

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->Ud()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->ZG()V

    return-void
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->Ub()V

    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->Ua()V

    return-void
.end method

.method private hx(I)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->Ue()V

    return-void
.end method

.method private iu(I)V
    .locals 1

    .prologue
    .line 375
    new-instance v0, Lcom/kingroot/kinguser/bfd$19;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bfd$19;-><init>(Lcom/kingroot/kinguser/bfd;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method private iv(I)V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/kingroot/kinguser/bfd$20;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bfd$20;-><init>(Lcom/kingroot/kinguser/bfd;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bfd;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->Uc()V

    return-void
.end method

.method static synthetic l(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->ZI()V

    return-void
.end method

.method static synthetic m(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->ZJ()V

    return-void
.end method

.method public static synthetic n(Lcom/kingroot/kinguser/bfd;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bml:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic o(Lcom/kingroot/kinguser/bfd;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic p(Lcom/kingroot/kinguser/bfd;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/bfd;->aYU:I

    return v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/bfd;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYY:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/baz$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYZ:Lcom/kingroot/kinguser/baz$a;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/bid;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    return-object v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/big;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/bid;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    return-object v0
.end method

.method static synthetic v(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/bid;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    return-object v0
.end method


# virtual methods
.method public Uf()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->bml:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/bfd;->aYU:I

    iget-object v3, p0, Lcom/kingroot/kinguser/bfd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aoq;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    .line 408
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    .line 410
    :cond_0
    return-void
.end method

.method protected ZD()I
    .locals 1

    .prologue
    .line 259
    const v0, 0x7f03013a

    return v0
.end method

.method protected ZE()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 264
    invoke-super {p0}, Lcom/kingroot/kinguser/bfa;->ZE()V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->mView:Landroid/view/View;

    const v1, 0x7f0f0346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->blQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->mView:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/bfd$17;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfd$17;-><init>(Lcom/kingroot/kinguser/bfd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    return-void
.end method

.method public ZK()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmj:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    const-string v1, "Roottool"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_0
    return-void
.end method

.method protected a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bfa;->a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    .line 186
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmj:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmk:Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    const-string v1, "Roottool"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_0
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_2

    .line 741
    :cond_1
    iput-object p3, p0, Lcom/kingroot/kinguser/bfd;->bmj:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 743
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bme:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->dismiss()V

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmf:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmg:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 718
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 719
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    .line 720
    invoke-super {p0}, Lcom/kingroot/kinguser/bfa;->onDestroy()V

    .line 721
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 733
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->bmi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfd;->ZG()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 292
    :cond_1
    return-void
.end method

.method protected s(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bfa;->s(Ljava/lang/Object;)V

    .line 281
    return-void
.end method
