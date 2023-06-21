.class public Lcom/kingroot/kinguser/atn;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"


# instance fields
.field private aBd:Landroid/graphics/Bitmap;

.field private aGj:Ljava/lang/String;

.field private aOX:Ljava/lang/String;

.field private aOY:Landroid/widget/GridView;

.field private aOZ:Landroid/widget/TextView;

.field private aPa:Landroid/widget/TextView;

.field private aPb:Landroid/widget/TextView;

.field private aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field private aPd:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

.field private aPe:Landroid/view/View;

.field private aPf:Landroid/graphics/Bitmap;

.field private aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field private aPh:Lcom/kingroot/kinguser/atr;

.field private aPi:I

.field private aPj:I

.field private aPk:F

.field private aPl:F

.field private aPm:F

.field private aPn:F

.field private aPo:I

.field private aPp:I

.field private aPq:I

.field private aPr:I

.field private aPs:I

.field private aPt:I

.field private aPu:I

.field private aPv:I

.field private aPw:Landroid/view/View;

.field private final aPx:Lcom/kingroot/kinguser/bed;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mClose:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aOX:Ljava/lang/String;

    .line 117
    iput v2, p0, Lcom/kingroot/kinguser/atn;->aPi:I

    .line 118
    iput v2, p0, Lcom/kingroot/kinguser/atn;->aPj:I

    .line 119
    iput v1, p0, Lcom/kingroot/kinguser/atn;->aPk:F

    .line 120
    iput v1, p0, Lcom/kingroot/kinguser/atn;->aPl:F

    .line 303
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;-><init>(Lcom/kingroot/kinguser/atn;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 321
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;-><init>(Lcom/kingroot/kinguser/atn;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 553
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/atn$8;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/atn$8;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPx:Lcom/kingroot/kinguser/bed;

    .line 651
    new-instance v0, Lcom/kingroot/kinguser/and$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->akD:Lcom/kingroot/kinguser/and$a;

    .line 153
    return-void
.end method

.method private Pq()V
    .locals 4

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atn;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aOY:Landroid/widget/GridView;

    const/high16 v2, 0x40200000    # 2.5f

    iget-object v3, p0, Lcom/kingroot/kinguser/atn;->aBd:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/atr;->a(Landroid/content/Context;Landroid/widget/GridView;FLandroid/graphics/Bitmap;)Lcom/kingroot/kinguser/atr;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPh:Lcom/kingroot/kinguser/atr;

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPh:Lcom/kingroot/kinguser/atr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atr;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/atn;->gA(I)V

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aOY:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPh:Lcom/kingroot/kinguser/atr;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    return-void
.end method

.method private Pr()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x2

    .line 442
    new-array v0, v12, [I

    .line 443
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPd:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    const-string v1, "translationX"

    new-array v2, v12, [F

    iget v3, p0, Lcom/kingroot/kinguser/atn;->aPi:I

    int-to-float v3, v3

    aput v3, v2, v13

    aput v5, v2, v14

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v12, [F

    iget v4, p0, Lcom/kingroot/kinguser/atn;->aPj:I

    int-to-float v4, v4

    aput v4, v3, v13

    aput v5, v3, v14

    invoke-static {v1, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v8

    .line 452
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    const-string v2, "scaleX"

    new-array v3, v12, [F

    iget v4, p0, Lcom/kingroot/kinguser/atn;->aPk:F

    aput v4, v3, v13

    aput v6, v3, v14

    invoke-static {v1, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v9

    .line 453
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    const-string v2, "scaleY"

    new-array v3, v12, [F

    iget v4, p0, Lcom/kingroot/kinguser/atn;->aPl:F

    aput v4, v3, v13

    aput v6, v3, v14

    invoke-static {v1, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v10

    .line 455
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPe:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v12, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v11

    .line 457
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPd:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    iget v2, p0, Lcom/kingroot/kinguser/atn;->aPm:F

    float-to-int v2, v2

    iget v3, p0, Lcom/kingroot/kinguser/atn;->aPn:F

    float-to-int v3, v3

    iget v4, p0, Lcom/kingroot/kinguser/atn;->aPu:I

    iget v5, p0, Lcom/kingroot/kinguser/atn;->aPv:I

    const-wide/16 v6, 0x12c

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(IIIIJ)V

    .line 459
    new-instance v1, Lcom/android/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 460
    new-instance v2, Lcom/kingroot/kinguser/atn$6;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atn$6;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-virtual {v1, v2}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 503
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/animation/Animator;

    aput-object v0, v2, v13

    aput-object v8, v2, v14

    aput-object v9, v2, v12

    const/4 v0, 0x3

    aput-object v10, v2, v0

    const/4 v0, 0x4

    aput-object v11, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 508
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 509
    invoke-virtual {v1}, Lcom/android/animation/AnimatorSet;->start()V

    .line 510
    return-void

    .line 455
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private Ps()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 515
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPe:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->mContent:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v5, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    iget-object v4, p0, Lcom/kingroot/kinguser/atn;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 522
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 523
    new-instance v3, Lcom/kingroot/kinguser/atn$7;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/atn$7;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 547
    new-array v3, v5, [Lcom/android/animation/Animator;

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 548
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 549
    invoke-virtual {v2}, Lcom/android/animation/AnimatorSet;->start()V

    .line 550
    return-void

    .line 519
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private Pt()V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    .line 578
    const-string v0, "extra_game_modle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 579
    const-string v0, "extra_game_icon_top_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPo:I

    .line 580
    const-string v0, "extra_game_icon_left_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPp:I

    .line 581
    const-string v0, "extra_game_icon_width_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPq:I

    .line 582
    const-string v0, "extra_game_icon_height_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPr:I

    .line 584
    const-string v0, "extra_game_list_item_top_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPs:I

    .line 585
    const-string v0, "extra_game_list_item_left_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPt:I

    .line 586
    const-string v0, "extra_game_list_item_width_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPu:I

    .line 587
    const-string v0, "extra_game_list_item_height_i"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atn;->aPv:I

    .line 592
    :cond_0
    return-void
.end method

.method private Pu()V
    .locals 6

    .prologue
    .line 598
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atn$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atn$2;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 613
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    .line 617
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/atn;->gA(I)V

    .line 619
    new-instance v1, Lcom/kingroot/kinguser/atr;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atn;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atn;->aOY:Landroid/widget/GridView;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/kingroot/kinguser/atn;->aBd:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/atr;-><init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/atn;->aPh:Lcom/kingroot/kinguser/atr;

    .line 620
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aOY:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aPh:Lcom/kingroot/kinguser/atr;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 621
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPb:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->describe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->appStatus:I

    if-nez v1, :cond_0

    iget-wide v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 626
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atn;F)F
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/kingroot/kinguser/atn;->aPk:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atn;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/kingroot/kinguser/atn;->aPi:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atn;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kingroot/kinguser/atn;->Ps()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atn;F)F
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/kingroot/kinguser/atn;->aPl:F

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atn;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/kingroot/kinguser/atn;->aPj:I

    return p1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atn;F)F
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/kingroot/kinguser/atn;->aPm:F

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atn;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/atn;F)F
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/kingroot/kinguser/atn;->aPn:F

    return p1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/atn;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic f(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method private gA(I)V
    .locals 3

    .prologue
    .line 635
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    .line 636
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aOY:Landroid/widget/GridView;

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 637
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 638
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aOY:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPd:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/atn;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/atn;->aPp:I

    return v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/atn;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/atn;->aPq:I

    return v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/atn;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/atn;->aPo:I

    return v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/atn;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/atn;->aPr:I

    return v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/atn;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/atn;->aPt:I

    return v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/atn;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/atn;->aPs:I

    return v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kingroot/kinguser/atn;->Pr()V

    return-void
.end method

.method public static synthetic p(Lcom/kingroot/kinguser/atn;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    return-object v0
.end method

.method public static synthetic q(Lcom/kingroot/kinguser/atn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aOX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/atn;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPw:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPx:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/atn;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mClose:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/atn;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mContent:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->a(Landroid/os/Message;)V

    .line 431
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 433
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/atn;->Pu()V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 148
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/kingroot/kinguser/atn;->Pt()V

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "5010004"

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aGj:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02010d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPf:Landroid/graphics/Bitmap;

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aBd:Landroid/graphics/Bitmap;

    .line 167
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 168
    const v0, 0x7f0f02b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aOY:Landroid/widget/GridView;

    .line 171
    invoke-direct {p0}, Lcom/kingroot/kinguser/atn;->Pq()V

    .line 173
    const v0, 0x7f0f02ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0f02ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aOZ:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0f02ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPa:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0f02b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPb:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0f02af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 178
    const v0, 0x7f0f02ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPw:Landroid/view/View;

    .line 179
    const v0, 0x7f0f02a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPe:Landroid/view/View;

    .line 180
    const v0, 0x7f0f02aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aPd:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    .line 181
    const v0, 0x7f0f00ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->mContent:Landroid/view/View;

    .line 182
    const v0, 0x7f0f00cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->mClose:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mClose:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/atn$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atn$1;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aPf:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    new-instance v3, Lcom/kingroot/kinguser/atn$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/atn$3;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aOZ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPa:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0703e8

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aOX:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aOX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atn;->aOX:Ljava/lang/String;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aOX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v2, Lcom/kingroot/kinguser/atn$4;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atn$4;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/atn$5;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atn$5;-><init>(Lcom/kingroot/kinguser/atn;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 254
    return-object v1

    .line 163
    :cond_2
    const-string v0, "5010001"

    goto/16 :goto_0
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oI()V

    .line 272
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atn;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/kingroot/kinguser/acw;

    if-eqz v1, :cond_0

    .line 274
    check-cast v0, Lcom/kingroot/kinguser/acw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acw;->sg()Landroid/view/View;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPf:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aBd:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 287
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onDestroy()V

    .line 288
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/kingroot/kinguser/atn;->Ps()V

    .line 647
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 292
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/atn;->aPg:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->aPc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn;->aOX:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 300
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 301
    return-void
.end method
