.class public Lcom/kingroot/kinguser/aoj;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private Gc:I

.field private aAY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aBX:Z

.field protected aBf:Lcom/kingroot/common/uilib/NestedScrollView;

.field private aCn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aCo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aEO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aEP:Lcom/kingroot/kinguser/bed;

.field private aER:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

.field private final aFL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private final aFM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aFN:Landroid/support/v7/widget/RecyclerView;

.field private aFO:Lcom/kingroot/kinguser/ale;

.field private aFP:Landroid/widget/Button;

.field private aFQ:Landroid/view/View;

.field private aFR:Landroid/widget/TextView;

.field private aFS:Landroid/widget/LinearLayout;

.field private aFT:Landroid/widget/TextView;

.field private aFU:Landroid/view/View;

.field private aFV:Landroid/widget/TextView;

.field private aFW:Z

.field private aFX:Z

.field private aFY:Lcom/kingroot/kinguser/ale$c;

.field protected aiM:Landroid/widget/FrameLayout;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field private aoh:Landroid/widget/LinearLayout;

.field private aoi:Landroid/support/v7/widget/RecyclerView;

.field private aoj:Lcom/kingroot/kinguser/alf;

.field private aok:Landroid/view/View;

.field private aon:I

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mEmptyView:Landroid/view/View;

.field private mUpdateInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "ku_pageUpdateTabPage"

    sput-object v0, Lcom/kingroot/kinguser/aoj;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFM:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->mUpdateInfoList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aEO:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aAY:Ljava/util/ArrayList;

    .line 103
    iput v1, p0, Lcom/kingroot/kinguser/aoj;->Gc:I

    .line 104
    iput v1, p0, Lcom/kingroot/kinguser/aoj;->aon:I

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aCn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aCo:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Lcom/kingroot/kinguser/aoj$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aoj$5;-><init>(Lcom/kingroot/kinguser/aoj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFY:Lcom/kingroot/kinguser/ale$c;

    .line 565
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;-><init>(Lcom/kingroot/kinguser/aoj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 583
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;-><init>(Lcom/kingroot/kinguser/aoj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 681
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;-><init>(Lcom/kingroot/kinguser/aoj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 702
    new-instance v0, Lcom/kingroot/kinguser/and$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->akD:Lcom/kingroot/kinguser/and$a;

    .line 705
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aoj$7;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aoj$7;-><init>(Lcom/kingroot/kinguser/aoj;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aEP:Lcom/kingroot/kinguser/bed;

    .line 738
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;-><init>(Lcom/kingroot/kinguser/aoj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aER:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    .line 132
    iput-boolean p2, p0, Lcom/kingroot/kinguser/aoj;->aBX:Z

    .line 134
    return-void
.end method

.method private declared-synchronized JU()V
    .locals 9

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 314
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    .line 315
    if-eq v1, v3, :cond_0

    if-eq v1, v6, :cond_0

    if-ne v1, v5, :cond_4

    .line 317
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 318
    if-ne v1, v3, :cond_2

    .line 319
    const v1, 0x7f07041a

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :cond_2
    if-eq v1, v6, :cond_3

    if-ne v1, v5, :cond_1

    .line 322
    :cond_3
    :try_start_1
    new-instance v1, Lcom/kingroot/kinguser/bid;

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 324
    const v3, 0x7f070431

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 325
    const v3, 0x7f07042f

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 326
    const v3, 0x7f070417

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 327
    const v3, 0x7f070430

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 328
    new-instance v2, Lcom/kingroot/kinguser/aoj$1;

    invoke-direct {v2, p0, v1}, Lcom/kingroot/kinguser/aoj$1;-><init>(Lcom/kingroot/kinguser/aoj;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 335
    new-instance v2, Lcom/kingroot/kinguser/aoj$4;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aoj$4;-><init>(Lcom/kingroot/kinguser/aoj;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 361
    :cond_4
    if-nez v1, :cond_1

    .line 362
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ame;

    .line 364
    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 365
    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->Ii()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    if-eq v4, v5, :cond_5

    iget v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    if-eq v4, v6, :cond_5

    .line 367
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 371
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ame;

    .line 372
    move-object v0, v1

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    move-object v7, v0

    .line 373
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    invoke-static {v7}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/kingroot/kinguser/aoj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 375
    const/4 v1, 0x1

    iput v1, v7, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    goto :goto_2

    .line 378
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704d7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private JV()V
    .locals 2

    .prologue
    .line 797
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aER:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/amu;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V

    .line 799
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aEP:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 800
    return-void
.end method

.method private JW()V
    .locals 7

    .prologue
    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 850
    :goto_0
    return-void

    .line 832
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 833
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/aoj$3;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/aoj$3;-><init>(Lcom/kingroot/kinguser/aoj;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 846
    const-wide/16 v2, 0x3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Jb()V
    .locals 5

    .prologue
    .line 529
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7bc5

    const/16 v2, 0x1e

    iget v3, p0, Lcom/kingroot/kinguser/aoj;->aon:I

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj;->aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 530
    return-void
.end method

.method private Jf()V
    .locals 8

    .prologue
    .line 805
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 807
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 808
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bed;

    sget-object v4, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v5, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v6, 0x0

    new-instance v7, Lcom/kingroot/kinguser/aoj$2;

    invoke-direct {v7, p0, v0, v1}, Lcom/kingroot/kinguser/aoj$2;-><init>(Lcom/kingroot/kinguser/aoj;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 820
    const-wide/16 v2, 0x5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized Jj()V
    .locals 5

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 299
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 300
    iget v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 301
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 305
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 306
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v2

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->l(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-interface {v2, v0, v3}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_1

    .line 309
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070485

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aoj;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/kingroot/kinguser/aoj;->aon:I

    return p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aoj;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj;->aEO:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aoj;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aoj;->aFW:Z

    return p1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mUpdateInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/ale;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFO:Lcom/kingroot/kinguser/ale;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/aoj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/aoj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aEP:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/aoj;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFN:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public static synthetic k(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aCo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic l(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aAY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic m(Lcom/kingroot/kinguser/aoj;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/aoj;->aon:I

    return v0
.end method

.method public static synthetic n(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->JW()V

    return-void
.end method

.method public static synthetic o(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aEO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/aoj;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFU:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/aoj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFV:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic r(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFM:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic s(Lcom/kingroot/kinguser/aoj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aCn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic t(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->Jb()V

    return-void
.end method

.method private wD()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 519
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->notifyDataSetChanged()V

    .line 524
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoh:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public Jl()V
    .locals 8

    .prologue
    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFO:Lcom/kingroot/kinguser/ale;

    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v6

    .line 537
    invoke-virtual {v6}, Lcom/kingroot/kinguser/akl;->Bb()I

    move-result v7

    .line 538
    invoke-virtual {v6}, Lcom/kingroot/kinguser/akl;->Bc()J

    move-result-wide v0

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 540
    const/4 v4, 0x2

    if-ge v7, v4, :cond_0

    const-wide/32 v4, 0xa4cb800

    .line 541
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/akl;->dY(I)V

    .line 544
    invoke-virtual {v6, v2, v3}, Lcom/kingroot/kinguser/akl;->ap(J)V

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFN:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aoj$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/aoj$6;-><init>(Lcom/kingroot/kinguser/aoj;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 231
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->a(Landroid/os/Message;)V

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 234
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aoj;->cE(Z)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/aoj;->Gc:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->Jb()V

    .line 244
    iget v0, p0, Lcom/kingroot/kinguser/aoj;->Gc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/aoj;->Gc:I

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->wD()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/aoj;->Gc:I

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected ah(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aCo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->GN()V

    .line 127
    return-void
.end method

.method public cE(Z)V
    .locals 14

    .prologue
    .line 456
    if-eqz p1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    monitor-enter v1

    .line 459
    if-lez v0, :cond_0

    .line 460
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj;->aFM:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 461
    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->aFM:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 463
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aFO:Lcom/kingroot/kinguser/ale;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ale;->notifyItemRangeInserted(II)V

    .line 465
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->Jf()V

    .line 466
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoj;->Jl()V

    .line 468
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v8

    .line 469
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 470
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFS:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFQ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFR:Landroid/widget/TextView;

    const v1, 0x7f0704d5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v8, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const-wide/16 v4, 0x0

    .line 475
    const-wide/16 v2, 0x0

    .line 476
    const/4 v1, 0x0

    .line 477
    const/4 v0, 0x0

    .line 478
    iget-object v6, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v6, v4

    move-wide v4, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 479
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 480
    iget-wide v10, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteSize:J

    add-long/2addr v6, v10

    .line 481
    iget-wide v10, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_2

    .line 482
    iget-wide v10, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteSize:J

    iget-wide v12, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    sub-long/2addr v10, v12

    add-long/2addr v4, v10

    .line 484
    :cond_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->Ii()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 485
    add-int/lit8 v1, v1, 0x1

    .line 487
    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->Ij()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 488
    add-int/lit8 v0, v2, 0x1

    :goto_1
    move v2, v0

    .line 490
    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 491
    :cond_4
    if-lez v1, :cond_8

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    const v1, 0x7f0704d3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sub-long/2addr v6, v4

    .line 494
    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 493
    invoke-virtual {v8, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    .line 497
    const v1, 0x7f0704d2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 498
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 497
    invoke-virtual {v8, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_5
    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aFP:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aoj;->aBX:Z

    if-eqz v0, :cond_7

    .line 507
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->JU()V

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aoj;->aBX:Z

    .line 515
    :cond_7
    :goto_3
    return-void

    .line 501
    :cond_8
    if-lez v2, :cond_6

    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFP:Landroid/widget/Button;

    const v1, 0x7f070484

    invoke-virtual {v8, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 511
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFS:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFQ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method public cF(Z)V
    .locals 0

    .prologue
    .line 853
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aoj;->aBX:Z

    .line 854
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 154
    const v1, 0x7f030033

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    const v0, 0x7f0f0098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/NestedScrollView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    invoke-static {v0}, Lcom/kingroot/kinguser/qk;->a(Landroid/widget/ScrollView;)Lcom/kingroot/kinguser/qf;

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/NestedScrollView;->i(Landroid/view/View;)V

    .line 160
    const v0, 0x7f0f00ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFP:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0f00fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFQ:Landroid/view/View;

    .line 164
    const v0, 0x7f0f00b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFR:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0f00b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFS:Landroid/widget/LinearLayout;

    .line 167
    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 168
    invoke-virtual {v2, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;->Y(Z)V

    .line 170
    const v0, 0x7f0f00fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFN:Landroid/support/v7/widget/RecyclerView;

    .line 171
    new-instance v0, Lcom/kingroot/kinguser/ale;

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj;->aFL:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj;->aFY:Lcom/kingroot/kinguser/ale$c;

    invoke-direct {v0, v3, v4}, Lcom/kingroot/kinguser/ale;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/ale$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFO:Lcom/kingroot/kinguser/ale;

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFN:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFN:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFN:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->aFO:Lcom/kingroot/kinguser/ale;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFN:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 177
    const v0, 0x7f0f00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->mEmptyView:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0e0028

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    const v0, 0x7f0f0278

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f07040f

    .line 181
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/aoj;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const v0, 0x7f0f00fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFU:Landroid/view/View;

    .line 186
    const v0, 0x7f0f00fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFV:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0f00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoh:Landroid/widget/LinearLayout;

    .line 192
    const v0, 0x7f0f00c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoi:Landroid/support/v7/widget/RecyclerView;

    .line 193
    new-instance v0, Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj;->aAY:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/alf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoj:Lcom/kingroot/kinguser/alf;

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoj:Lcom/kingroot/kinguser/alf;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->fe(I)V

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoj:Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aoi:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 201
    const v0, 0x7f0f00c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFT:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f0f00c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aok:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aFT:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070410

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->aok:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v0, 0x7f0f0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoj;->aiM:Landroid/widget/FrameLayout;

    .line 208
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->JV()V

    .line 210
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oI()V

    .line 263
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 286
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 287
    return-void

    .line 270
    :sswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070484

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->aFP:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18979

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 273
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->Jj()V

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18978

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 277
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->JU()V

    goto :goto_0

    .line 281
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070410

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x4c7bc5

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 283
    iput-boolean v3, p0, Lcom/kingroot/kinguser/aoj;->aFX:Z

    goto :goto_0

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00c1 -> :sswitch_1
        0x7f0f00ff -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 216
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aoj;->aFW:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->JV()V

    .line 219
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aoj;->aFW:Z

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aoj;->aFX:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoj;->Jb()V

    .line 225
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aoj;->aFX:Z

    .line 227
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 293
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 294
    return-void
.end method
