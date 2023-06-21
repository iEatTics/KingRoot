.class public Lcom/kingroot/kinguser/aly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amv;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aly;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final azd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final azf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private azg:Landroid/widget/LinearLayout;

.field private final azh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final azi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

.field private final azk:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final azl:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private azm:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketWellChosenMgrImp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aly;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/kingroot/kinguser/aly$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aly$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aly;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->azd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->aze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->azh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->azi:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    new-instance v0, Lcom/kingroot/kinguser/aly$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aly$3;-><init>(Lcom/kingroot/kinguser/aly;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->azk:Lcom/kingroot/kinguser/alz;

    .line 125
    new-instance v0, Lcom/kingroot/kinguser/aly$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aly$4;-><init>(Lcom/kingroot/kinguser/aly;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->azl:Lcom/kingroot/kinguser/alz;

    .line 320
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aly$7;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/aly$7;-><init>(Lcom/kingroot/kinguser/aly;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aly;->azm:Lcom/kingroot/kinguser/bed;

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azk:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azl:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/aly$5;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/aly$5;-><init>(Lcom/kingroot/kinguser/aly;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aly$1;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;-><init>()V

    return-void
.end method

.method public static HG()Lcom/kingroot/kinguser/aly;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/kingroot/kinguser/aly;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aly;

    return-object v0
.end method

.method private HH()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azk:Lcom/kingroot/kinguser/alz;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aly;->a(Lcom/kingroot/kinguser/alz;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private HI()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azl:Lcom/kingroot/kinguser/alz;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aly;->a(Lcom/kingroot/kinguser/alz;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private HJ()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azk:Lcom/kingroot/kinguser/alz;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aly;->b(Lcom/kingroot/kinguser/alz;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private HK()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azl:Lcom/kingroot/kinguser/alz;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aly;->b(Lcom/kingroot/kinguser/alz;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private HL()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azg:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azg:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->aze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private HM()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 527
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 550
    :cond_0
    :goto_0
    return v2

    .line 533
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 535
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 536
    invoke-static {v0}, Lcom/kingroot/kinguser/yu;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 537
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 539
    goto :goto_1

    .line 542
    :cond_2
    const/4 v0, 0x5

    if-gt v1, v0, :cond_3

    move v2, v3

    .line 543
    goto :goto_0

    .line 546
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HO()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 547
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private HN()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v0, 0xc8

    .line 593
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 596
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ru;->iY()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 632
    :goto_0
    return-object v0

    .line 600
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 601
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 604
    if-eqz v4, :cond_1

    array-length v2, v4

    if-gtz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 605
    goto :goto_0

    .line 612
    :cond_2
    array-length v2, v4

    if-gt v2, v0, :cond_3

    array-length v0, v4

    .line 613
    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 614
    aget-object v5, v4, v2

    .line 615
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 613
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 620
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 625
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 626
    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 629
    :catch_0
    move-exception v0

    .line 630
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 632
    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 628
    goto :goto_0
.end method

.method private HO()Z
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 638
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/aly;->azi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 644
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0

    .line 647
    :cond_2
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 649
    new-instance v3, Lcom/kingroot/kinguser/do;

    invoke-direct {v3}, Lcom/kingroot/kinguser/do;-><init>()V

    .line 651
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/do;->it:Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_1

    .line 655
    :goto_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/aay;->al(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/do;->iE:Ljava/lang/String;

    .line 656
    iput v0, v3, Lcom/kingroot/kinguser/do;->versionCode:I

    .line 657
    const-string v4, ""

    iput-object v4, v3, Lcom/kingroot/kinguser/do;->versionName:Ljava/lang/String;

    .line 659
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/kingroot/kinguser/do;->ny:Ljava/util/ArrayList;

    .line 667
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/kingroot/kinguser/do;->nz:Ljava/util/ArrayList;

    .line 668
    iget-object v4, v3, Lcom/kingroot/kinguser/do;->nz:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/aly;->q(Ljava/util/ArrayList;)V

    .line 670
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hY()I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/do;->productId:I

    .line 671
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ia()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/do;->lc:Ljava/lang/String;

    .line 672
    new-instance v4, Lcom/kingroot/kinguser/dp;

    invoke-direct {v4}, Lcom/kingroot/kinguser/dp;-><init>()V

    .line 673
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v5

    const/16 v6, 0x1b87

    new-instance v7, Lcom/kingroot/kinguser/aly$2;

    invoke-direct {v7, p0, v2}, Lcom/kingroot/kinguser/aly$2;-><init>(Lcom/kingroot/kinguser/aly;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 691
    const-wide/16 v4, 0xf

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 696
    :goto_2
    iget-object v2, p0, Lcom/kingroot/kinguser/aly;->azh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 697
    goto :goto_0

    .line 692
    :catch_0
    move-exception v2

    goto :goto_2

    .line 652
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private a(Lcom/kingroot/kinguser/alz;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 168
    invoke-static {v0}, Lcom/kingroot/kinguser/anf;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    const/16 v2, 0x1b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;ILjava/util/List;ILcom/kingroot/kinguser/alz;)V
    .locals 10
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;I",
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v8

    const/16 v9, 0x51

    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;-><init>(Lcom/kingroot/kinguser/aly;Ljava/util/List;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;IILcom/kingroot/kinguser/alz;)V

    invoke-interface {v8, p5, v9, p3, v0}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 289
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aly;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;ILjava/util/List;ILcom/kingroot/kinguser/alz;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct/range {p0 .. p6}, Lcom/kingroot/kinguser/aly;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;ILjava/util/List;ILcom/kingroot/kinguser/alz;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aly;IZ)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aly;->s(IZ)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;)V
    .locals 7

    .prologue
    .line 237
    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v5, 0x4c7bb1

    iget-object v6, p0, Lcom/kingroot/kinguser/aly;->azk:Lcom/kingroot/kinguser/alz;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aly;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;ILjava/util/List;ILcom/kingroot/kinguser/alz;)V

    .line 238
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aly;)Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HO()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aly;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azm:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/alz;)Ljava/lang/Boolean;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aly;->a(Lcom/kingroot/kinguser/alz;)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_1
    const/4 v2, 0x1

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v4

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    .line 218
    goto :goto_1

    .line 220
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 226
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isAppsReady2Show crash"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    .line 229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;)V
    .locals 7

    .prologue
    .line 241
    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v5, 0x4c7261

    iget-object v6, p0, Lcom/kingroot/kinguser/aly;->azl:Lcom/kingroot/kinguser/alz;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aly;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;ILjava/util/List;ILcom/kingroot/kinguser/alz;)V

    .line 242
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->aze:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/aly;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HL()V

    return-void
.end method

.method static synthetic g(Lcom/kingroot/kinguser/aly;)Lcom/kingroot/common/uilib/WellChosenOuterGuideView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azi:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private q(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HN()Ljava/util/Map;

    move-result-object v0

    .line 581
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 582
    if-eqz v0, :cond_0

    .line 585
    new-instance v3, Lcom/kingroot/kinguser/dq;

    invoke-direct {v3}, Lcom/kingroot/kinguser/dq;-><init>()V

    .line 586
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/kingroot/kinguser/dq;->name:Ljava/lang/String;

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/dq;->nC:I

    .line 588
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_1
    return-void
.end method

.method private s(IZ)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 446
    if-nez p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 452
    iget-object v3, p0, Lcom/kingroot/kinguser/aly;->azg:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 454
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/aly;->azg:Landroid/widget/LinearLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 455
    iget-object v3, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-virtual {v3}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    :cond_1
    :goto_1
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 462
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 463
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x108

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 465
    const/16 v4, 0x7d3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 466
    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 467
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 468
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 469
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 470
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 471
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 472
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kingroot/kinguser/aly;->azg:Landroid/widget/LinearLayout;

    .line 473
    new-instance v4, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    .line 474
    iget-object v4, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    if-nez p2, :cond_2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->aa(Z)V

    .line 475
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-virtual {v1, v2}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->setCloseEnable(Z)V

    .line 476
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->setWidth(I)V

    .line 477
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    new-instance v2, Lcom/kingroot/kinguser/aly$8;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aly$8;-><init>(Lcom/kingroot/kinguser/aly;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->setOnCloseListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    new-instance v2, Lcom/kingroot/kinguser/aly$9;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/aly$9;-><init>(Lcom/kingroot/kinguser/aly;I)V

    invoke-virtual {v1, v2}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azg:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kingroot/kinguser/aly;->azj:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azg:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->aze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 505
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 506
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 474
    goto :goto_2

    .line 456
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method


# virtual methods
.method public HC()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aly;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;)V

    .line 247
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aly;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;)V

    .line 248
    return-void
.end method

.method public HD()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HM()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HK()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/akl;->ea(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HJ()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/akl;->ea(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 570
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 573
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public HE()V
    .locals 2

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HL()V

    .line 440
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 441
    return-void
.end method

.method public ax(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 300
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v2

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/amz;->c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public cy(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->aze:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HL()V

    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aly;->HD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aly;->s(IZ)V

    .line 398
    :cond_1
    return-void
.end method

.method public fj(I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HI()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HH()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fk(I)I
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aly;->fj(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public fl(I)V
    .locals 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aly;->azm:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/aly$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/aly$6;-><init>(Lcom/kingroot/kinguser/aly;I)V

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public fm(I)V
    .locals 6

    .prologue
    .line 403
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->aze:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bj()J

    move-result-wide v0

    .line 421
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/akl;->Bi()J

    move-result-wide v2

    .line 423
    const-wide/32 v4, 0x2932e00

    invoke-static {v0, v1, v4, v5}, Lcom/kingroot/kinguser/adk;->g(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/kingroot/kinguser/aly;->HL()V

    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/aly;->azf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 430
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aly;->fk(I)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->a(Landroid/content/Context;II)V

    .line 431
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bg()V

    .line 432
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18928

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
