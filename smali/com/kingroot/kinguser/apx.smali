.class public Lcom/kingroot/kinguser/apx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apx$a;
    }
.end annotation


# instance fields
.field private final aJV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqs;",
            ">;"
        }
    .end annotation
.end field

.field private final aJW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqh;",
            ">;"
        }
    .end annotation
.end field

.field private final aJX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqj;",
            ">;"
        }
    .end annotation
.end field

.field private aJY:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/apx$a;",
            ">;"
        }
    .end annotation
.end field

.field private aJZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aKa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aKb:I

.field private aKc:I

.field private final aKd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqh;",
            ">;"
        }
    .end annotation
.end field

.field private final aKe:Lcom/kingroot/kinguser/aqs$a;

.field private aKf:Lcom/kingroot/kinguser/bed;

.field private final aKg:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aJV:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aJW:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aJX:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aJZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aKa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    iput v1, p0, Lcom/kingroot/kinguser/apx;->aKb:I

    .line 115
    iput v1, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aKd:Ljava/util/List;

    .line 120
    new-instance v0, Lcom/kingroot/kinguser/apx$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/apx$1;-><init>(Lcom/kingroot/kinguser/apx;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aKe:Lcom/kingroot/kinguser/aqs$a;

    .line 249
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/apx$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/apx$2;-><init>(Lcom/kingroot/kinguser/apx;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aKf:Lcom/kingroot/kinguser/bed;

    .line 528
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/apx$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/apx$4;-><init>(Lcom/kingroot/kinguser/apx;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aKg:Lcom/kingroot/kinguser/bed;

    .line 181
    return-void
.end method

.method private LX()Lcom/kingroot/kinguser/apx$a;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJY:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apx$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private LZ()Lcom/kingroot/kinguser/aqj;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/high16 v4, -0x80000000

    .line 429
    new-instance v0, Lcom/kingroot/kinguser/apx$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/apx$3;-><init>(Lcom/kingroot/kinguser/apx;)V

    .line 445
    invoke-static {}, Lcom/kingroot/kinguser/avd;->Rq()Lcom/kingroot/kinguser/ave;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/ave;->Rk()Ljava/util/List;

    move-result-object v8

    .line 446
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 473
    :goto_0
    return-object v0

    .line 451
    :cond_0
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v2

    move v3, v4

    move v5, v6

    .line 455
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 457
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    iget v0, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    if-lt v0, v3, :cond_1

    if-ne v3, v4, :cond_2

    .line 458
    :cond_1
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    iget v3, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    move v5, v1

    .line 455
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 460
    :cond_2
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    iget v0, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    if-ne v0, v3, :cond_3

    move v5, v1

    .line 461
    goto :goto_2

    .line 466
    :cond_3
    if-eq v5, v6, :cond_4

    if-ne v3, v4, :cond_5

    :cond_4
    move-object v0, v7

    .line 467
    goto :goto_0

    .line 469
    :cond_5
    add-int/lit8 v0, v5, 0x1

    invoke-interface {v8, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 470
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    .line 473
    invoke-static {v0}, Lcom/kingroot/kinguser/aqj;->a(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Lcom/kingroot/kinguser/aqj;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apx;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/kingroot/kinguser/apx;->aKb:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/apx$a;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kingroot/kinguser/apx;->LX()Lcom/kingroot/kinguser/apx$a;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/kingroot/kinguser/apx;->LX()Lcom/kingroot/kinguser/apx$a;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_0

    .line 702
    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/apx$a;->b(ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    .line 704
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/apx;->a(ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apx;Lcom/kingroot/kinguser/apx$a;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx$a;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJW:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/apx;I)Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apx;->gj(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/apx$a;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 492
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/kingroot/kinguser/apx;->aKb:I

    .line 494
    if-eqz p1, :cond_0

    .line 495
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0700d8

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/apx$a;->ih(Ljava/lang/String;)V

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/apx;->aKd:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aKd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 502
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MI()Z

    move-result v4

    if-nez v4, :cond_2

    .line 503
    iget v4, p0, Lcom/kingroot/kinguser/apx;->aKb:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/kingroot/kinguser/apx;->aKb:I

    .line 505
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MK()I

    move-result v4

    add-int/2addr v1, v4

    .line 506
    iget-object v4, p0, Lcom/kingroot/kinguser/apx;->aKd:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_2
    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MI()Z

    move-result v4

    invoke-interface {p1, v0, v4}, Lcom/kingroot/kinguser/apx$a;->a(Lcom/kingroot/kinguser/aqh;Z)V

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 518
    :catch_0
    move-exception v0

    .line 521
    :cond_3
    :goto_1
    return-void

    .line 513
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    if-eqz p1, :cond_3

    .line 516
    :try_start_4
    invoke-interface {p1, v1}, Lcom/kingroot/kinguser/apx$a;->gk(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/apx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJV:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/aqj;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kingroot/kinguser/apx;->LZ()Lcom/kingroot/kinguser/aqj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/apx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJX:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/aqs$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aKe:Lcom/kingroot/kinguser/aqs$a;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/apx;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aKa:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private gj(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 708
    const/4 v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 709
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 710
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 711
    invoke-virtual {v2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    :cond_0
    return-object v0
.end method


# virtual methods
.method public LV()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/kingroot/kinguser/apx;->aKb:I

    return v0
.end method

.method public LW()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/kingroot/kinguser/apx;->aKa:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/apx;->aJV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 203
    instance-of v3, v0, Lcom/kingroot/kinguser/aqr;

    if-eqz v3, :cond_1

    .line 207
    check-cast v0, Lcom/kingroot/kinguser/aqr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqr;->MR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 208
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 210
    instance-of v5, v0, Lcom/kingroot/kinguser/are;

    if-nez v5, :cond_3

    .line 211
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ng()Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method public LY()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aKf:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 233
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->LY()V

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method public Ma()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 481
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->My()Z

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx$a;)V

    .line 484
    return-void
.end method

.method public Mb()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/apx;->aKd:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public Mc()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aKa:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public Md()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 601
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    .line 606
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v1

    move-object v3, v1

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 607
    instance-of v7, v0, Lcom/kingroot/kinguser/aqr;

    if-eqz v7, :cond_0

    .line 610
    check-cast v0, Lcom/kingroot/kinguser/aqr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqr;->MR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 611
    instance-of v8, v0, Lcom/kingroot/kinguser/aqv;

    if-eqz v8, :cond_1

    .line 612
    check-cast v0, Lcom/kingroot/kinguser/aqv;

    move-object v3, v0

    .line 613
    goto :goto_0

    .line 615
    :cond_1
    instance-of v8, v0, Lcom/kingroot/kinguser/aqu;

    if-eqz v8, :cond_2

    .line 616
    check-cast v0, Lcom/kingroot/kinguser/aqu;

    move-object v2, v0

    .line 617
    goto :goto_0

    .line 619
    :cond_2
    instance-of v8, v0, Lcom/kingroot/kinguser/aqt;

    if-eqz v8, :cond_12

    .line 620
    check-cast v0, Lcom/kingroot/kinguser/aqt;

    :goto_1
    move-object v1, v0

    .line 622
    goto :goto_0

    .line 626
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    if-eqz v3, :cond_4

    .line 629
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqv;->MV()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 631
    :cond_4
    if-eqz v2, :cond_5

    .line 632
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aqu;->MV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 634
    :cond_5
    iput v4, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    .line 635
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 636
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ng()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ne()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Nh()Z

    move-result v0

    if-nez v0, :cond_6

    .line 638
    iget v0, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    goto :goto_2

    .line 645
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v4

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 646
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MI()Z

    move-result v6

    if-nez v6, :cond_11

    .line 647
    instance-of v0, v0, Lcom/kingroot/kinguser/aqi;

    if-eqz v0, :cond_9

    .line 648
    iget v0, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    .line 656
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    if-eqz v0, :cond_a

    .line 657
    const v0, 0x7f070109

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    :goto_4
    return-object v0

    .line 652
    :cond_9
    add-int/lit8 v0, v2, 0x1

    :goto_5
    move v2, v0

    .line 654
    goto :goto_3

    .line 661
    :cond_a
    const-class v0, Lcom/kingroot/kinguser/aro;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_b

    instance-of v3, v0, Lcom/kingroot/kinguser/aro;

    if-eqz v3, :cond_b

    .line 663
    invoke-interface {v0}, Lcom/kingroot/kinguser/aqb;->My()Z

    move-result v0

    if-nez v0, :cond_b

    .line 664
    const v0, 0x7f07010d

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 670
    :cond_b
    if-eqz v2, :cond_c

    .line 671
    const v0, 0x7f090006

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v5, v0, v2, v1}, Lcom/kingroot/kinguser/zi;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 675
    :cond_c
    const-class v0, Lcom/kingroot/kinguser/arn;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_d

    instance-of v2, v0, Lcom/kingroot/kinguser/arn;

    if-eqz v2, :cond_d

    .line 677
    check-cast v0, Lcom/kingroot/kinguser/arn;

    .line 678
    invoke-virtual {v0}, Lcom/kingroot/kinguser/arn;->Nn()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_d

    .line 679
    const v1, 0x7f07010e

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arn;->Nn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 684
    :cond_d
    if-eqz v1, :cond_f

    .line 686
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqt;->MV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 687
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ng()Z

    move-result v0

    if-nez v0, :cond_10

    .line 688
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_7
    move v1, v0

    .line 690
    goto :goto_6

    .line 691
    :cond_e
    if-lez v1, :cond_f

    .line 692
    const v0, 0x7f070108

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 696
    :cond_f
    const v0, 0x7f07010a

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_10
    move v0, v1

    goto :goto_7

    :cond_11
    move v0, v2

    goto/16 :goto_5

    :cond_12
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public Me()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/kingroot/kinguser/apx;->aKc:I

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/apx$a;)V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apx;->aJY:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method

.method public bT(J)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/apx;->aJZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apx;->aKf:Lcom/kingroot/kinguser/bed;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bU(J)V
    .locals 5

    .prologue
    .line 525
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apx;->aKg:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 526
    return-void
.end method
