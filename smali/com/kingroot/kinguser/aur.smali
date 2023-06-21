.class public Lcom/kingroot/kinguser/aur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aui$a;


# instance fields
.field private aRT:Lcom/kingroot/kinguser/bed;

.field private aRX:Lcom/kingroot/kinguser/aui$b;

.field private aRY:Lcom/kingroot/kinguser/apx$a;

.field private aRZ:Z

.field private aRz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final aSa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqh;",
            ">;"
        }
    .end annotation
.end field

.field private aSb:Lcom/kingroot/kinguser/apx;

.field private aSc:Lcom/kingroot/kinguser/bed;

.field private aSd:Lcom/kingroot/kinguser/bed;

.field private final aSe:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aui$b;Landroid/app/Activity;Lcom/kingroot/kinguser/apx$a;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/aui$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aur;->aRZ:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aSa:Ljava/util/List;

    .line 220
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aur$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aur$3;-><init>(Lcom/kingroot/kinguser/aur;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aSc:Lcom/kingroot/kinguser/bed;

    .line 343
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aur$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aur$4;-><init>(Lcom/kingroot/kinguser/aur;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aSd:Lcom/kingroot/kinguser/bed;

    .line 352
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aur$5;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aur$5;-><init>(Lcom/kingroot/kinguser/aur;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aSe:Lcom/kingroot/kinguser/bed;

    .line 624
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aur$6;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aur$6;-><init>(Lcom/kingroot/kinguser/aur;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aRT:Lcom/kingroot/kinguser/bed;

    .line 97
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aui$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aRX:Lcom/kingroot/kinguser/aui$b;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aRz:Ljava/lang/ref/WeakReference;

    .line 99
    iput-object p3, p0, Lcom/kingroot/kinguser/aur;->aRY:Lcom/kingroot/kinguser/apx$a;

    .line 102
    new-instance v0, Lcom/kingroot/kinguser/apx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/apx;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    iget-object v1, p0, Lcom/kingroot/kinguser/aur;->aRY:Lcom/kingroot/kinguser/apx$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx$a;)V

    .line 104
    return-void
.end method

.method private QJ()Z
    .locals 4

    .prologue
    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 557
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->FA()J

    move-result-wide v2

    .line 559
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 560
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aur;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRz:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aur;Lcom/kingroot/kinguser/aqh;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aur;->d(Lcom/kingroot/kinguser/aqh;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aur;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aur;->bp(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aur;)Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSa:Ljava/util/List;

    return-object v0
.end method

.method private b(IZZ)V
    .locals 2

    .prologue
    .line 548
    if-eqz p2, :cond_0

    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRX:Lcom/kingroot/kinguser/aui$b;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/kingroot/kinguser/aui$b;->D(Ljava/lang/String;Z)V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRX:Lcom/kingroot/kinguser/aui$b;

    invoke-interface {v0, p3}, Lcom/kingroot/kinguser/aui$b;->cP(Z)V

    goto :goto_0
.end method

.method private b(Lcom/kingroot/kinguser/aqc;)V
    .locals 3

    .prologue
    .line 447
    if-nez p1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MA()Ljava/util/List;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 452
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/aqc;->a(Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqc;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aqc;->e(Lcom/kingroot/kinguser/aqc;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aur;Lcom/kingroot/kinguser/aqh;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aur;->c(Lcom/kingroot/kinguser/aqh;)V

    return-void
.end method

.method private bp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MA()Ljava/util/List;

    move-result-object v1

    .line 466
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 468
    iget v3, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-eqz v3, :cond_2

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 470
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 475
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/aqo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqo;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 477
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 481
    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->b(Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 483
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    invoke-static {v2}, Lcom/kingroot/kinguser/aqd;->ba(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/apx;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/aqh;)V
    .locals 1

    .prologue
    .line 428
    instance-of v0, p1, Lcom/kingroot/kinguser/aqi;

    if-eqz v0, :cond_0

    .line 429
    invoke-static {p1}, Lcom/kingroot/kinguser/axm;->b(Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    .line 430
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aur;->b(Lcom/kingroot/kinguser/aqc;)V

    .line 432
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/aui$b;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRX:Lcom/kingroot/kinguser/aui$b;

    return-object v0
.end method

.method private d(Lcom/kingroot/kinguser/aqh;)V
    .locals 4

    .prologue
    .line 435
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MA()Ljava/util/List;

    move-result-object v1

    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 438
    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aqb;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aqh;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 443
    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/aqd;->ba(Ljava/util/List;)V

    .line 444
    return-void
.end method

.method private gU(I)V
    .locals 4

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/kingroot/kinguser/aur;->QJ()Z

    move-result v0

    .line 533
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/aur;->b(IZZ)V

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bD(J)V

    .line 537
    :cond_0
    return-void
.end method

.method private gV(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 541
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aur;->aRZ:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/aur;->b(IZZ)V

    .line 542
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aur;->aRZ:Z

    if-nez v0, :cond_0

    .line 543
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aur;->aRZ:Z

    .line 545
    :cond_0
    return-void

    .line 541
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public LV()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apx;->LV()I

    move-result v0

    return v0
.end method

.method public LW()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apx;->LW()I

    move-result v0

    return v0
.end method

.method public LY()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apx;->LY()V

    .line 143
    return-void
.end method

.method public Mc()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apx;->Mc()Z

    move-result v0

    return v0
.end method

.method public Me()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apx;->Me()I

    move-result v0

    return v0
.end method

.method public PX()Z
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRT:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x0

    .line 575
    :goto_0
    return v0

    .line 574
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aur;->aRT:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 575
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public QH()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 242
    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Du()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    new-instance v2, Lcom/kingroot/kinguser/aiu;

    invoke-direct {v2}, Lcom/kingroot/kinguser/aiu;-><init>()V

    .line 245
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aiu;->yu()Ljava/util/List;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aiu;->gh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 252
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/aks;->bF(Z)V

    .line 254
    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public QI()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    return-void
.end method

.method public Qa()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/wo;->nz()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/wo;->nz()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/tw;->aU(I)V

    goto :goto_0
.end method

.method public Qb()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aur;->aSc:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 122
    return-void
.end method

.method public Qc()V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sx()V

    .line 218
    return-void
.end method

.method public Qd()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 262
    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 268
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aiv;->yz()Z

    move-result v3

    .line 271
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->Ck()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ij()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/aks;->gX(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/aks;->bF(J)V

    move v1, v2

    .line 281
    :cond_1
    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 283
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aeg;->a(Landroid/app/Activity;)V

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/aih;->xI()Lcom/kingroot/kinguser/aih;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aih;->aK(Z)V

    .line 289
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiv;->yD()V

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/ain;->xW()Lcom/kingroot/kinguser/ain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ain;->xX()V

    .line 294
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aur;->QH()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRX:Lcom/kingroot/kinguser/aui$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$b;->Qi()V

    .line 298
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aur;->aSd:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public Qe()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 304
    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/SecurityProtectActivity;->aL(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public Qf()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 313
    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1887d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 317
    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AdvancePermActivity;->aL(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public Qg()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aur;->aSe:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 324
    return-void
.end method

.method public Qh()V
    .locals 2

    .prologue
    .line 580
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/alr;->Hd()Lcom/kingroot/kinguser/alr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alr;->He()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_0

    .line 587
    iget-object v1, p0, Lcom/kingroot/kinguser/aur;->aRX:Lcom/kingroot/kinguser/aui$b;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aui$b;->n(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/aqb;)V
    .locals 2

    .prologue
    .line 232
    check-cast p1, Lcom/kingroot/kinguser/aqk;

    .line 233
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aqk;->KM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Optimi"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 596
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    packed-switch v0, :pswitch_data_0

    .line 620
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18963

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 621
    return-void

    .line 598
    :pswitch_0
    invoke-static {p2, p1}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lcom/kingroot/kinguser/webview/WebViewActivity;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :pswitch_2
    const-string v0, ""

    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->destCategoryId:I

    invoke-static {p2, v0, v1}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 610
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    new-instance v5, Lcom/kingroot/kinguser/mvp/presenter/MainPagePresenter$6;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/mvp/presenter/MainPagePresenter$6;-><init>(Lcom/kingroot/kinguser/aur;)V

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V

    .line 616
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/kingroot/kinguser/webview/WebViewActivity;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;JII)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/kingroot/kinguser/aur$1;

    invoke-direct {v0, p0, p4, p1, p5}, Lcom/kingroot/kinguser/aur$1;-><init>(Lcom/kingroot/kinguser/aur;ILjava/lang/String;I)V

    invoke-static {v0, p2, p3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 180
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/aqh;)V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/kingroot/kinguser/aur;->aSa:Ljava/util/List;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public g(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/kingroot/kinguser/aur$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/kingroot/kinguser/aur$2;-><init>(Lcom/kingroot/kinguser/aur;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public gL(I)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/apx;->bU(J)V

    .line 127
    return-void
.end method

.method public gM(I)V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aur;->QI()V

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aSb:Lcom/kingroot/kinguser/apx;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/apx;->bT(J)V

    .line 138
    return-void
.end method

.method public gN(I)V
    .locals 2

    .prologue
    .line 498
    packed-switch p1, :pswitch_data_0

    .line 525
    iget-object v0, p0, Lcom/kingroot/kinguser/aur;->aRX:Lcom/kingroot/kinguser/aui$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aui$b;->cP(Z)V

    .line 528
    :goto_0
    return-void

    .line 502
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188b7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 503
    const v0, 0x7f0702a1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aur;->gU(I)V

    goto :goto_0

    .line 508
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188b8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 509
    const v0, 0x7f07029f

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aur;->gU(I)V

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188b9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 515
    const v0, 0x7f0702a0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aur;->gV(I)V

    goto :goto_0

    .line 520
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ba

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 521
    const v0, 0x7f07029e

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aur;->gV(I)V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public start()V
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lcom/kingroot/kinguser/acp;->add(Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajv;->zF()V

    .line 151
    return-void
.end method
