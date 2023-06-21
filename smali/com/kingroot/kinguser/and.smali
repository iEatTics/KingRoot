.class public Lcom/kingroot/kinguser/and;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/and$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/and$a;)V
    .locals 2

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 201
    :goto_0
    return-void

    .line 190
    :cond_0
    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 191
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 192
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kingroot/kinguser/and$a;->a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V

    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/wd;->nl()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lcom/kingroot/kinguser/and$a;->a(Landroid/content/Context;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V

    .line 200
    :cond_2
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kingroot/kinguser/and$a;->a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 54
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ii()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 60
    if-eq v0, v2, :cond_2

    if-nez v0, :cond_3

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    invoke-virtual {p4, v1, p1}, Lcom/kingroot/kinguser/and$a;->b(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 63
    :cond_3
    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 65
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    .line 66
    if-ne v0, v2, :cond_5

    .line 67
    const v0, 0x7f07041a

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 69
    const/16 v0, 0x9

    iput v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 70
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Lcom/kingroot/kinguser/and$a;->a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0

    .line 73
    :cond_5
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Im()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    :cond_6
    new-instance v5, Lcom/kingroot/kinguser/bid;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 79
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    if-nez v0, :cond_7

    .line 80
    const v0, 0x7f07041b

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    const v0, 0x7f070418

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    const v0, 0x7f070419

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    const v0, 0x7f070416

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_1
    invoke-virtual {v5}, Lcom/kingroot/kinguser/bid;->show()V

    .line 91
    invoke-virtual {v5, v3}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/kingroot/kinguser/and$1;

    invoke-direct {v0, p1, p4}, Lcom/kingroot/kinguser/and$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/and$a;)V

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 105
    new-instance v0, Lcom/kingroot/kinguser/and$2;

    invoke-direct {v0, p4, p1}, Lcom/kingroot/kinguser/and$2;-><init>(Lcom/kingroot/kinguser/and$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bid;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/and$3;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/kingroot/kinguser/and$3;-><init>(Lcom/kingroot/kinguser/and$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    goto/16 :goto_0

    .line 85
    :cond_7
    const v0, 0x7f070431

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    const v0, 0x7f07042f

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    const v0, 0x7f070430

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    const v0, 0x7f070417

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    goto/16 :goto_0

    .line 124
    :cond_9
    if-nez v0, :cond_0

    .line 125
    invoke-static {p1, p2, p3, p4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    goto/16 :goto_0

    .line 128
    :cond_a
    invoke-static {p1, p2, p3, p4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 265
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 266
    const v1, 0x7f0703f6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 267
    :cond_0
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 268
    const v1, 0x7f0703f8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_1
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 270
    const v1, 0x7f0703f7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_2
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 272
    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->d(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    if-ne v1, v4, :cond_4

    .line 275
    const v1, 0x7f0703f4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;I)V

    goto :goto_0

    .line 276
    :cond_4
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Im()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    const v1, 0x7f0703e5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->b(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_5
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/and;->b(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0
.end method

.method private static a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 437
    if-nez p0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 441
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e012c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 443
    const v0, 0x7f02023d

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    goto :goto_0
.end method

.method private static a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 471
    if-nez p0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 474
    :cond_0
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e012c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 477
    const v0, 0x7f02014c

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 597
    .line 598
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703e8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 607
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    if-eq v1, v2, :cond_0

    .line 611
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 614
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 615
    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    .line 617
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    if-nez v0, :cond_2

    .line 618
    const/16 v0, 0x8

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 627
    :cond_1
    :goto_0
    new-instance v0, Lcom/kingroot/kinguser/and$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/and$5;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 634
    return-void

    .line 620
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ii()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    const/4 v0, 0x5

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 624
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-static {p0, p1, p2, v0, v0}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 205
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 11

    .prologue
    .line 209
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->In()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-static {p1, p0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kinguser/bed;

    sget-object v8, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v10, 0x0

    new-instance v0, Lcom/kingroot/kinguser/and$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/and$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method private static a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 524
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->hy(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->b(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 528
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    if-ne v0, v3, :cond_1

    .line 531
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 532
    if-nez v0, :cond_2

    .line 534
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 536
    :cond_2
    iput v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    goto :goto_0

    .line 541
    :cond_3
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    goto :goto_0
.end method

.method private static a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 149
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 150
    if-nez v0, :cond_2

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    move-object v3, p1

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 152
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 154
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/kingroot/kinguser/and$a;->d(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->categoryId:I

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->H(ILjava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/kingroot/kinguser/and$a;->a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 184
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Im()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    move-object v3, p1

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 160
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->categoryId:I

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->H(ILjava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_3
    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 164
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->g(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->hK(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x4

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    goto :goto_0

    .line 167
    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 168
    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->l(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 171
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 172
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703f8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    goto :goto_0

    .line 176
    :cond_7
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 177
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anf;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->categoryId:I

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->K(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;I)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x1

    const v6, 0x7f0703f6

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 337
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 339
    if-nez p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    if-nez p0, :cond_2

    if-nez p4, :cond_2

    .line 344
    invoke-static {p1, p3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0

    .line 346
    :cond_2
    if-nez p4, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v1

    .line 350
    sget-object v2, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-ne v1, v2, :cond_5

    .line 351
    iput v3, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 352
    const v1, 0x7f0703f4

    .line 353
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 354
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KL()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 352
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KL()I

    move-result v2

    .line 352
    invoke-static {p1, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;I)V

    .line 375
    :cond_3
    :goto_1
    const/16 v1, 0xa

    if-eq p4, v1, :cond_4

    const/16 v1, 0xb

    if-ne p4, v1, :cond_a

    .line 377
    :cond_4
    const/16 v1, 0x8

    iput v1, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 378
    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/and;->d(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_5
    sget-object v2, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    if-ne v1, v2, :cond_6

    .line 356
    const/4 v1, 0x2

    iput v1, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 357
    const v1, 0x7f0703f3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_6
    sget-object v2, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    if-ne v1, v2, :cond_7

    .line 359
    iput v5, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 360
    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_7
    sget-object v2, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    if-eq v1, v2, :cond_8

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    if-ne v1, v2, :cond_3

    .line 364
    :cond_8
    iget v1, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    .line 365
    const/4 v1, 0x3

    iput v1, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 368
    :cond_9
    const v1, 0x7f0703e5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KL()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;I)V

    goto :goto_1

    .line 379
    :cond_a
    invoke-static {p4}, Lcom/kingroot/kinguser/anf;->fG(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 380
    iput v7, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 381
    const v1, 0x7f0703f8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_b
    if-ne p4, v7, :cond_d

    .line 384
    invoke-static {p3}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 385
    iput v5, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 386
    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_c
    iput v4, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 390
    invoke-static {p1, p3}, Lcom/kingroot/kinguser/and;->b(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 391
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->iy(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :cond_d
    const/16 v1, 0xe

    if-eq p4, v1, :cond_e

    const/16 v1, 0xf

    if-eq p4, v1, :cond_e

    const/16 v1, 0x10

    if-ne p4, v1, :cond_f

    .line 396
    :cond_e
    iput v5, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 397
    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_f
    const/16 v0, 0xc

    if-ne p4, v0, :cond_0

    .line 400
    iput v4, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 401
    invoke-static {p1, p3}, Lcom/kingroot/kinguser/and;->b(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 402
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->iy(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;",
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 417
    if-nez p1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/anf;->c(Ljava/util/List;Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 427
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V
    .locals 1

    .prologue
    .line 135
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->In()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-static {p0, p1, p4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/and$a;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    goto :goto_0
.end method

.method public static b(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 10

    .prologue
    const v9, 0x7f0704d4

    const v8, 0x7f0703e8

    const/16 v7, 0x29

    const/16 v6, 0x28

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 291
    const/4 v0, 0x0

    iput v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 292
    instance-of v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    iget-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 293
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->fileSize:J

    .line 295
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->d(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->fileSize:J

    .line 299
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_1
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    if-eqz v0, :cond_2

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->d(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {v1, v8}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 454
    if-nez p0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e012c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 460
    const v0, 0x7f02014c

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 461
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;I)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;I)V

    return-void
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/anf;->b(Ljava/util/List;Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703f6

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method public static c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->In()Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 323
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 324
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 325
    const v1, 0x7f070407

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->e(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 327
    const v1, 0x7f070406

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->e(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_3
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 330
    const v1, 0x7f070404

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/and;->b(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    goto :goto_0
.end method

.method private static c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 488
    if-nez p0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 491
    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 492
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e012c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 494
    const v0, 0x7f02014c

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/and;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    return-void
.end method

.method private static d(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 499
    if-nez p0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 504
    const v0, 0x7f0200da

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 505
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    goto :goto_0
.end method

.method private static e(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 513
    if-nez p0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 517
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 518
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e012c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 519
    const v0, 0x7f02023e

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    goto :goto_0
.end method
