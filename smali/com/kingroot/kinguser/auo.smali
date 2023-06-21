.class public Lcom/kingroot/kinguser/auo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/auo$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aRD:Lcom/kingroot/kinguser/auf$b;

.field private final aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private aRF:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketMaiPresenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/auo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/auf$b;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/auo;->aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auo;->aRF:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/auo;->aRD:Lcom/kingroot/kinguser/auf$b;

    .line 73
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/auo;->aRD:Lcom/kingroot/kinguser/auf$b;

    return-object v0
.end method

.method private a(IILjava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Lcom/kingroot/kinguser/auo$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;",
            "Lcom/kingroot/kinguser/auo$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v8

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    new-instance v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move v4, p1

    move-object v5, p3

    move v6, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;-><init>(Lcom/kingroot/kinguser/auo;Ljava/util/List;IILjava/util/concurrent/atomic/AtomicInteger;ILcom/kingroot/kinguser/auo$a;)V

    invoke-interface {v8, p1, p2, v9, v0}, Lcom/kingroot/kinguser/ams;->b(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 292
    return-void
.end method

.method private a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;)V
    .locals 6

    .prologue
    .line 370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/List;)V

    .line 371
    return-void
.end method

.method private a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lcom/kingroot/kinguser/auo$a;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/auo;->aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v8

    const/16 v9, 0x1e

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    new-instance v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    move-object v1, p0

    move-object/from16 v2, p5

    move v3, p2

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;-><init>(Lcom/kingroot/kinguser/auo;Ljava/util/List;IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v8, p2, v9, v10, v0}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 415
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/auo;IILjava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Lcom/kingroot/kinguser/auo$a;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Lcom/kingroot/kinguser/auo$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/auo;IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicInteger;ZZ)V
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x1

    const v1, 0x4c7bbb

    new-instance v2, Lcom/kingroot/kinguser/auo$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/kingroot/kinguser/auo$1;-><init>(Lcom/kingroot/kinguser/auo;ZZ)V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;)V

    .line 146
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/auo;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/auo;->aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public PK()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 107
    iget-object v1, p0, Lcom/kingroot/kinguser/auo;->aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    const v2, 0x4c7bb2

    new-instance v3, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;-><init>(Lcom/kingroot/kinguser/auo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/ams;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 120
    return-void
.end method

.method public PL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/auo;->aRF:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v1, v1}, Lcom/kingroot/kinguser/auo;->a(Ljava/util/concurrent/atomic/AtomicInteger;ZZ)V

    .line 136
    return-void
.end method

.method public PM()V
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x1

    const v1, 0x4c7bb3

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Lcom/kingroot/kinguser/auo$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auo$2;-><init>(Lcom/kingroot/kinguser/auo;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;)V

    .line 157
    return-void
.end method

.method public PN()V
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x1

    const v1, 0x4c7bb4

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Lcom/kingroot/kinguser/auo$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auo$3;-><init>(Lcom/kingroot/kinguser/auo;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;)V

    .line 168
    return-void
.end method

.method public PO()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 172
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 173
    iget-object v1, p0, Lcom/kingroot/kinguser/auo;->aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    const v1, 0x4c7bc0

    const/16 v2, 0x14

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v6, Lcom/kingroot/kinguser/auo$4;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/auo$4;-><init>(Lcom/kingroot/kinguser/auo;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Lcom/kingroot/kinguser/auo$a;)V

    .line 183
    return-void
.end method

.method public PP()V
    .locals 14

    .prologue
    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v7

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 189
    invoke-virtual {v7}, Lcom/kingroot/kinguser/akl;->Bx()J

    move-result-wide v0

    .line 190
    invoke-virtual {v7}, Lcom/kingroot/kinguser/akl;->By()I

    move-result v10

    .line 192
    const-wide/32 v4, 0x19bfcc00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-lt v10, v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/auo;->aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v11, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v12, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v13, 0x0

    new-instance v4, Lcom/kingroot/kinguser/auo$5;

    move-object v5, p0

    move-wide v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/kingroot/kinguser/auo$5;-><init>(Lcom/kingroot/kinguser/auo;Ljava/util/concurrent/CountDownLatch;Lcom/kingroot/kinguser/akl;JI)V

    invoke-direct {v1, v11, v12, v13, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public PQ()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 239
    iget-object v1, p0, Lcom/kingroot/kinguser/auo;->aRE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;-><init>(Lcom/kingroot/kinguser/auo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/amu;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V

    .line 265
    return-void
.end method

.method public PR()V
    .locals 6

    .prologue
    .line 296
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/auo$6;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/auo$6;-><init>(Lcom/kingroot/kinguser/auo;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 337
    return-void
.end method

.method public PS()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/auo;->aRF:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/auo;->aRF:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v2, v2}, Lcom/kingroot/kinguser/auo;->a(Ljava/util/concurrent/atomic/AtomicInteger;ZZ)V

    .line 343
    return-void
.end method

.method public PT()V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/kingroot/kinguser/amb;->Ib()Lcom/kingroot/kinguser/amb;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$10;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$10;-><init>(Lcom/kingroot/kinguser/auo;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/amb;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V

    .line 359
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public h(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 92
    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07041f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x4c7bb4

    .line 92
    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public i(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 99
    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070421

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x4c7bb3

    .line 99
    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 124
    invoke-static {p1}, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;->aK(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
