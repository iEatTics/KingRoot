.class public Lcom/kingroot/kinguser/anp;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/all$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/anp$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aCM:Lcom/kingroot/kinguser/aug$a;

.field private aCN:Lcom/kingroot/common/uilib/WrapContentHeightViewPager;

.field private aCO:Landroid/widget/Button;

.field private aCP:Landroid/widget/Button;

.field private aCQ:Landroid/widget/Button;

.field private aCR:Landroid/widget/LinearLayout;

.field private aCS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;"
        }
    .end annotation
.end field

.field private aCT:Z

.field private aCU:Landroid/widget/TextView;

.field private aCV:Lcom/kingroot/kinguser/anp$a;

.field private aCW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private aCX:Landroid/widget/TextView;

.field private aCY:F

.field private ajh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppMarketWellChosenAppsPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/anp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    .line 67
    iput-boolean v1, p0, Lcom/kingroot/kinguser/anp;->aCT:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCW:Ljava/util/List;

    .line 71
    iput v1, p0, Lcom/kingroot/kinguser/anp;->ajh:I

    .line 79
    return-void
.end method

.method private Ju()V
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/kingroot/kinguser/anp;->Jv()V

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCM:Lcom/kingroot/kinguser/aug$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aug$a;->bk(Ljava/util/List;)V

    .line 262
    return-void
.end method

.method private Jv()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCM:Lcom/kingroot/kinguser/aug$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aug$a;->k(Landroid/app/Activity;)V

    .line 268
    return-void
.end method

.method private Jw()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    const v1, 0x7f070432

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 425
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCQ:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    const v1, 0x7f02023d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCX:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070442

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    const v1, 0x7f070433

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 432
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCQ:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anp;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anp;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anp;->bS(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anp;->aI(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anp;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/kingroot/kinguser/anp;->aCT:Z

    return p1
.end method

.method private aI(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/all$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCR:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 326
    invoke-static {}, Lcom/kingroot/kinguser/apu;->LN()J

    move-result-wide v4

    .line 328
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 329
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 330
    const/4 v1, 0x0

    .line 331
    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    .line 333
    :goto_0
    if-lez v3, :cond_5

    .line 334
    add-int/lit8 v1, v0, 0x9

    .line 336
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 338
    if-nez v2, :cond_4

    .line 339
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/all$c;

    .line 340
    iget-object v8, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v8, v8, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    long-to-float v8, v8

    iget v9, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    add-float/2addr v8, v9

    long-to-float v9, v4

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 341
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/kingroot/kinguser/all$c;->akL:Z

    .line 342
    iget-object v8, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    iget-object v9, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget v8, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    iget-object v0, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v10, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    long-to-float v0, v10

    add-float/2addr v0, v8

    iput v0, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    goto :goto_1

    .line 347
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_4

    .line 348
    const/16 v0, 0x9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 350
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 351
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 353
    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 354
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 357
    :cond_2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 358
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/all$c;

    .line 359
    iget-object v9, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v10, v9, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    long-to-float v9, v10

    iget v10, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    add-float/2addr v9, v10

    long-to-float v10, v4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 360
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/kingroot/kinguser/all$c;->akL:Z

    .line 361
    iget-object v9, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    iget-object v10, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget v9, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    iget-object v0, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v10, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    long-to-float v0, v10

    add-float/2addr v0, v9

    iput v0, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    goto :goto_3

    .line 370
    :cond_4
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 371
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a0040

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    .line 373
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v8, v2, v9}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 374
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 375
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v8, 0x7f0a003f

    invoke-virtual {v2, v8}, Lcom/kingroot/kinguser/zi;->getDimensionPixelOffset(I)I

    move-result v2

    .line 376
    const/4 v8, 0x3

    invoke-static {v2, v2, v8}, Lcom/kingroot/kinguser/xu;->e(III)Lcom/kingroot/kinguser/xu;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 379
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 380
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 383
    new-instance v2, Lcom/kingroot/kinguser/all;

    invoke-direct {v2, v7}, Lcom/kingroot/kinguser/all;-><init>(Ljava/util/List;)V

    .line 384
    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/all;->a(Lcom/kingroot/kinguser/all$b;)V

    .line 385
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 386
    iget-object v2, p0, Lcom/kingroot/kinguser/anp;->aCW:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v8, -0x2

    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 390
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    const/4 v8, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 392
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    const v0, 0x7f0202ca

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCR:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v3, v0

    move v2, v1

    move v3, v0

    move v0, v1

    .line 398
    goto/16 :goto_0

    .line 399
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/anp;->bS(I)V

    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCV:Lcom/kingroot/kinguser/anp$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anp$a;->notifyDataSetChanged()V

    .line 401
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anp;)Lcom/kingroot/kinguser/aug$a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCM:Lcom/kingroot/kinguser/aug$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anp;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anp;->fJ(I)V

    return-void
.end method

.method private bS(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCR:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 455
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 452
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/anp;->aCR:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/kingroot/kinguser/anp;->aCR:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 453
    goto :goto_1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/anp;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/anp;->Jv()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/anp;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/anp;->Ju()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/anp;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kingroot/kinguser/anp;->ajh:I

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/anp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCU:Landroid/widget/TextView;

    return-object v0
.end method

.method private fJ(I)V
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 257
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 248
    instance-of v1, v0, Lcom/kingroot/kinguser/all;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Lcom/kingroot/kinguser/all;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/all;->oX()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/all$c;

    .line 250
    if-eqz v0, :cond_2

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v0, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v2, v3, v4, v0}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/anp;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/anp;->Jw()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aug$a;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/kingroot/kinguser/anp;->aCM:Lcom/kingroot/kinguser/aug$a;

    .line 290
    return-void
.end method

.method public a(ZLcom/kingroot/kinguser/all$c;)V
    .locals 4

    .prologue
    .line 406
    if-eqz p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    iget-object v1, p2, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    iget-object v1, p2, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget v0, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    iget-object v1, p2, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    long-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    .line 419
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/anp;->Jw()V

    .line 420
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    iget-object v1, p2, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCS:Ljava/util/List;

    iget-object v1, p2, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 414
    iget v0, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    iget-object v1, p2, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    long-to-float v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/anp;->aCY:F

    goto :goto_0
.end method

.method public aH(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lcom/kingroot/kinguser/anp$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anp$5;-><init>(Lcom/kingroot/kinguser/anp;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method protected ah(Ljava/util/List;)V
    .locals 0
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
    .line 84
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    const v0, 0x7f0f0026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/WrapContentHeightViewPager;

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCN:Lcom/kingroot/common/uilib/WrapContentHeightViewPager;

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCN:Lcom/kingroot/common/uilib/WrapContentHeightViewPager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 106
    new-instance v0, Lcom/kingroot/kinguser/anp$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/anp;->aCW:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/anp$a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCV:Lcom/kingroot/kinguser/anp$a;

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCN:Lcom/kingroot/common/uilib/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/kingroot/kinguser/anp;->aCV:Lcom/kingroot/kinguser/anp$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 108
    const v0, 0x7f0f00e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0f00e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCU:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0f00e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCX:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0f00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCP:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0f00e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCQ:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0f00e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/anp;->aCR:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCN:Lcom/kingroot/common/uilib/WrapContentHeightViewPager;

    new-instance v2, Lcom/kingroot/kinguser/anp$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anp$1;-><init>(Lcom/kingroot/kinguser/anp;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/WrapContentHeightViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCQ:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/anp$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anp$2;-><init>(Lcom/kingroot/kinguser/anp;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCO:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/anp$3;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anp$3;-><init>(Lcom/kingroot/kinguser/anp;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCP:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/anp$4;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anp$4;-><init>(Lcom/kingroot/kinguser/anp;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oI()V

    .line 284
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 278
    new-instance v0, Lcom/kingroot/kinguser/yt;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/yt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onBackPressed()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/kingroot/kinguser/anp;->aCT:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/kingroot/kinguser/anp;->Jv()V

    .line 441
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 90
    iput-boolean v2, p0, Lcom/kingroot/kinguser/anp;->aCT:Z

    .line 91
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 94
    const-string v1, "bundle_key_show_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/anp;->ajh:I

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCM:Lcom/kingroot/kinguser/aug$a;

    iget v1, p0, Lcom/kingroot/kinguser/anp;->ajh:I

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aug$a;->gK(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anp;->aCM:Lcom/kingroot/kinguser/aug$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aug$a;->PU()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 274
    return-void
.end method
