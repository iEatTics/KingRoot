.class public Lcom/kingroot/kinguser/ayb;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ayb$a;
    }
.end annotation


# instance fields
.field private JF:Landroid/webkit/WebView;

.field private aCO:Landroid/widget/Button;

.field private aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

.field private aYM:Lcom/kingroot/kinguser/bid;

.field private aYN:Lcom/kingroot/kinguser/bid;

.field private aYO:Lcom/kingroot/kinguser/bid;

.field private aYP:Lcom/kingcore/uilib/TextProgressBar;

.field private aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aYX:Z

.field private aZa:Lcom/kingroot/kinguser/bed;

.field private aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

.field private asq:Lcom/kingroot/kinguser/tk;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private final bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field private bcC:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 170
    const-string v0, "ku_pageToolboxAppCardDistPage"

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    const-string v0, "ToolboxAppCardDistPage"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->asq:Lcom/kingroot/kinguser/tk;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ayb;->aYX:Z

    .line 403
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ayb$7;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ayb$7;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aZa:Lcom/kingroot/kinguser/bed;

    .line 528
    new-instance v0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$9;-><init>(Lcom/kingroot/kinguser/ayb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    .line 584
    new-instance v0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;-><init>(Lcom/kingroot/kinguser/ayb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 611
    new-instance v0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;-><init>(Lcom/kingroot/kinguser/ayb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    .line 171
    iput-object p2, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 172
    return-void
.end method

.method private P(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    invoke-virtual {v0, p1}, Lcom/kingcore/uilib/TextProgressBar;->setProgress(I)V

    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextProgressBar;->setVisibility(I)V

    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    invoke-virtual {v0, p2}, Lcom/kingcore/uilib/TextProgressBar;->setTextProgress(Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void
.end method

.method private UJ()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcC:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private UK()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->jN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->asq:Lcom/kingroot/kinguser/tk;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 320
    :cond_0
    return-void
.end method

.method private UL()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->jN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayb;->oP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 359
    :cond_1
    return-void
.end method

.method private Ua()V
    .locals 3

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->gT(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 331
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    iget-object v2, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->K(ILjava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->UL()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Ub()V
    .locals 6

    .prologue
    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/ayb$6;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/ayb$6;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 377
    return-void
.end method

.method private Ud()V
    .locals 6

    .prologue
    .line 438
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-wide v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 444
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 448
    :goto_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 449
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 450
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 455
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 456
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 455
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/ayb$8;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ayb$8;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/ayb$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ayb$9;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 482
    return-void

    .line 446
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-wide v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    goto :goto_0

    .line 452
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

    .line 457
    :catch_0
    move-exception v0

    .line 458
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private Ue()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 494
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700fb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 493
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0700fc

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/ayb$10;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ayb$10;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    goto :goto_0
.end method

.method private Ug()V
    .locals 3

    .prologue
    .line 556
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    .line 557
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070074

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/ayb$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ayb$2;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 570
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/ayb$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ayb$3;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 582
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ayb;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ayb;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ayb;->hx(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ayb;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ayb;->dy(Z)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ayb;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcC:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->UJ()V

    return-void
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object v0
.end method

.method private dy(Z)V
    .locals 5

    .prologue
    .line 400
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aZa:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/ayb;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/bid;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/ayb;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hx(I)V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 381
    return-void
.end method

.method public static synthetic i(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->UL()V

    return-void
.end method

.method public static synthetic j(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->Ua()V

    return-void
.end method


# virtual methods
.method public Uf()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 521
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ayb;->hx(I)V

    .line 522
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ayb;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1, v3, v2}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 523
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    .line 526
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

    .line 223
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700fd

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    const-string v0, ""

    invoke-direct {p0, v4, v0}, Lcom/kingroot/kinguser/ayb;->P(ILjava/lang/String;)V

    .line 314
    :goto_0
    :pswitch_0
    return-void

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700fd

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->Ug()V

    goto :goto_0

    .line 238
    :pswitch_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->Ud()V

    goto :goto_0

    .line 242
    :pswitch_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->UK()V

    goto :goto_0

    .line 246
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/ayb;->hx(I)V

    goto :goto_0

    .line 250
    :pswitch_6
    new-instance v0, Lcom/kingroot/kinguser/ayb$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ayb$4;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-static {v0, v6, v7}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8, v9}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->UL()V

    goto :goto_0

    .line 263
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700fa

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->UK()V

    .line 268
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->Ub()V

    goto :goto_0

    .line 275
    :pswitch_8
    new-instance v0, Lcom/kingroot/kinguser/ayb$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ayb$5;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-static {v0, v6, v7}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8, v9}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :pswitch_9
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 291
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 292
    const/16 v0, 0x63

    .line 294
    :cond_0
    const-wide/32 v2, 0x7f0700f8

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/ayb;->P(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :pswitch_a
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->Ue()V

    goto/16 :goto_0

    .line 302
    :pswitch_b
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ayb;->aYX:Z

    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayb;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030138

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 191
    const v0, 0x7f0f018c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYP:Lcom/kingcore/uilib/TextProgressBar;

    .line 193
    const v0, 0x7f0f033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    .line 196
    const/16 v0, 0xb

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "removeJavascriptInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    iget-object v2, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    const v0, 0x7f0f00dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcC:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    new-instance v2, Lcom/kingroot/kinguser/ayb$a;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ayb$a;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 206
    const v0, 0x7f0f019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/ayb$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ayb$1;-><init>(Lcom/kingroot/kinguser/ayb;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aCO:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700fd

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayb;->UJ()V

    .line 218
    return-object v1

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 148
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ayb;->dy(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYM:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYO:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYN:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 552
    :cond_2
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 553
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 153
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 154
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ayb;->aYX:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ayb;->hx(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 165
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/ayb;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/amz;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->bcB:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/ayb;->aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/asy;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 167
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb;->aYV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 515
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->aZb:Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    .line 516
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 517
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 518
    return-void
.end method
