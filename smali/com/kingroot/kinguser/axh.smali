.class public Lcom/kingroot/kinguser/axh;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aqa$a;
.implements Lcom/kingroot/kinguser/yg;


# instance fields
.field private aKm:I

.field private aSe:Lcom/kingroot/kinguser/bed;

.field private aYD:Lcom/kingroot/kinguser/bev;

.field private aYE:Lcom/kingroot/kinguser/aqa;

.field private final aYF:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;"
        }
    .end annotation
.end field

.field private aYG:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private aYd:Lcom/kingroot/kinguser/xx;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axh;->aYF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    .line 88
    new-instance v0, Lcom/kingroot/kinguser/axh$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axh$1;-><init>(Lcom/kingroot/kinguser/axh;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axh;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 95
    new-instance v0, Lcom/kingroot/kinguser/axh$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axh$2;-><init>(Lcom/kingroot/kinguser/axh;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axh;->aYG:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 184
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axh$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axh$3;-><init>(Lcom/kingroot/kinguser/axh;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axh;->aSe:Lcom/kingroot/kinguser/bed;

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187d5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 156
    return-void
.end method

.method private TZ()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    const/16 v1, 0x6d

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 137
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 138
    if-le v2, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/axh;->aYD:Lcom/kingroot/kinguser/bev;

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const v1, 0x7f0e0014

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bev;->hz(I)V

    goto :goto_0

    .line 138
    :cond_1
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axh;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axh;->hw(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axh;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axh;->a(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axh;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axh;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/axh;->TZ()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/bev;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYD:Lcom/kingroot/kinguser/bev;

    return-object v0
.end method

.method private hw(I)V
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 143
    iget v1, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    .line 144
    iget v1, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    if-le v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    .line 145
    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    goto :goto_0
.end method


# virtual methods
.method public Mx()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqa;->Mv()V

    .line 340
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 341
    return-void
.end method

.method public c(ILcom/kingroot/kinguser/aqc;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/aqc;)V
    .locals 7

    .prologue
    .line 346
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqh;

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 351
    instance-of v1, v0, Lcom/kingroot/kinguser/aqq;

    if-eqz v1, :cond_3

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Ej()V

    .line 355
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187d7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 376
    :cond_2
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/axh$5;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/axh$5;-><init>(Lcom/kingroot/kinguser/axh;Lcom/kingroot/kinguser/aqh;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 384
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqh;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_3
    instance-of v1, v0, Lcom/kingroot/kinguser/aqp;

    if-eqz v1, :cond_4

    .line 358
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187d9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 359
    :cond_4
    instance-of v1, v0, Lcom/kingroot/kinguser/aqn;

    if-eqz v1, :cond_5

    .line 360
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Ei()V

    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187db

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 364
    :cond_5
    instance-of v1, v0, Lcom/kingroot/kinguser/aqi;

    if-eqz v1, :cond_6

    .line 366
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18800

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 367
    :cond_6
    instance-of v1, v0, Lcom/kingroot/kinguser/aqk;

    if-eqz v1, :cond_7

    move-object v1, v0

    .line 369
    check-cast v1, Lcom/kingroot/kinguser/aqk;

    .line 370
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqk;->KM()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Optimi"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/apd;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_7
    instance-of v1, v0, Lcom/kingroot/kinguser/aqm;

    if-eqz v1, :cond_2

    .line 373
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18919

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method

.method public d(Lcom/kingroot/kinguser/aqc;)V
    .locals 7
    .param p1    # Lcom/kingroot/kinguser/aqc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 395
    const/4 v0, 0x3

    iget v1, p1, Lcom/kingroot/kinguser/aqc;->type:I

    if-eq v0, v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqh;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    check-cast v0, Lcom/kingroot/kinguser/aqh;

    .line 404
    instance-of v1, v0, Lcom/kingroot/kinguser/aqq;

    if-eqz v1, :cond_3

    .line 406
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18802

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 419
    :cond_2
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/axh$6;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/axh$6;-><init>(Lcom/kingroot/kinguser/axh;Lcom/kingroot/kinguser/aqh;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    iget-object v1, p1, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aqa;->il(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/kingroot/kinguser/aqe;->MD()Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aqa;->ik(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_3
    instance-of v1, v0, Lcom/kingroot/kinguser/aqp;

    if-eqz v1, :cond_4

    .line 409
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18804

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 410
    :cond_4
    instance-of v1, v0, Lcom/kingroot/kinguser/aqn;

    if-eqz v1, :cond_5

    .line 412
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18803

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 413
    :cond_5
    instance-of v1, v0, Lcom/kingroot/kinguser/aqi;

    if-eqz v1, :cond_2

    .line 415
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18801

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method

.method public gn(I)V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 292
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axh;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_2

    .line 295
    const-string v2, "opt.detail.score"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    .line 296
    const-string v2, "opt.detail.status"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 300
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/axh;->aKm:I

    if-eq v0, v4, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MB()I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axh;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030101

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 307
    const v0, 0x7f0f02bb

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 308
    new-instance v0, Lcom/kingroot/kinguser/aqa;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axh;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v5, Lcom/kingroot/kinguser/apz$b;->aKw:Lcom/kingroot/kinguser/apz$b;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/aqa;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;ZZLcom/kingroot/kinguser/apz$b;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/aqa;->a(Lcom/kingroot/kinguser/aqa$a;)V

    .line 311
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/axh$4;

    invoke-direct {v2, p0, v1}, Lcom/kingroot/kinguser/axh$4;-><init>(Lcom/kingroot/kinguser/axh;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-direct {p0}, Lcom/kingroot/kinguser/axh;->TZ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aqa;->ij(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aqa;->ik(Ljava/lang/String;)V

    .line 331
    return-object v7

    :cond_2
    move-object v6, v1

    goto :goto_0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Lcom/kingroot/kinguser/bev;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axh;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f0700f6

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axh;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bev;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axh;->aYD:Lcom/kingroot/kinguser/bev;

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYD:Lcom/kingroot/kinguser/bev;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v0, Lcom/kingroot/kinguser/xx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xx;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axh;->aYd:Lcom/kingroot/kinguser/xx;

    .line 114
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->aYd:Lcom/kingroot/kinguser/xx;

    invoke-static {v0, v1}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/xy;->b(Lcom/kingroot/kinguser/yg;)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYd:Lcom/kingroot/kinguser/xx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/xx;->clean()V

    .line 122
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/xy;->a(Lcom/kingroot/kinguser/yg;)V

    .line 128
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 129
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStart()V

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-direct {p0}, Lcom/kingroot/kinguser/axh;->TZ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aqa;->ij(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->aYG:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aqa;->a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqa;->Mw()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 181
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->aSe:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 182
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->aYG:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aqa;->b(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    .line 165
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqa;->Mw()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axh;->aYE:Lcom/kingroot/kinguser/aqa;

    .line 169
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqa;->Mw()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axh;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
