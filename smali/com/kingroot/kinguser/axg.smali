.class public Lcom/kingroot/kinguser/axg;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auh$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/axg$a;
    }
.end annotation


# instance fields
.field private aSl:I

.field private aSm:I

.field private final aYj:Landroid/os/CountDownTimer;

.field private aYk:I

.field private aYl:Z

.field private aYm:Lcom/kingroot/kinguser/auh$a;

.field private aYn:Landroid/view/ViewGroup;

.field private aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

.field private final aYp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingcore/uilib/PercentageIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private aYq:Landroid/view/View$OnLongClickListener;

.field private final aYr:Lcom/kingroot/kinguser/axg$a;

.field private final aYs:Landroid/view/View$OnClickListener;

.field private final aYt:Landroid/view/View$OnClickListener;

.field private final aYu:Landroid/view/View$OnClickListener;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x2710

    .line 126
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    .line 98
    new-instance v0, Lcom/kingroot/kinguser/axg$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/axg$1;-><init>(Lcom/kingroot/kinguser/axg;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYj:Landroid/os/CountDownTimer;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axg;->aYl:Z

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYp:Ljava/util/Map;

    .line 413
    new-instance v0, Lcom/kingroot/kinguser/axg$16;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axg$16;-><init>(Lcom/kingroot/kinguser/axg;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYq:Landroid/view/View$OnLongClickListener;

    .line 667
    new-instance v0, Lcom/kingroot/kinguser/axg$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axg$4;-><init>(Lcom/kingroot/kinguser/axg;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYr:Lcom/kingroot/kinguser/axg$a;

    .line 691
    new-instance v0, Lcom/kingroot/kinguser/axg$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axg$5;-><init>(Lcom/kingroot/kinguser/axg;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYs:Landroid/view/View$OnClickListener;

    .line 704
    new-instance v0, Lcom/kingroot/kinguser/axg$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axg$6;-><init>(Lcom/kingroot/kinguser/axg;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYt:Landroid/view/View$OnClickListener;

    .line 717
    new-instance v0, Lcom/kingroot/kinguser/axg$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axg$7;-><init>(Lcom/kingroot/kinguser/axg;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYu:Landroid/view/View$OnClickListener;

    .line 127
    return-void
.end method

.method private A(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    const v0, 0x7f0f0242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 339
    new-instance v1, Lcom/kingroot/kinguser/axg$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axg$13;-><init>(Lcom/kingroot/kinguser/axg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axg;->cO(Z)V

    .line 347
    return-void
.end method

.method private TT()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 610
    :cond_0
    return-void
.end method

.method private TU()V
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/axg;->aSm:I

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axg;->aYl:Z

    .line 601
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->yJ()V

    .line 602
    return-void
.end method

.method private TV()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axg;->aYl:Z

    return v0
.end method

.method private TW()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 461
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-static {}, Lcom/kingroot/kinguser/bar;->VK()V

    .line 479
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yl()Ljava/lang/String;

    move-result-object v1

    .line 466
    const/4 v0, 0x0

    .line 468
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 472
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 473
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "pm enable %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 477
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yh()V

    goto :goto_0

    .line 469
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private TX()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 613
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axg;->hv(I)V

    .line 615
    iput v0, p0, Lcom/kingroot/kinguser/axg;->aSm:I

    .line 617
    iput-boolean v5, p0, Lcom/kingroot/kinguser/axg;->aYl:Z

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    .line 622
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 624
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/axg$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axg$3;-><init>(Lcom/kingroot/kinguser/axg;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 636
    return-void
.end method

.method private TY()V
    .locals 2

    .prologue
    .line 640
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/axg;->aSm:I

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axg;->aYl:Z

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    .line 647
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/os/Handler;)V

    .line 648
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->ll()V

    .line 650
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 651
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axg;)Lcom/kingroot/kinguser/auh$a;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYm:Lcom/kingroot/kinguser/auh$a;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axg;Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/axg;->c(Landroid/view/View;II)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 249
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 251
    const-string v4, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v4

    .line 252
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 253
    invoke-virtual {v4}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 255
    mul-int/lit8 v4, v1, 0x64

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/axg;->m(Landroid/view/View;I)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/kingroot/kinguser/axg;->TW()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axg;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYp:Ljava/util/Map;

    return-object v0
.end method

.method private c(Landroid/view/View;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 275
    const-string v0, "translationX"

    new-array v1, v3, [F

    neg-int v2, p3

    int-to-float v2, v2

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 277
    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 280
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 281
    new-array v3, v3, [Lcom/android/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 282
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 283
    int-to-long v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/animation/AnimatorSet;->setStartDelay(J)V

    .line 284
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 285
    new-instance v0, Lcom/kingroot/kinguser/axg$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axg$10;-><init>(Lcom/kingroot/kinguser/axg;)V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 291
    invoke-virtual {v2}, Lcom/android/animation/AnimatorSet;->start()V

    .line 292
    return-void

    .line 277
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axg;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYn:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axg;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYq:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private static f(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 452
    const/high16 v0, 0x43340000    # 180.0f

    sub-float v0, p1, v0

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, p1, v2, v3}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 453
    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/kingroot/kinguser/axg;->TX()V

    return-void
.end method

.method static synthetic g(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/axg;->f(Landroid/view/View;F)V

    return-void
.end method

.method private m(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axg$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/axg$9;-><init>(Lcom/kingroot/kinguser/axg;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 271
    return-void
.end method

.method private z(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 296
    const v0, 0x7f0f016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axg$11;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axg$11;-><init>(Lcom/kingroot/kinguser/axg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v0, 0x7f0f017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/PercentageIndicator;

    .line 304
    const-string v1, "ROM"

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/PercentageIndicator;->setTextStyle(Ljava/lang/String;)V

    .line 306
    const v1, 0x7f0f017b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/PercentageIndicator;

    .line 307
    const-string v2, "RAM"

    invoke-virtual {v1, v2}, Lcom/kingcore/uilib/PercentageIndicator;->setTextStyle(Ljava/lang/String;)V

    .line 309
    const v2, 0x7f0f017c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/PercentageIndicator;

    .line 310
    const-string v3, "CPU"

    invoke-virtual {v2, v3}, Lcom/kingcore/uilib/PercentageIndicator;->setTextStyle(Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/kingroot/kinguser/axg;->aYp:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYp:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYp:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const v0, 0x7f0f017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x188c3

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 323
    new-instance v1, Lcom/kingroot/kinguser/axg$12;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axg$12;-><init>(Lcom/kingroot/kinguser/axg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    const v0, 0x7f0f00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public Q(II)V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axg$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/axg$14;-><init>(Lcom/kingroot/kinguser/axg;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const-wide/16 v8, 0x9c4

    const-wide/16 v6, 0x0

    const/16 v5, 0x27d9

    const/4 v1, 0x1

    .line 151
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 154
    invoke-direct {p0}, Lcom/kingroot/kinguser/axg;->TV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 163
    invoke-direct {p0}, Lcom/kingroot/kinguser/axg;->TT()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 168
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 170
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/kingroot/kinguser/aix;->dI(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 173
    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    .line 176
    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    add-long/2addr v4, v8

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 182
    :cond_2
    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 183
    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_3

    .line 186
    iget-wide v4, p0, Lcom/kingroot/kinguser/axg;->mStartTime:J

    add-long/2addr v4, v10

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 194
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/axg;->aSl:I

    .line 196
    iget v0, p0, Lcom/kingroot/kinguser/axg;->aSl:I

    invoke-static {v0}, Lcom/kingroot/kinguser/aix;->dH(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/axg;->aYk:I

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbv;->dC(Z)V

    .line 200
    iget v0, p0, Lcom/kingroot/kinguser/axg;->aSl:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axg;->hu(I)V

    .line 202
    invoke-direct {p0}, Lcom/kingroot/kinguser/axg;->TU()V

    goto :goto_0

    .line 203
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbv;->dC(Z)V

    .line 209
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axg;->hu(I)V

    .line 211
    invoke-direct {p0}, Lcom/kingroot/kinguser/axg;->TU()V

    goto/16 :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/auh$a;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/kingroot/kinguser/axg;->aYm:Lcom/kingroot/kinguser/auh$a;

    .line 458
    return-void
.end method

.method public bY(J)V
    .locals 3

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axg$8;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axg$8;-><init>(Lcom/kingroot/kinguser/axg;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    return-void
.end method

.method public cO(Z)V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axg$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axg$2;-><init>(Lcom/kingroot/kinguser/axg;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    return-void
.end method

.method public hu(I)V
    .locals 12

    .prologue
    const v4, 0x188bf

    const v3, 0x188bd

    const v11, 0x188be

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 487
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->dD(Z)V

    .line 491
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 493
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->dD(Z)V

    .line 498
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 500
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    iget-object v3, p0, Lcom/kingroot/kinguser/axg;->aYs:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->h(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 507
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    goto :goto_0

    .line 511
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->XD()V

    .line 513
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 516
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYr:Lcom/kingroot/kinguser/axg$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axg$a;->dv(Z)V

    .line 517
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    iget-object v3, p0, Lcom/kingroot/kinguser/axg;->aYr:Lcom/kingroot/kinguser/axg$a;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->i(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 521
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    move v4, v2

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    goto :goto_0

    .line 525
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYr:Lcom/kingroot/kinguser/axg$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/axg$a;->dv(Z)V

    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    iget-object v3, p0, Lcom/kingroot/kinguser/axg;->aYr:Lcom/kingroot/kinguser/axg$a;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->j(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 530
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    move v4, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    goto/16 :goto_0

    .line 534
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->Xv()V

    .line 536
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 538
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    goto/16 :goto_0

    .line 542
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->cS(Z)V

    .line 544
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto/16 :goto_0

    .line 548
    :pswitch_8
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AI()Z

    move-result v0

    .line 549
    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->cS(Z)V

    .line 558
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto/16 :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->XE()V

    .line 554
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v2

    move v9, v1

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    goto :goto_1

    .line 561
    :pswitch_9
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    iget-object v1, p0, Lcom/kingroot/kinguser/axg;->aYu:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->k(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public hv(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 574
    packed-switch p1, :pswitch_data_0

    .line 589
    :goto_0
    :pswitch_0
    return-void

    .line 576
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->XF()V

    goto :goto_0

    .line 579
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    iget-object v2, p0, Lcom/kingroot/kinguser/axg;->aYt:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->l(Landroid/view/View$OnClickListener;)V

    .line 581
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v2, 0x3

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 584
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188be

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public k(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bgl$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axg$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/axg$15;-><init>(Lcom/kingroot/kinguser/axg;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 230
    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYn:Landroid/view/ViewGroup;

    .line 232
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    .line 233
    iget v0, p0, Lcom/kingroot/kinguser/axg;->aSm:I

    if-nez v0, :cond_0

    .line 234
    iget v0, p0, Lcom/kingroot/kinguser/axg;->aSl:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axg;->hu(I)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYn:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axg;->z(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYn:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axg;->A(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYn:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axg;->b(Landroid/view/ViewGroup;)V

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYn:Landroid/view/ViewGroup;

    return-object v0

    .line 236
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/axg;->aSm:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axg;->hv(I)V

    goto :goto_0
.end method

.method protected oI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 351
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 352
    iget-object v1, p0, Lcom/kingroot/kinguser/axg;->aYo:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->getWholeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 353
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;I)V

    .line 355
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 356
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;I)V

    .line 358
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 359
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;I)V

    .line 360
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 364
    new-instance v0, Lcom/kingroot/kinguser/acv;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "KingRoot Labs"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/acv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/acv;->cj(I)V

    .line 366
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/acv;->at(Z)V

    .line 367
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18857

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axg;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/axg;->aSl:I

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbv;->WM()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/axg;->aYk:I

    .line 138
    if-eqz v0, :cond_0

    .line 139
    const-string v1, "root_process_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/axg;->aSm:I

    .line 144
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/kingroot/kinguser/axg;->TY()V

    .line 147
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYm:Lcom/kingroot/kinguser/auh$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auh$a;->destroy()V

    .line 225
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/axg;->aYm:Lcom/kingroot/kinguser/auh$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auh$a;->start()V

    .line 219
    return-void
.end method
