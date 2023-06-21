.class public Lcom/kingroot/kinguser/axm;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apx$a;
.implements Lcom/kingroot/kinguser/aqa$a;
.implements Lcom/kingroot/kinguser/aui$b;
.implements Lcom/kingroot/kinguser/yg;


# static fields
.field public static final aZB:[I

.field public static final aZC:[F

.field public static final aZD:[F

.field public static final aZE:[F


# instance fields
.field private RG:I

.field private aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

.field private aEG:Lcom/kingroot/kinguser/anx$a;

.field private aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

.field private aYE:Lcom/kingroot/kinguser/aqa;

.field private aYd:Lcom/kingroot/kinguser/xx;

.field public volatile aZF:Z

.field private aZG:Lcom/kingroot/kinguser/asd;

.field private aZH:Lcom/kingroot/kinguser/bet;

.field private aZI:Lcom/kingroot/kinguser/bhw;

.field private aZJ:Lcom/kingroot/kinguser/bic;

.field private aZK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aZL:Lcom/kingroot/kinguser/aui$a;

.field private aZM:Lcom/kingroot/kinguser/wq;

.field private aZN:Landroid/view/View;

.field private aZO:Landroid/view/View;

.field private aZP:Landroid/widget/Button;

.field private aZQ:Landroid/widget/TextView;

.field private aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

.field private aZS:Lcom/kingroot/kinguser/apy;

.field private aZT:Landroid/support/v7/widget/RecyclerView;

.field private aZU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aZV:Ljava/util/concurrent/CountDownLatch;

.field private aZW:Landroid/widget/TextView;

.field private aZX:Landroid/view/ViewGroup;

.field private aZY:I

.field private aZZ:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field private aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

.field private baa:Landroid/widget/ImageView;

.field private bab:Landroid/widget/ImageView;

.field private final bac:Lcom/android/animation/AnimatorListenerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 128
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/axm;->aZB:[I

    .line 132
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kingroot/kinguser/axm;->aZC:[F

    .line 134
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/kingroot/kinguser/axm;->aZD:[F

    .line 136
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/kingroot/kinguser/axm;->aZE:[F

    return-void

    .line 128
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 132
    :array_1
    .array-data 4
        0x3ee147ae    # 0.44f
        0x3da3d70a    # 0.08f
        0x3ef5c28f    # 0.48f
    .end array-data

    .line 134
    :array_2
    .array-data 4
        0x3ee147ae    # 0.44f
        0x3e3851ec    # 0.18f
        0x3ec28f5c    # 0.38f
    .end array-data

    .line 136
    :array_3
    .array-data 4
        0x3f1eb852    # 0.62f
        0x0
        0x3ec28f5c    # 0.38f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 151
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axm;->aZF:Z

    .line 153
    new-instance v0, Lcom/kingroot/kinguser/asd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asd;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZV:Ljava/util/concurrent/CountDownLatch;

    .line 1109
    new-instance v0, Lcom/kingroot/kinguser/axm$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$8;-><init>(Lcom/kingroot/kinguser/axm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->bac:Lcom/android/animation/AnimatorListenerAdapter;

    .line 1495
    new-instance v0, Lcom/kingroot/kinguser/page/MainPage$27;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/MainPage$27;-><init>(Lcom/kingroot/kinguser/axm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    .line 1538
    new-instance v0, Lcom/kingroot/kinguser/axm$20;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$20;-><init>(Lcom/kingroot/kinguser/axm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aEG:Lcom/kingroot/kinguser/anx$a;

    .line 196
    return-void
.end method

.method static synthetic A(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->Vh:Lcom/kingroot/kinguser/yp;

    return-object v0
.end method

.method static synthetic B(Lcom/kingroot/kinguser/axm;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->bab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic C(Lcom/kingroot/kinguser/axm;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/kingroot/kinguser/axm;->aZY:I

    return v0
.end method

.method public static synthetic D(Lcom/kingroot/kinguser/axm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private Qs()V
    .locals 10

    .prologue
    .line 1431
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FE()Z

    move-result v1

    .line 1433
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FD()Z

    move-result v2

    .line 1434
    invoke-static {}, Lcom/kingroot/kinguser/bgt;->abX()Z

    move-result v3

    .line 1437
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1438
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 1439
    new-instance v2, Lcom/kingroot/kinguser/bii;

    iget-object v3, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bii;-><init>(Landroid/content/Context;)V

    .line 1440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1441
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->FG()J

    move-result-wide v6

    .line 1442
    sub-long v6, v4, v6

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    .line 1445
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/aks;->bE(J)V

    .line 1446
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bii;->show()V

    .line 1447
    const v3, 0x7f070247

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->lN(Ljava/lang/String;)V

    .line 1448
    const v3, 0x7f070246

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->lM(Ljava/lang/String;)V

    .line 1449
    new-instance v1, Lcom/kingroot/kinguser/axm$18;

    invoke-direct {v1, p0, v2, v0}, Lcom/kingroot/kinguser/axm$18;-><init>(Lcom/kingroot/kinguser/axm;Lcom/kingroot/kinguser/bii;Lcom/kingroot/kinguser/aks;)V

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->n(Landroid/view/View$OnClickListener;)V

    .line 1460
    :cond_0
    return-void
.end method

.method private Uo()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->Mn()V

    .line 452
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    sget-object v1, Lcom/kingroot/kinguser/axm;->aZB:[I

    sget-object v2, Lcom/kingroot/kinguser/axm;->aZE:[F

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/wq;->a([I[F)V

    .line 454
    :cond_0
    return-void
.end method

.method private Up()V
    .locals 7

    .prologue
    const v2, 0x187d4

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 457
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/kingroot/kinguser/bfi;->ai(II)V

    .line 459
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asd;->NK()Lcom/kingroot/kinguser/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asc;->NJ()I

    move-result v0

    .line 460
    if-ne v5, v0, :cond_1

    .line 462
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 466
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aho;->aO(Landroid/content/Context;)V

    .line 467
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aks;->bS(Z)V

    .line 470
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 472
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eg()V

    .line 473
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bj(J)V

    .line 474
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fx()V

    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5, v1}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    sget-object v1, Lcom/kingroot/kinguser/axm;->aZB:[I

    sget-object v2, Lcom/kingroot/kinguser/axm;->aZC:[F

    invoke-virtual {v0, v1, v2, v4}, Lcom/kingroot/kinguser/wq;->a([I[FZ)V

    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f07010c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/axm;->dw(Z)V

    .line 490
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    const/16 v1, 0x320

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aui$a;->gL(I)V

    .line 492
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->gD()V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const/4 v1, 0x4

    if-eq v1, v0, :cond_2

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 495
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 496
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-static {}, Lcom/kingroot/kinguser/aqe;->MD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    .line 497
    invoke-virtual {v2}, Lcom/kingroot/kinguser/apy;->Mm()I

    move-result v2

    const/16 v3, 0x3fc

    .line 496
    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aui$a;->g(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private Uq()V
    .locals 8

    .prologue
    const v7, 0x7f0f0205

    const v6, 0x7f0f0204

    const v5, 0x7f0f0075

    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZO:Landroid/view/View;

    const v1, 0x7f0f01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070209

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    const v1, 0x7f0f01f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 505
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    const v1, 0x7f0f01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 506
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v4

    .line 508
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v1, 0x7f070207

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 509
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    const v1, 0x7f070208

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 510
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070205

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZW:Landroid/widget/TextView;

    .line 512
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZW:Landroid/widget/TextView;

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 514
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    new-instance v0, Lcom/kingroot/kinguser/axm$27;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$27;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    new-instance v0, Lcom/kingroot/kinguser/axm$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$2;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    invoke-static {v0}, Lcom/kingroot/kinguser/ws;->g(Landroid/view/View;)V

    .line 538
    return-void

    .line 508
    :cond_0
    const v1, 0x7f070357

    goto :goto_0

    .line 509
    :cond_1
    const v1, 0x7f070358

    goto :goto_1
.end method

.method private Ur()V
    .locals 6

    .prologue
    .line 605
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axm$3;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/axm$3;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method private Us()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 843
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 845
    return-void
.end method

.method private Ut()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 883
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asd;->NK()Lcom/kingroot/kinguser/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asc;->NJ()I

    move-result v0

    .line 884
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qg()V

    .line 893
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asd;->NK()Lcom/kingroot/kinguser/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asc;->NJ()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 895
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 897
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    sget-object v1, Lcom/kingroot/kinguser/axm;->aZB:[I

    sget-object v2, Lcom/kingroot/kinguser/axm;->aZD:[F

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/wq;->a([I[F)V

    .line 898
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 900
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axm;->dw(Z)V

    .line 904
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPanelState()Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_4

    .line 905
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/axm;->hz(I)V

    .line 907
    :cond_4
    return-void

    .line 888
    :cond_5
    if-nez v0, :cond_1

    .line 890
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axm;->gM(I)V

    goto :goto_0
.end method

.method private Uu()V
    .locals 9

    .prologue
    const v8, 0x7f0e00f1

    const v7, 0x7f0202d2

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 950
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asd;->NK()Lcom/kingroot/kinguser/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asc;->NJ()I

    move-result v0

    .line 954
    if-ne v0, v4, :cond_4

    .line 955
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/aqe;->MD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 964
    if-ne v0, v4, :cond_5

    .line 965
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700f5

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 972
    :cond_1
    :goto_1
    if-eq v0, v4, :cond_2

    if-ne v0, v5, :cond_3

    .line 975
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Me()I

    move-result v0

    if-lez v0, :cond_7

    .line 976
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0e00f2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 977
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0202d3

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 984
    :cond_3
    :goto_2
    return-void

    .line 956
    :cond_4
    if-ne v0, v6, :cond_0

    .line 957
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f07010b

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 966
    :cond_5
    if-ne v0, v6, :cond_6

    .line 967
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700f4

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 968
    :cond_6
    if-ne v0, v5, :cond_1

    .line 969
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    const-wide/32 v2, 0x7f0700f7

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 979
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 980
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private Uv()V
    .locals 6

    .prologue
    .line 1182
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axm$10;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/axm$10;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1213
    return-void
.end method

.method private Uw()V
    .locals 3

    .prologue
    .line 1216
    new-instance v0, Lcom/kingroot/kinguser/bic;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    .line 1217
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    .line 1220
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/axm$11;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$11;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->a(Lcom/kingroot/kinguser/bic$a;)V

    .line 1227
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->setTitleText(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/axm$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$13;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->b(Lcom/kingroot/kinguser/bic$a;)V

    .line 1239
    :cond_0
    return-void
.end method

.method private Ux()V
    .locals 6

    .prologue
    .line 1464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1466
    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x493e0

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bbu;->hS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18920

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1476
    new-instance v0, Lcom/kingroot/kinguser/big;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    .line 1477
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 1478
    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->show()V

    .line 1479
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/big;->setCanceledOnTouchOutside(Z)V

    .line 1480
    const v2, 0x7f0704ae

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/big;->setTitleText(Ljava/lang/String;)V

    .line 1481
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/big;->iX(I)V

    .line 1482
    const v2, 0x7f0704ad

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lL(Ljava/lang/String;)V

    .line 1484
    new-instance v1, Lcom/kingroot/kinguser/axm$19;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$19;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 1492
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->co(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axm;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/kingroot/kinguser/axm;->RG:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/common/uilib/MainExpCircleView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axm;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axm;->d(Lcom/android/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axm;Z)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axm;->dw(Z)V

    return-void
.end method

.method public static b(Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    instance-of v0, p0, Lcom/kingroot/kinguser/aqh;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    move-object v6, p0

    .line 205
    check-cast v6, Lcom/kingroot/kinguser/aqh;

    .line 208
    const-string v2, ""

    .line 209
    const/4 v5, 0x0

    .line 210
    instance-of v0, v6, Lcom/kingroot/kinguser/aqi;

    if-nez v0, :cond_1

    .line 211
    const/4 v5, 0x1

    .line 213
    :cond_1
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aqh;->MK()I

    move-result v0

    .line 214
    if-lez v0, :cond_2

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_2
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aqh;->ME()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aqh;->MF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/kingroot/kinguser/aqb;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;Z)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    .line 221
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aqh;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Uo()V

    return-void
.end method

.method private c(Lcom/kingroot/kinguser/aqb;)J
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    const-wide/16 v0, 0x0

    .line 1311
    :goto_0
    return-wide v0

    .line 1295
    :cond_0
    instance-of v0, p1, Lcom/kingroot/kinguser/aqy;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 1296
    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 1299
    instance-of v1, p1, Lcom/kingroot/kinguser/ard;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/kingroot/kinguser/arg;

    if-eqz v1, :cond_2

    .line 1301
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ng()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1302
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 1307
    :cond_2
    const-wide/16 v0, 0x190

    goto :goto_0

    .line 1311
    :cond_3
    const-wide/16 v0, 0x12c

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axm;)Landroid/view/View;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    return-object v0
.end method

.method private d(Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 5

    .prologue
    .line 408
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/kingroot/kinguser/axm;->aZY:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 410
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 411
    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->Up:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 412
    new-instance v1, Lcom/kingroot/kinguser/axm$26;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axm$26;-><init>(Lcom/kingroot/kinguser/axm;Lcom/android/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 446
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 447
    return-void
.end method

.method private dw(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPanelState()Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget v1, p0, Lcom/kingroot/kinguser/axm;->RG:I

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 915
    iget v0, p0, Lcom/kingroot/kinguser/axm;->RG:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axm;->hy(I)V

    .line 916
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    iget v1, p0, Lcom/kingroot/kinguser/axm;->RG:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setHeaderHeight(I)V

    .line 930
    :goto_0
    return-void

    .line 920
    :cond_0
    if-eqz p1, :cond_1

    .line 921
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Z)V

    .line 922
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget v1, p0, Lcom/kingroot/kinguser/axm;->RG:I

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 923
    iget v0, p0, Lcom/kingroot/kinguser/axm;->RG:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axm;->hy(I)V

    .line 924
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    iget v1, p0, Lcom/kingroot/kinguser/axm;->RG:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setHeaderHeight(I)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Z)V

    .line 928
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/axm;->hy(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Up()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axm;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZZ:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/axm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hy(I)V
    .locals 4

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 936
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 937
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 934
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 939
    return-void
.end method

.method private hz(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZH:Lcom/kingroot/kinguser/bet;

    const v1, 0x7f0e0014

    invoke-static {p1, v1}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bet;->hz(I)V

    .line 1274
    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/axm;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/axm;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZV:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/asd;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    return-object v0
.end method

.method public static synthetic n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZH:Lcom/kingroot/kinguser/bet;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/axm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/axm;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/apy;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Us()V

    return-void
.end method

.method static synthetic t(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/wq;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/axm;)Landroid/view/View;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZO:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/kingroot/kinguser/axm;)Lcom/android/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->bac:Lcom/android/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method private vd()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZI:Lcom/kingroot/kinguser/bhw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZI:Lcom/kingroot/kinguser/bhw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZI:Lcom/kingroot/kinguser/bhw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhw;->dismiss()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZJ:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->dismiss()V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZH:Lcom/kingroot/kinguser/bet;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->vd()V

    .line 551
    return-void
.end method

.method static synthetic w(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Ux()V

    return-void
.end method

.method static synthetic x(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/anx$a;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aEG:Lcom/kingroot/kinguser/anx$a;

    return-object v0
.end method

.method static synthetic y(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Uw()V

    return-void
.end method

.method static synthetic z(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->Vh:Lcom/kingroot/kinguser/yp;

    return-object v0
.end method


# virtual methods
.method public D(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/axm$16;-><init>(Lcom/kingroot/kinguser/axm;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1354
    return-void
.end method

.method public Mf()V
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Lcom/kingroot/kinguser/axm$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$6;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1056
    return-void
.end method

.method public Mg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1068
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->LV()I

    move-result v0

    .line 1070
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/apy;->Mm()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1072
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/aui$a;->gL(I)V

    .line 1078
    :goto_0
    new-instance v0, Lcom/kingroot/kinguser/axm$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$7;-><init>(Lcom/kingroot/kinguser/axm;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 1105
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187d3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1107
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asd;->gs(I)Z

    .line 1075
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Us()V

    goto :goto_0
.end method

.method public Mh()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asd;->gs(I)Z

    .line 1122
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Us()V

    .line 1123
    return-void
.end method

.method public Mi()V
    .locals 0

    .prologue
    .line 1128
    return-void
.end method

.method public Mx()V
    .locals 8

    .prologue
    .line 988
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->Mk()V

    .line 989
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axm;->gO(I)V

    .line 990
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->LV()I

    move-result v0

    .line 991
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aqe;->MD()Ljava/lang/String;

    move-result-object v1

    .line 999
    iget-object v2, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/apy;->Ml()J

    move-result-wide v2

    .line 1000
    iget-object v4, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aqa;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v4

    .line 1001
    int-to-long v6, v0

    mul-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1003
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    iget-object v4, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    .line 1005
    invoke-virtual {v4}, Lcom/kingroot/kinguser/apy;->Mm()I

    move-result v4

    const/16 v5, 0x3fc

    .line 1003
    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/aui$a;->a(Ljava/lang/String;JII)V

    goto :goto_0

    .line 1001
    :cond_1
    int-to-long v2, v0

    mul-long/2addr v2, v4

    goto :goto_1
.end method

.method public Qi()V
    .locals 2

    .prologue
    .line 1245
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1878a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1247
    new-instance v0, Lcom/kingroot/kinguser/bhw;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZI:Lcom/kingroot/kinguser/bhw;

    .line 1249
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZI:Lcom/kingroot/kinguser/bhw;

    new-instance v1, Lcom/kingroot/kinguser/axm$14;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$14;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhw;->a(Lcom/kingroot/kinguser/bhw$a;)V

    .line 1261
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZI:Lcom/kingroot/kinguser/bhw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhw;->show()V

    .line 1262
    return-void
.end method

.method public Un()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asd;->NK()Lcom/kingroot/kinguser/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asc;->NJ()I

    move-result v0

    return v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 669
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 670
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Uu()V

    .line 686
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 687
    :cond_1
    return-void

    .line 671
    :cond_2
    const/4 v0, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 672
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->LY()V

    goto :goto_0

    .line 673
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 674
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Uv()V

    goto :goto_0

    .line 675
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 676
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/aqh;Z)V
    .locals 1

    .prologue
    .line 1060
    if-nez p2, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/aui$a;->b(Lcom/kingroot/kinguser/aqh;)V

    .line 1064
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aui$a;)V
    .locals 1

    .prologue
    .line 1168
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aui$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    .line 1169
    return-void
.end method

.method public b(ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 703
    packed-switch p1, :pswitch_data_0

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 705
    :pswitch_0
    instance-of v0, p2, Lcom/kingroot/kinguser/aqs;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 709
    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 710
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MT()Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-interface {p2}, Lcom/kingroot/kinguser/aqb;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-static {v1, v3, v3, v2, p2}, Lcom/kingroot/kinguser/aqc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v1

    .line 712
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    const/4 v2, 0x6

    .line 714
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/aqb;)J

    move-result-wide v4

    .line 713
    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;J)V

    goto :goto_0

    .line 718
    :pswitch_1
    instance-of v0, p2, Lcom/kingroot/kinguser/aqs;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 721
    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 722
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->ME()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MF()Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MU()Ljava/lang/String;

    move-result-object v3

    .line 725
    invoke-interface {p2}, Lcom/kingroot/kinguser/aqb;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-static {v1, v2, v3, v4, p2}, Lcom/kingroot/kinguser/aqc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v3

    .line 727
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    const/4 v2, 0x7

    .line 728
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/aqb;)J

    move-result-wide v4

    .line 729
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MW()I

    move-result v6

    .line 727
    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;JI)V

    goto :goto_0

    .line 733
    :pswitch_2
    instance-of v0, p2, Lcom/kingroot/kinguser/aqs;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 737
    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 738
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MT()Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-interface {p2}, Lcom/kingroot/kinguser/aqb;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 738
    invoke-static {v1, v3, v3, v2, p2}, Lcom/kingroot/kinguser/aqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v1

    .line 740
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    .line 741
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    const/4 v2, 0x1

    .line 742
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/aqb;)J

    move-result-wide v4

    .line 741
    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;J)V

    goto :goto_0

    .line 746
    :pswitch_3
    instance-of v0, p2, Lcom/kingroot/kinguser/aqs;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 750
    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 751
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->ME()Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MF()Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MU()Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-interface {p2}, Lcom/kingroot/kinguser/aqb;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 751
    invoke-static {v1, v2, v3, v4, p2}, Lcom/kingroot/kinguser/aqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v3

    .line 756
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    const/4 v2, 0x2

    .line 757
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/aqb;)J

    move-result-wide v4

    .line 758
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MW()I

    move-result v6

    .line 756
    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;JI)V

    goto/16 :goto_0

    .line 762
    :pswitch_4
    instance-of v0, p2, Lcom/kingroot/kinguser/aqy;

    if-eqz v0, :cond_0

    .line 765
    if-eqz p3, :cond_0

    move-object v3, p2

    .line 768
    check-cast v3, Lcom/kingroot/kinguser/aqy;

    .line 770
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->ME()Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->MU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->Ni()Ljava/lang/String;

    move-result-object v4

    move-object v3, p2

    .line 770
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;Ljava/lang/String;I)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    .line 774
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/aqb;)J

    move-result-wide v2

    .line 773
    invoke-virtual {v1, v5, v0, v2, v3}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;J)V

    goto/16 :goto_0

    .line 778
    :pswitch_5
    instance-of v0, p2, Lcom/kingroot/kinguser/aqy;

    if-eqz v0, :cond_0

    move-object v3, p2

    .line 782
    check-cast v3, Lcom/kingroot/kinguser/aqy;

    .line 784
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->ME()Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->MU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aqy;->Ni()Ljava/lang/String;

    move-result-object v4

    move-object v3, p2

    move v5, v6

    .line 784
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;Ljava/lang/String;I)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v1, v6, v0}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;)V

    goto/16 :goto_0

    .line 792
    :pswitch_6
    invoke-static {p2}, Lcom/kingroot/kinguser/axm;->b(Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_0

    .line 796
    instance-of v1, p2, Lcom/kingroot/kinguser/aqk;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v1, p2}, Lcom/kingroot/kinguser/aui$a;->a(Lcom/kingroot/kinguser/aqb;)V

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    const/4 v2, 0x5

    .line 801
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/aqb;)J

    move-result-wide v4

    .line 800
    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;J)V

    goto/16 :goto_0

    .line 805
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqa;->Mt()V

    goto/16 :goto_0

    .line 810
    :pswitch_8
    instance-of v0, p2, Lcom/kingroot/kinguser/aqj;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 811
    check-cast v0, Lcom/kingroot/kinguser/aqj;

    .line 813
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqj;->ME()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqj;->MF()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqj;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-static {v1, v2, v3, v0}, Lcom/kingroot/kinguser/aqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqj;)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_0

    .line 821
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    const/16 v2, 0x8

    .line 822
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/axm;->c(Lcom/kingroot/kinguser/aqb;)J

    move-result-wide v4

    .line 821
    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;J)V

    goto/16 :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public b(Landroid/view/View;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V
    .locals 3

    .prologue
    .line 1278
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    sget-object v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmM:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setToolBoxState(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;)V

    .line 1280
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1889f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    sget-object v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setToolBoxState(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;)V

    goto :goto_0

    .line 1283
    :cond_2
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p3, v0, :cond_0

    .line 1285
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bfi;->ai(II)V

    goto :goto_0
.end method

.method public bY(J)V
    .locals 3

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$9;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1179
    return-void
.end method

.method public c(ILcom/kingroot/kinguser/aqc;)V
    .locals 2

    .prologue
    .line 1028
    iget v0, p2, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1030
    iget-object v0, p2, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqs;

    if-nez v0, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p2, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 1035
    new-instance v1, Lcom/kingroot/kinguser/axm$5;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/axm$5;-><init>(Lcom/kingroot/kinguser/axm;Lcom/kingroot/kinguser/aqs;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c(Lcom/kingroot/kinguser/aqc;)V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method public cP(Z)V
    .locals 2

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$15;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axm$15;-><init>(Lcom/kingroot/kinguser/axm;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1344
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/aqc;)V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/aqs;)V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apy;->a(Lcom/kingroot/kinguser/aqs;)V

    .line 1138
    return-void
.end method

.method public gM(I)V
    .locals 4

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Uo()V

    .line 944
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/aui$a;->gM(I)V

    .line 945
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->gD()V

    .line 946
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 947
    return-void
.end method

.method public gO(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1011
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->LW()I

    move-result v0

    .line 1012
    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v1}, Lcom/kingroot/kinguser/aui$a;->LV()I

    move-result v1

    .line 1014
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Mc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1017
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/aui$a;->gL(I)V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asd;->gs(I)Z

    .line 1023
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Us()V

    .line 1024
    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/asd;->gs(I)Z

    goto :goto_0
.end method

.method public gP(I)V
    .locals 7

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/apy;->Mm()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apy;->gl(I)V

    .line 1318
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Us()V

    .line 1320
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axm;->aZF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->Mm()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1321
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FH()I

    move-result v0

    .line 1323
    add-int/lit8 v6, v0, 0x1

    .line 1325
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aks;->eM(I)V

    .line 1326
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FG()J

    move-result-wide v0

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1329
    const-wide/32 v4, 0xf731400

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-lt v6, v0, :cond_0

    .line 1331
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Qs()V

    .line 1334
    :cond_0
    return-void
.end method

.method public gk(I)V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apy;->gm(I)V

    .line 1153
    return-void
.end method

.method public gn(I)V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apy;->gm(I)V

    .line 1148
    return-void
.end method

.method public h(Lcom/kingroot/kinguser/aqs;)V
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apy;->b(Lcom/kingroot/kinguser/aqs;)V

    .line 1143
    return-void
.end method

.method public ih(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/axm;->jk(Ljava/lang/String;)V

    .line 1133
    return-void
.end method

.method public ii(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1158
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/axm;->jk(Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method public jk(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1164
    return-void
.end method

.method public n(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 3

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/kingroot/kinguser/axm;->aZZ:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 1361
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/axm$17;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/axm$17;-><init>(Lcom/kingroot/kinguser/axm;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 1401
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 5

    .prologue
    .line 262
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/apy;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/apy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    .line 263
    new-instance v0, Lcom/kingroot/kinguser/wq;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZS:Lcom/kingroot/kinguser/apy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->Mj()Lcom/kingroot/common/uilib/MainExpCircleView;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    .line 265
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    .line 267
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/axm;->aZY:I

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/kingroot/kinguser/axm;->aZY:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpCircleView;->addView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    const v1, 0x7f0f00cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->baa:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    const v1, 0x7f0f00ce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->bab:Landroid/widget/ImageView;

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/wq;->b(Landroid/view/View;IF)Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    const v1, 0x7f030095

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/wq;->a(IIF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZO:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    const v1, 0x7f030096

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/wq;->a(IIF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    sget-object v1, Lcom/kingroot/kinguser/axm;->aZB:[I

    sget-object v2, Lcom/kingroot/kinguser/axm;->aZD:[F

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/wq;->a([I[F)V

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$1;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$12;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$12;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZO:Landroid/view/View;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZQ:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZO:Landroid/view/View;

    const v1, 0x7f0f01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZP:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/axm$21;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$21;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$22;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$22;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 347
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Uq()V

    .line 349
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f01f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ws;->g(Landroid/view/View;)V

    .line 351
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f02e9

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    .line 353
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0, p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;)V

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setSlidingUpPanelLayout(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V

    .line 356
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bfl;->a(Landroid/os/Handler;ILandroid/view/View;)V

    .line 359
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZT:Landroid/support/v7/widget/RecyclerView;

    .line 363
    new-instance v0, Lcom/kingroot/kinguser/aqa;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aZT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/kingroot/kinguser/apz$b;->aKv:Lcom/kingroot/kinguser/apz$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/aqa;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;ZLcom/kingroot/kinguser/apz$b;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    .line 364
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/aqa;->a(Lcom/kingroot/kinguser/aqa$a;)V

    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aYE:Lcom/kingroot/kinguser/aqa;

    new-instance v1, Lcom/kingroot/kinguser/axm$23;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$23;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aqa;->a(Landroid/view/View$OnTouchListener;)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZX:Landroid/view/ViewGroup;

    new-instance v1, Lcom/kingroot/kinguser/axm$24;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$24;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->baa:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingroot/kinguser/axm$25;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$25;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wq;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "catch main page NPE"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method protected oI()V
    .locals 4

    .prologue
    .line 568
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 571
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 572
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 574
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kingroot/kinguser/ase;->gt(I)Lcom/kingroot/kinguser/asc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asd;->a(Lcom/kingroot/kinguser/asc;)V

    .line 575
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 251
    new-instance v0, Lcom/kingroot/kinguser/bet;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->mContext:Landroid/content/Context;

    const-wide/32 v2, 0x7f07007c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/kingroot/kinguser/bet;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/axm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aZH:Lcom/kingroot/kinguser/bet;

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZH:Lcom/kingroot/kinguser/bet;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1410
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/ym;->onActivityResult(IILandroid/content/Intent;)V

    .line 1411
    const/16 v0, 0x3fc

    if-ne p1, v0, :cond_0

    .line 1412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axm;->aZF:Z

    .line 1415
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 579
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onBackPressed()Z

    .line 580
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPanelState()Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelState(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    .line 585
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 583
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axm;->bY(J)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 230
    :try_start_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bX(Z)V

    .line 233
    new-instance v0, Lcom/kingroot/kinguser/xx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xx;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axm;->aYd:Lcom/kingroot/kinguser/xx;

    .line 234
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aYd:Lcom/kingroot/kinguser/xx;

    invoke-static {v0, v1}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 237
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187ed

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->start()V

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qc()V

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qb()V

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bfi;->ai(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "catch main page NPE"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->vd()V

    .line 557
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qa()V

    .line 558
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->onDestroy()V

    .line 560
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/xy;->b(Lcom/kingroot/kinguser/yg;)V

    .line 561
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aYd:Lcom/kingroot/kinguser/xx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/xx;->clean()V

    .line 563
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 564
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 691
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onNewIntent(Landroid/content/Intent;)V

    .line 695
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 696
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 1266
    const/16 v0, 0x6d

    .line 1268
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axm;->hz(I)V

    .line 1270
    return-void

    .line 1268
    :cond_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qa()V

    .line 591
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZR:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->onResume()V

    .line 592
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZG:Lcom/kingroot/kinguser/asd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asd;->NK()Lcom/kingroot/kinguser/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asc;->NJ()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZL:Lcom/kingroot/kinguser/aui$a;

    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbv;->WM()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aui$a;->gN(I)V

    .line 596
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/xy;->a(Lcom/kingroot/kinguser/yg;)V

    .line 597
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Ur()V

    .line 599
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 601
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 849
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStart()V

    .line 852
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axm$4;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/axm$4;-><init>(Lcom/kingroot/kinguser/axm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 867
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Ut()V

    .line 868
    invoke-direct {p0}, Lcom/kingroot/kinguser/axm;->Us()V

    .line 871
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-static {}, Lcom/kingroot/kinguser/akt;->Gj()Lcom/kingroot/kinguser/akt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akt;->Gk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZW:Landroid/widget/TextView;

    const v1, 0x7f07046d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 874
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZW:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0e0077

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->X(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 879
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZW:Landroid/widget/TextView;

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 877
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZW:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0e00f8

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axm;->X(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1419
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 1420
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axm;->aZF:Z

    .line 1423
    iget-object v0, p0, Lcom/kingroot/kinguser/axm;->aZV:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1425
    return-void
.end method
