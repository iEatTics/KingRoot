.class Lcom/kingroot/kinguser/awo$7;
.super Lcom/kingroot/kinguser/vl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVb:Lcom/kingroot/kinguser/awo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awo;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/kingroot/kinguser/awo$7;->aVb:Lcom/kingroot/kinguser/awo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/vl;-><init>()V

    return-void
.end method

.method private jS(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x3

    .line 527
    :goto_0
    return v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awo$7;->aVb:Lcom/kingroot/kinguser/awo;

    invoke-static {v0}, Lcom/kingroot/kinguser/awo;->a(Lcom/kingroot/kinguser/awo;)Lcom/kingroot/kinguser/aws;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_1

    .line 525
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/aws;->jT(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 527
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public O(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 477
    if-ne p1, v1, :cond_0

    .line 479
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/avv;->di(Z)V

    .line 481
    :cond_0
    return-void
.end method

.method public Tp()I
    .locals 1

    .prologue
    .line 467
    const v0, 0x7f020160

    return v0
.end method

.method public a(JJLcom/kingroot/kinguser/u;)I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 360
    if-eqz p5, :cond_0

    iget-object v1, p5, Lcom/kingroot/kinguser/u;->gp:Lcom/kingroot/kinguser/aj;

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bat;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0, p5, p1, p2}, Lcom/kingroot/kinguser/aeg;->a(Lcom/kingroot/kinguser/u;J)Z

    .line 370
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V
    .locals 4

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bgz;->aca()Lcom/kingroot/kinguser/bgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bgz;->b(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->expirationTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-wide v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    .line 511
    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aea;->a(ZJI)V

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public aD(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 377
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/webview/WebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 379
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v1, "webview_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    return-object v0
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    const-string v0, ""

    .line 344
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 348
    invoke-static {p2, p3}, Lcom/kingroot/kinguser/cbb;->be(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/kingroot/kinguser/ait;->gf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 352
    invoke-static {p2, p3}, Lcom/kingroot/kinguser/cbb;->bd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/kingroot/kinguser/ait;->gf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g(IJ)V
    .locals 2

    .prologue
    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 502
    :goto_0
    return-void

    .line 488
    :sswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/bgz;->aca()Lcom/kingroot/kinguser/bgz;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/kingroot/kinguser/bgz;->cy(J)V

    goto :goto_0

    .line 492
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/kingroot/kinguser/aeg;->ab(J)V

    goto :goto_0

    .line 485
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x311 -> :sswitch_0
    .end sparse-switch
.end method

.method public gs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    invoke-static {p1}, Lcom/kingroot/kinguser/ajl;->gs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jO(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public jP(Ljava/lang/String;)Lcom/kingroot/kinguser/cbd;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 398
    array-length v1, v3

    if-lt v1, v8, :cond_0

    .line 403
    :try_start_0
    const-class v1, Lcom/kingroot/kinguser/awo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 408
    :goto_1
    if-eqz v2, :cond_0

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Lcom/kingroot/kinguser/cbd;

    invoke-direct {v1}, Lcom/kingroot/kinguser/cbd;-><init>()V

    .line 413
    const-string v4, "ENABLE_DESKTOP_ICON"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v4, v3

    if-ne v4, v6, :cond_3

    .line 414
    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbd;->setId(I)V

    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbd;->setIntent(Landroid/content/Intent;)V

    :cond_2
    :goto_2
    move-object v0, v1

    .line 452
    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    .line 416
    :cond_3
    const-string v4, "APP_CATEGORY_PAGE"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 419
    const/4 v4, 0x3

    :try_start_1
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 424
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    const-string v2, "app_download_page_title"

    aget-object v3, v3, v6

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v2, "app_download_page_category_id"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbd;->setId(I)V

    .line 428
    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/cbd;->setIntent(Landroid/content/Intent;)V

    goto :goto_2

    .line 429
    :cond_4
    const-string v4, "APP_DETAIL_PAGE"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 430
    aget-object v4, v3, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APP_DETAIL_PAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 438
    const/4 v5, 0x3

    :try_start_2
    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 443
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 446
    const-string v5, "app_detail_scene"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string v5, "notification_app_offset"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 449
    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/cbd;->setId(I)V

    .line 450
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/cbd;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 439
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 420
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method public jQ(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/awo$7;->jS(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public jR(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/awo$7;->jS(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
